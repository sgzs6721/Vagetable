<?php

//header("Content-Type: text/html;charset=utf-8");

class Test extends MY_Controller{
	public function test1()
	{
		$data_array = array('name' => 'lei.wang', );
		$this->cismarty->view('home.tpl',$data_array);
	}

	public function image()
	{
		$this->cismarty->view('image.tpl');
	}

	public function upload()
	{
		$this->cismarty->view('upload.tpl');
	}

	public function index()
	{
		require('UploadHandler.php');
		$upload_handler = new UploadHandler();
	}
}