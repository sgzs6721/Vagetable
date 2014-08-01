<?php

class Test extends MY_Controller{
	public function index()
	{
		$data_array = array('name' => 'lei.wang', );
		$this->cismarty->view('test.tpl',$data_array);
	}
}