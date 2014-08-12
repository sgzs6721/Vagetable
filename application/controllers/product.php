<?php

header("Content-Type: text/html;charset=utf-8");

class Product extends MY_Controller{

	public function __construct()
	{
		parent::__construct();		
    }  

	public function index()
	{
		$this->load->view('home');
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
}