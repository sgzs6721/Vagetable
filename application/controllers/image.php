<?php
header("Content-Type: text/html;charset=utf-8");

class Image extends MY_Controller{

	public function __construct()
	{
		parent::__construct();
    }  

	public function upload()
	{
		require('UploadHandler.php');
		$upload_handler = new UploadHandler();
	}

	public function index()
	{
		$this->cismarty->view('pages/picture_upload.tpl');
	}

}