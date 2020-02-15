<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class test extends CI_Controller {
        
        public  function __construct() {
            CI_Controller::__construct();
             $this->load->helper("url");
        }
    
	public function index()   
	{
            $this->load->view('V_test') ;
	}
}


