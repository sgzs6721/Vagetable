<?php

class Products extends CI_Model {

	function __construct() {
		parent::__construct();
	}

	function get_category()
	{
		$categorys = $this->db->select('name,categoryid,superid')
						->order_by('id')
						->get('category')
						->result_array();
		return $categorys;
	}

	function add_product($product_data)
	{
		$current_time = date("Y-m-d H:i:s",time());
		
		$data = array(
						'name'        => $product_data['name'],
						'oprice'      => $product_data['oprice'],
						'sprice'      => $product_data['sprice'],
						'mprice'      => $product_data['mprice'],
						'desc'        => $product_data['desc'],
						'category'    => $product_data['category'],
						'pdate'		  => $current_time,
						'udate'       => $current_time,
					);

		$resl = $this->db->insert('product',$data);
		return $current_time;
	}

	function update_product_info($member_name, $member_info)
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
}