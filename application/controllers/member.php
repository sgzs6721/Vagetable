<?php

class Member extends MY_Controller{

	public function __construct()
	{
		parent::__construct();
    }  

	public function index()
	{
		$this->cismarty->view('login.tpl');
	}

	public function login()
	{
		$this->load->database();
		$this->load->model('model_member');
		if ($this->model_member->verify_member($this->input->post()))
		{
			$this->session->set_userdata('memberName',$this->input->post('memberName'));
			echo $this->session->userdata('memberName');
			$this->load->view('home');
		}
		else
		{
			$this->load->view('login');
		}
	}

	public function add()
	{

	}

}