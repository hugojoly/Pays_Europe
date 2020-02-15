<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class conteneurs extends CI_Controller {
        
        public  function __construct() {
            CI_Controller::__construct();
        }
    
	public function index()   
	{
                //Charger le MODELS pour afficher les conteneurs de la base de données
            
                $this->load->model('M_conteneurs');
                
                $array_resultat = $this->M_conteneurs->select_all_by_pages();
                
                $data['result'] = $array_resultat ;
                
                //Charger les vues, pour l'affichage
                $data['title'] = "Listes des conteneurs";
                $data['heading'] = "Ramassage des points de collecte ";
                
                $this->load->helper("url");
                
                $page = $this->load->view('V_liste_conteneurs', $data, true);
                
                $this->load->view('commun/template', array('contenu' => $page));
	}
        
        public function search()   
        {
            $search_name = $this->input->get('search_string');
            
            $this->load->model('M_conteneurs');
                
            $array_resultat = $this->M_conteneurs->select_search_by_page($search_name);
            
            if($search_name != NULL){
                
                $data['result'] = $array_resultat ;
                $data['search'] = $search_name ;
                
            }else{
                
                $data['result'] = null ;    
            }
            
            $data['title'] = "Listes des conteneurs";
            $data['heading'] = "Ramassage des points de collecte ";
                
            $this->load->helper("url");
            
            $page = $this->load->view('V_liste_conteneurs', $data, true);
                
            $this->load->view('commun/template', array('contenu' => $page));
            
        }
        
        public function detail($idConteneur)   
        {
                $this->load->model('M_conteneurs');
                
                $array_resultat = $this->M_conteneurs->select_detail_by_conteneur($idConteneur);
                
                $data['result'] = $array_resultat ;
            
                $data['title'] = "Listes des conteneurs";
                $data['heading'] = "Ramassage des points de collecte ";
                
                $this->load->helper("url");
            
                $page = $this->load->view('V_detail_conteneur', $data, true);
                
                $this->load->view('commun/template', array('contenu' => $page));
        }
}


