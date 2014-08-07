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

	function add_member($member_data)
	{
		$current_time   = date("Y-m-d H:i:s",time());
		
		$data = array(
						'username'    => $member_data['username'],
						'realname'    => $member_data['realname'],
						'email'       => $member_data['email'],
						'phone'       => $member_data['phone'],
						'passwd'      => md5($member_data['passwd']),
						'permission'  => $member_data['permission'],
						'mdate'		  => $current_time,
						'udate'       => $current_time,
					);

		$resl = $this->db->insert('member',$data);
		return $current_time;
	}

	function get_member_info($member)
	{
		$member_data = $this->db->select('username,realname,email,phone')
								->where('username',$member)->get('member')->first_row('array');
		return $member_data;
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