<?php
header("Content-Type: text/html;charset=utf-8");

class Login extends MY_Controller{
	public function __construct()
	{
		parent::__construct();
    } 

    public function index()
	{
		
		if( $this->check_user_login() )
		{
			$this->load->view('home', array('member_name' => $this->session->userdata['userName'] ));
		}
		else
		{
			$this->cismarty->view('pages/userHome.tpl');
		}
	}
    

    public function userLogin()
	{
		
			$this->cismarty->view('pages/user_login.tpl');
	}

	public function logout()
	{
		$this->session->sess_destroy();
		// session_unset();
		$this->cismarty->view('pages/user_login.tpl');
	}
    

	public function login_check()
	{
		
		$this->load->model('users');

		#TODO Use Ajax dynamic verify name and passwd
		if ($this->users->verify_user($this->input->post()))
		{
			$this->session->set_userdata('userName',$this->input->post('username'));
			$login_info = array('user_name' => $this->session->userdata['userName'] );
			$this->cismarty->view('home.tpl');
		}
		else
		{
			$this->cismarty->view('pages/user_login.tpl');
		}
	}

	public function ajaxValidateFieldUser($user)
	{
		$this->load->model('users');

		if ($this->users->check_user_exist($user))
		{
			$data_array = array('data' => 'true');
			
		}
		else{
			$data_array = array('data' => 'false');
		}
		echo Json_encode($data_array);
	}

    public function ajaxValidateFieldUserTest()
	{
		$this->load->model('users');

		$data_array = array($_GET['fieldId'],$this->users->check_user_exist($_GET['fieldValue']));
		echo Json_encode($data_array);
	}
	public function register($info)
	{
			$this->load->model('users');
			//$this->load->library('form_validation');
				if($info==1)
				{
					$this->users->add_user($this->input->post());
					$inspect_info = $this->input->post();
					$this->cismarty->view('pages/user_inspect.tpl',$inspect_info);
					

				}
				else
				{
					
					$this->cismarty->view('pages/user_add.tpl');
				}
			
	}
		


}