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
		if( $this->checkLogin() )
		{
			$this->load->model('user');
			if($this->user->isAdmin($this->session->userdata['userName']))
			{
				$this->load->library('form_validation');
				$this->form_validation->set_rules('goodcode', 'Username', 'numeric');
				if(! $this->form_validation->run())
				{
					$this->db->trans_start();
					$userClient = $this->user->get_client($this->session->userdata['userName']);
					$this->tabledata['subclientlist'] = $this->user->get_subclient($userClient);
					$this->db->trans_complete();

					if($this->db->trans_status() === FALSE)
						redirect('users/add');
					else
						$this->cismarty->view($this->tabledata,'pages/add_user.tpl');
				}
				else
				{
					$this->user->add_new($this->input->post());
					$this->load->view('user_inspect',$this->input->post());
				}
			}
			else
			{
				$this->load->view('warning');
			}
		}
		else
		{
			redirect('login');
		}
	}
}