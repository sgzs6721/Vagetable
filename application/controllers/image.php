<?php
header("Content-Type: text/html;charset=utf-8");

class Image extends MY_Controller{

	public function __construct()
	{
		parent::__construct();
    }  

	public function upload($path = 'other')
	{
		require('UploadHandler.php');
		$upload_handler = new UploadHandler($path);
	}

	public function index()
	{
		$this->input->post('category');
		$this->cismarty->view('pages/picture_upload.tpl', array('category' => $this->input->post('category')));
	}

	public function select_category()
	{
		if( $this->check_login() )
		{
			$this->load->model('members');
			if($this->members->is_admin($this->session->userdata['memberName']))
			{
				$this->load->model('products');
				$this->cismarty->view('pages/select_category.tpl', array('categorylist' => $this->products->get_category() ) );
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