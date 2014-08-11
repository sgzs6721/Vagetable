<?php
header("Content-Type: text/html;charset=utf-8");

class Member extends MY_Controller{

	public function __construct()
	{
		parent::__construct();
    }  

	public function index()
	{
		/* set cookie for the last page, later to research this part

		$request_url = $_SERVER['PATH_INFO'];

		if($request_url != 'member' && $request_url != 'member/index' && $request_url != 'member/logout' && $request_url != 'member/login_check')
		{
			$this->input->set_cookie('lasturl', $request_url, 60);
		}

		*/
		if( $this->check_login() )
		{
			$this->load->view('home', array('member_name' => $this->session->userdata['memberName'] ));
		}
		else
		{
			$this->cismarty->view('pages/member_login.tpl');
		}
	}

	public function logout()
	{
		$this->session->sess_destroy();
		// session_unset();
		$this->cismarty->view('pages/member_login.tpl');
	}

	public function login_check()
	{
		
		$this->load->model('members');

		#TODO Use Ajax dynamic verify name and passwd
		if ($this->members->verify_member($this->input->post()))
		{
			$this->session->set_userdata('memberName',$this->input->post('username'));
			$login_info = array('member_name' => $this->session->userdata['memberName'] );
			$this->load->view('home',$login_info);
		}
		else
		{
			$this->cismarty->view('pages/member_login.tpl');
		}
	}

	public function ajaxValidateFieldUser()
	{
		$this->load->model('members');

		$data_array = array($_GET['fieldId'],$this->members->check_member_exist($_GET['fieldValue']));
		echo Json_encode($data_array);
	}

	public function add()
	{
		if( $this->check_login() )
		{
			$this->load->model('members');
			if($this->members->is_admin($this->session->userdata['memberName']))
			{
				$this->load->library('form_validation');

				if(! $this->form_validation->run())
				{
					echo validation_errors();
					$this->cismarty->view('pages/member_add.tpl');

				}
				else
				{
					$this->members->add_member($this->input->post());
					$inspect_info = $this->input->post();
					$inspect_info['is_admin'] = 1;
					$this->cismarty->view('pages/member_inspect.tpl',$inspect_info);
				}
			}
			else
			{
				$this->load->view('warning');
			}
		}
		else
		{
			$this->cismarty->view('pages/member_login.tpl');
		}
	}

	public function show_update($member)
	{
		if( $this->check_login() )
		{
			$this->load->model('members');
			if( $this->members->is_admin( $this->session->userdata['memberName'] )
				|| $member == $this->session->userdata['memberName'] )
			{
				$member_info = $this->members->get_member_info($member);
				$this->cismarty->view('pages/member_update.tpl',$member_info);
			}
			else
			{
				$this->load->view('warning');
			}
		}
		else
		{
			$this->cismarty->view('pages/member_login.tpl');
		}
	}

	public function update_info($member)
	{
		if( $this->check_login() )
		{
			$this->load->model('members');
			if( $this->members->is_admin( $this->session->userdata['memberName'] )
				|| $member == $this->session->userdata['memberName'] )
			{
				$this->members->update_member_info($member,$this->input->post());
			}
			else
			{
				$this->load->view('warning');
			}
		}
		else
		{
			$this->cismarty->view('pages/member_login.tpl');
		}
		
	}

	public function update_pass($member)
	{
		if( $this->check_login() )
		{
			$this->load->model('members');
			$this->members->update_member_pass($member,$this->input->post());
		}
		else
		{
			$this->cismarty->view('pages/member_login.tpl');
		}
	}

	public function inspect_member($member)
	{
		if($this->check_login())
		{
			$this->load->model('members');
			$member_info = $this->members->get_member_info($member);
			$member_info['is_admin'] = 0;
			if($this->members->is_admin($this->session->userdata['memberName'])) $member_info['is_admin'] = 1;
			$this->cismarty->view('pages/member_inspect.tpl', $member_info);
		}
		else
		{
			$this->cismarty->view('pages/member_login.tpl');
		}
	}

	public function confirm_delete($member)
	{
		$this->load->model('members');
		if($this->members->is_admin($this->session->userdata['memberName']))
		{
			$member_info = $this->members->get_member_info($member);
			if(count($member_info) > 0)
			{
				$this->cismarty->view('pages/member_delete.tpl', $member_info);
			}
			else
			{
				echo 'member '.$member.' does not exist';
			}
		}
		else
		{
			$this->load->view('warning');
		}
	}

	public function delete_member($member)
	{
		if($this->check_login())
		{
			$this->load->model('members');
			if($this->members->is_admin($this->session->userdata['memberName']))
			{
				$this->members->delete_member($member);
				#TODO confirm whether the member is deleted
				redirect('member/list_members');
				// $this->list_members();
			}
			else
			{
				$this->load->view('warning');
			}
		}
		else
		{
			$this->cismarty->view('pages/member_login.tpl');
		}
	}

	public function list_members()
	{
		if($this->check_login())
		{
			$this->load->library('pagination');
			$this->load->model('members');

			$config['base_url']    = site_url('member/list_members');
			$config['total_rows']  = $this->members->get_member_number();
			$config['per_page']    = 10;
			$config['first_link']  = '第一页';
			$config['last_link']   = '最后一页';
			$config['uri_segment'] = 3;
			$config['use_page_numbers']     = TRUE;

			// $config['page_query_string']    = TRUE;
			// $config['query_string_segment'] = "page";
			// $page = 1;
			// if (isset($_GET['page'])) $page = ($_GET['page'] == "")?1:$_GET['page'];
			// $offset = ($page - 1 ) * $config['per_page'];

        	$offset = intval($this->uri->segment(3));
        	$all_members = $this->members->get_all_members($offset,$config['per_page']);
        	$this->pagination->initialize($config);
			$member_data['member_list'] = $all_members;
			$member_data['link'] = $this->pagination->create_links();
			$member_data['is_admin'] = 0;
			if($this->members->is_admin($this->session->userdata['memberName'])) $member_data['is_admin'] = 1;

			$this->cismarty->view('pages/member_list.tpl', $member_data);
		}
		else
		{
			// $this->cismarty->view('pages/member_login.tpl');
			$this->index();
		}
	}

}