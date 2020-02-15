<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Accueil extends CI_Controller {
        
        public  function __construct() {
            CI_Controller::__construct();
        }
    
	public function index()
	{
                $data['title'] = "Les conteneurs de vêtements";
                $data['heading'] = "Ramassage des points de collecte ";
                
                $this->load->helper("url");
            
                $page = $this->load->view('V_accueil', $data, true);
                
                $this->load->view('commun/template', array('contenu' => $page));
	}    
}

