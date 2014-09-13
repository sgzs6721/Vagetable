<?php

class Users extends CI_Model {

	public function __construct()
	{
		parent::__construct();
    }  
	
	function verify_user($login_array)
	{
		$query_data = $this->db->where('name', $login_array['username'])
					  ->where('password', $login_array['passwd'])->limit(1)->get('user');

		if($query_data->num_rows > 0) 
			return true;

		return false;
	}

	function check_user_exist($user)
	{
		$query_data = $this->db->where('name', $user)->limit(1)->get('user');

		if($query_data->num_rows > 0) 
			return true;

		return false;
	}

	function add_user($user_data)
	{
		$current_time = date("Y-m-d H:i:s",time());
		
		$data = array(
						'name'    => $user_data['username'],
						'password'      => $user_data['passwd'],
						'rdata'		  => $current_time,
					);

		$resl = $this->db->insert('user',$data);
		return $current_time;
	}

	function update_member_info($member_name, $member_info)
	{
		$current_time = date("Y-m-d H:i:s",time());
		$update_data  = array(
								'username'    => $member_info['username'],
								'realname'    => $member_info['realname'],
								'email'       => $member_info['email'],
								'phone'       => $member_info['phone'],
								'udate'       => $current_time,
							 );

		$this->db->where('username', $member_name);
		$this->db->update('member',$update_data);
	}

	function update_member_pass($member_name, $member_pass)
	{
		$current_time = date("Y-m-d H:i:s",time());
		$update_data  = array(
								'passwd' => md5($member_pass['passwd']),
							 );

		$this->db->where('username', $member_name);
		$this->db->update('member',$update_data);
	}

	function get_member_info($member)
	{
		$member_data = $this->db->select('username,realname,email,phone,permission')
								->where('username',$member)->get('member')->first_row('array');
		return $member_data;
	}

	function get_all_members($offset, $number)
	{
		$member_data = $this->db->select('id,username,realname,email,phone,permission,mdate,udate')
                            ->limit($number, $offset)
                            ->order_by('id')
                            ->get('member')
                            ->result_array();

        return $member_data;
	}

	function get_member_number()
	{
		$member_number = $this->db->get('member')->num_rows();
		return $member_number;
	}

	function delete_member($member)
	{
		$this->db->delete('member', array('username' => $member));
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