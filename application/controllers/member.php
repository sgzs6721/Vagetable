<?php
header("Content-Type: text/html;charset=utf-8");

class Member extends MY_Controller{

	public function __construct()
	{
		parent::__construct();
    }  

	public function index()
	{
		$this->cismarty->view('login.tpl');
	}

	public function check()
	{
		$this->load->model('members');

		#TODO Use Ajax dynamic verify name and passwd
		if ($this->members->verify_member($this->input->post()))
		{
			$this->session->set_userdata('memberName',$this->input->post('name'));
			$this->load->view('home');
		}
		else
		{
			$this->cismarty->view('login.tpl');
		}
	}

	public function add()
	{

	}

}