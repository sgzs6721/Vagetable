<?php

//header("Content-Type: text/html;charset=utf-8");

class Test extends MY_Controller{
	public function index()
	{
		$data_array = array('name' => 'lei.wang', );
		$this->cismarty->view('home.tpl',$data_array);
	}

	public function image()
	{
		$this->cismarty->view('image.tpl');
	}

	public function count()
	{
		var_dump(scandir('images/other'));
	}
}