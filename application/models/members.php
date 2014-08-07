<?php

class Members extends CI_Model {

	var $admins = array();

	function __construct() {
		parent::__construct();
		$this->admins = $this->get_admins();
	}
	
	/*  check the account's passwd is right
	*	input: name, passwd
	*	output: true if correct otherwise false
	*/
	function verify_member($login_array)
	{
		$query_data = $this->db->where('username', $login_array['username'])
					  ->where('passwd', md5($login_array['passwd']))->limit(1)->get('member');

		if($query_data->num_rows > 0) return true;

		return false;
	}

	function get_admins()
	{
		$query_data = $this->db->select('username')->where('permission','0')->get('member');
        $names = array();
        foreach ($query_data->result_array() as $row)
            $names[] = $row['username'];
        return $names;
	}

	function is_admin($username)
	{
		if (in_array($username,$this->admins))
            return true;
        else
            return false;
	}
}