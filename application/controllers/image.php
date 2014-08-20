<?php
header("Content-Type: text/html;charset=utf-8");

class Image extends MY_Controller{

	public function __construct()
	{
		parent::__construct();
    }  

	public function upload($path = 'other')
	{
		require('UploadHandler.php');
		$upload_handler = new UploadHandler($path);
	}

	public function index()
	{
		$this->input->post('category');
		$this->cismarty->view('pages/picture_upload.tpl', array('category' => $this->input->post('category')));
	}

	public function select_category()
	{
		if( $this->check_login() )
		{
			$this->load->model('members');
			if($this->members->is_admin($this->session->userdata['memberName']))
			{
				$this->load->model('products');
				$this->cismarty->view('pages/select_category.tpl', array('categorylist' => $this->products->get_category() ) );
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

	public function get_images($category = 'other', $page = 1)
	{
		$dir = 'images/'.$category;
		$handle = opendir($dir);
		
		$image_file = array();
		$image_number = 0;
	    while (false !== ($file = readdir($handle)))
	    {
	    	
	    	if($file != '.' && $file != '..' && !is_dir($dir.'/'.$file))
	    	{
		    	list($files_name,$file_type) = explode(".", $file);
		        if($file_type=="gif" or $file_type=="jpg" or $file_type=="JPG" or $file_type=="png" or $file_type=="PNG")
		        {
		            array_push($image_file, $file);
		            $image_number++;
		        }
		    }
	    }

	    $this->load->library('pagination');

		$config['base_url']             = site_url('image/get_images/'.$category);
		$config['total_rows']           = $image_number;
		$config['per_page']             = 2;
		$config['first_link']           = '第一页';
		$config['last_link']            = '最后一页';
		$config['uri_segment']          = 4;
		$config['use_page_numbers']     = TRUE;

		$index = ($page - 1) * 2;

		$images = array();
		for ($i = $index; $i < $index + $config['per_page']; $i++)
		{
			if(isset($image_file[$i]))
				array_push($images, $image_file[$i]);
			else
				break;
		}

		$this->pagination->initialize($config);		

		$this->cismarty->view('pages/product_images.tpl',
							   array('category' => $category, 
							   		 'images'   => $images,
							   		 'link'     => $this->pagination->create_links(),
							  ));
	}

}





