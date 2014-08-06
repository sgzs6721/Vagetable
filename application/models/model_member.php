<?php

class Model_member extends CI_Model {

	var $admins = array();

	function __construct() {
		parent::__construct();
		$this->admins = $this->getAdmins();
	}
	
	/*  check the account's passwd is right
	*	input: name, passwd
	*	output: true if correct otherwise false
	*/
	function verify_member($login_array)
	{  
		$q = $this->db->where('username', $login_array['memberName'])
					  ->where('passwd', md5($login_array['passwd']))->limit(1)->get('member');

		if($q->num_rows > 0) return true;

		return false;
	}
}