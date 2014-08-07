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
		
	}
}