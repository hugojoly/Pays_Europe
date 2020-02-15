<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class tournee extends CI_Controller {
        
        public  function __construct() {
            CI_Controller::__construct();
        }
        
        
        public function index()   
	{
                //Charger le MODELS pour afficher les conteneurs de la base de données
            
                $this->load->model('M_tournee');
                
                $array_resultat = $this->M_tournee->select_tournee();
                
                $data['result'] = $array_resultat ;
                
                //Charger les vues, pour l'affichage
                $data['title'] = "Listes des tournées";
                $data['heading'] = "Ramassage des points de collecte ";
                
                $this->load->helper("url");
            
                $page = $this->load->view('V_liste_tournees', $data, true);
                
                $this->load->view('commun/template', array('contenu' => $page));
	}
        
        public function detail($idTournee)   
	{
                //Charger le MODELS pour afficher les conteneurs de la base de données
            
                $this->load->model('M_tournee');
                
                $array_resultat = $this->M_tournee->select_detail_tournee($idTournee);
                
                $data['result'] = $array_resultat ;
                
                //Charger les vues, pour l'affichage
                $data['title'] = "Detail tournées";
                $data['heading'] = "Ramassage des points de collecte ";
                
                $this->load->helper("url");
            
                $page = $this->load->view('V_detail_tournee', $data, true);
                
                $this->load->view('commun/template', array('contenu' => $page));
	}
        
}

