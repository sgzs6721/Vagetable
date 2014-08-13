<?php

header("Content-Type: text/html;charset=utf-8");

class Product extends MY_Controller{

	public function __construct()
	{
		parent::__construct();		
    }  

	public function add()
	{
		if( $this->check_login() )
		{
			$this->load->model('members');
			if($this->members->is_admin($this->session->userdata['memberName']))
			{
				$this->load->library('form_validation');

				if(! $this->form_validation->run() )
				{
					echo validation_errors();
					$this->cismarty->view('pages/product_add.tpl');
				}
				else
				{
					$this->load->model('products');
					$this->products->add_product($this->input->post());
					$inspect_info = $this->input->post();
					$inspect_info['is_admin'] = 1;
					$this->cismarty->view('pages/product_inspect.tpl',$inspect_info);
				}
			}
			else
			{
				$this->load->view('warning');
			}
		}
		else
		{
			$this->cismarty->view('pages/member_login.tpl');
		}
	}

	public function show_update($product)
	{
		if( $this->check_login() )
		{
			$this->load->model('products');
			$product_info = $this->products->get_product_info($product);
			$this->cismarty->view('pages/product_update.tpl',$product_info);
		}
		else
		{
			$this->cismarty->view('pages/member_login.tpl');
		}
	}

	public function update_info($product)
	{
		if( $this->check_login() )
		{
			$this->load->model('products');
			$this->products->update_product_info($product,$this->input->post());
		}
		else
		{
			$this->cismarty->view('pages/member_login.tpl');
		}
		
	}

	public function inspect_product($product)
	{
		if($this->check_login())
		{
			$this->load->model('members');
			$this->load->model('products');
			$product_info = $this->products->get_product_info($product);
			$product_info['is_admin'] = 0;
			if($this->members->is_admin($this->session->userdata['memberName'])) $product_info['is_admin'] = 1;
			$this->cismarty->view('pages/product_inspect.tpl', $product_info);
		}
		else
		{
			$this->cismarty->view('pages/member_login.tpl');
		}
	}

	public function confirm_delete($product)
	{
		$this->load->model('members');
		if($this->members->is_admin($this->session->userdata['memberName']))
		{
			$this->load->model('products');
			$product_info = $this->products->get_product_info($product);
			if(count($product_info) > 0)
			{
				$this->cismarty->view('pages/product_delete.tpl', $product_info);
			}
			else
			{
				echo 'product '.$product.' does not exist';
			}
		}
		else
		{
			$this->load->view('warning');
		}
	}

	public function delete_product($product)
	{
		if($this->check_login())
		{
			$this->load->model('members');
			if($this->members->is_admin($this->session->userdata['memberName']))
			{
				$this->load->model('products');
				$this->products->delete_product($product);
				#TODO confirm whether the product is deleted
				redirect('product/list_products');
			}
			else
			{
				$this->load->view('warning');
			}
		}
		else
		{
			$this->cismarty->view('pages/member_login.tpl');
		}
	}

	public function list_products()
	{
		if($this->check_login())
		{
			$this->load->library('pagination');
			$this->load->model('products');
			$this->load->model('members');

			$config['base_url']    = site_url('member/list_products');
			$config['total_rows']  = $this->products->get_product_number();
			$config['per_page']    = 10;
			$config['first_link']  = '第一页';
			$config['last_link']   = '最后一页';
			$config['uri_segment'] = 3;
			$config['use_page_numbers']     = TRUE;

			// $config['page_query_string']    = TRUE;
			// $config['query_string_segment'] = "page";
			// $page = 1;
			// if (isset($_GET['page'])) $page = ($_GET['page'] == "")?1:$_GET['page'];
			// $offset = ($page - 1 ) * $config['per_page'];

        	$offset = intval($this->uri->segment(3));
        	$all_products = $this->products->get_all_products($offset,$config['per_page']);
        	$this->pagination->initialize($config);

			$product_data['product_list'] = $all_products;
			$product_data['link']        = $this->pagination->create_links();
			$product_data['is_admin']    = 0;
			if($this->members->is_admin($this->session->userdata['memberName'])) $product_data['is_admin'] = 1;

			$this->cismarty->view('pages/product_list.tpl', $product_data);
		}
		else
		{
			$this->cismarty->view('pages/member_login.tpl');
		}
	}
}