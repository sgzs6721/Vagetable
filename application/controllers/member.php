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
			$this->load->view('home');
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

	public function update()
	{
		if( $this->check_login() )
		{
			$this->load->model('members');
			$member_info = $this->members->get_member_info($this->session->userdata['memberName']);
			$this->cismarty->view('member_update.tpl',$member_info);
		}
		else
		{
			$this->cismarty->view('pages/member_login.tpl');
		}
	}

}