<?php
header("Content-Type: text/html;charset=utf-8");

class Member extends MY_Controller{

	public function __construct()
	{
		parent::__construct();
    }  

	public function index()
	{
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

	public function add()
	{
		if( $this->check_login() )
		{
			$this->load->model('members');
			if($this->members->is_admin($this->session->userdata['memberName']))
			{
				$this->load->library('form_validation');

				#TODO Add the rules of validation for member login, this is for server site validation
				$this->form_validation->set_rules('username', 'username', 'numeric');

				if(! $this->form_validation->run())
				{
					$this->cismarty->view('pages/member_add.tpl');
				}
				else
				{
					$this->members->add_member($this->input->post());
					$this->cismarty->view('pages/member_inspect.tpl',$this->input->post());
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
			$member_info = $this->members->get_member_info($member);
			$this->cismarty->view('pages/member_update.tpl',$member_info);
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
			$this->members->update_member_info($member,$this->input->post());
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

	public function list_members()
	{
		if($this->check_login())
		{
			$this->load->library('pagination');
			$this->load->model('members');

			$config['base_url']    = site_url('member/list_members');
			$config['total_rows']  = $this->members->get_member_number();
			$config['per_page']    = 2;
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

			// var_dump($member_data);
			$this->cismarty->view('pages/member_list.tpl', $member_data);
		}
		else
		{
			$this->cismarty->view('pages/member_login.tpl');
		}
	}

}