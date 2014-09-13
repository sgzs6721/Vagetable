<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class MY_Controller extends CI_Controller {

	function __construct() {

		parent::__construct();
		$this->load->database();
		$this->load->library('session');
		$this->load->library('pagination');
		$this->cismarty->assign('baseUrl','/'.basename(FCPATH));
	}

	public function check_login() {

		if (isset($this->session->userdata['memberName']))
			return $this->session->userdata['memberName'];
		else
			return false;
	}

	public function check_user_login() {

		if (isset($this->session->userdata['userName']))
			return $this->session->userdata['userName'];
		else
			return false;
	}
}
