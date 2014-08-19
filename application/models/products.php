<?php

class Products extends CI_Model {

	function __construct() {
		parent::__construct();
	}

	function get_category()
	{
		$categorys = $this->db->select('name,enname,categoryid,superid')
						->order_by('id')
						->get('category')
						->result_array();
		return $categorys;
	}

	function add_product($product_data)
	{
		$current_time = date("Y-m-d H:i:s",time());
		$picture_path = join($product_data['picpath'],';');
		
		$data = array(
						'name'        => $product_data['name'],
						'oprice'      => $product_data['oprice'],
						'sprice'      => $product_data['sprice'],
						'mprice'      => $product_data['mprice'],
						'desc'        => $product_data['desc'],
						'category'    => $product_data['category'],
						'pdate'		  => $current_time,
						'udate'       => $current_time,
						'picpath'     => $picture_path,
					);

		$resl = $this->db->insert('product',$data);
		return $data;
	}

	function check_product_exist($product)
	{
		$query_data = $this->db->where('name', $product)->limit(1)->get('product');

		if($query_data->num_rows > 0) return FALSE;

		return TRUE;
	}

	function update_product_info($product_id, $product_info)
	{
		$current_time = date("Y-m-d H:i:s",time());
		$update_data  = array(
								'name'       => $product_info['name'],
								'oprice'     => $product_info['oprice'],
								'sprice'     => $product_info['sprice'],
								'mprice'     => $product_info['mprice'],
								'category'   => $product_info['category'],
								'udate'      => $current_time,
								'picpath'    => $product_info['picpath'],
							 );

		$this->db->where('id', $product_id);
		$this->db->update('product',$update_data);
	}

	function get_product_info($product)
	{
		$product_data = $this->db->select('id,name,oprice,sprice,mprice,category,desc,unit,picpath')
								 ->where('name',$product)->get('product')->first_row('array');
		return $product_data;
	}

	function get_all_products($offset, $number)
	{
		$product_data = $this->db->select('id,name,desc,oprice,sprice,mprice,category,pdate,udate,picpath')
                             ->limit($number, $offset)
                             ->order_by('id')
                             ->get('product')
                             ->result_array();

        return $product_data;
	}

	function get_product_number()
	{
		$product_number = $this->db->get('product')->num_rows();
		return $product_number;
	}

	function delete_product($product)
	{
		$this->db->delete('product', array('name' => $product));
	}
}