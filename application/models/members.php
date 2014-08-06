<?php

class Members extends CI_Model {

	var $admins = array();

	function __construct() {
		parent::__construct();
	}
	
	/*  check the account's passwd is right
	*	input: name, passwd
	*	output: true if correct otherwise false
	*/
	function verify_member($login_array)
	{
		$q = $this->db->where('name', $login_array['name'])
					  ->where('passwd', md5($login_array['passwd']))->limit(1)->get('member');

		if($q->num_rows > 0) return true;

		return false;
	}
}