<?php

class Test extends MY_Controller{
	public function index()
	{
		$data_array = array('name' => 'lei.wang', );
		$this->cismarty->view('home.tpl',$data_array);
	}
}