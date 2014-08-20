<?php

class Images extends CI_Model {

	function __construct() {
		parent::__construct();
	}

	function get_dir_images($dir)
	{
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

		return array('image_file' => $image_file, 'image_number' => $image_number);
	}
}