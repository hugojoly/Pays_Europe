<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_tournee extends CI_Model {
    
    public function __construct() {
        parent::__construct();
        $this->load->database();
    }
    
    public function select_tournee(){
        
        $query = $this->db->select('*')
                          ->from('tourneestandard')
                          ->get();
        return $query->result_array();
    }
    
    public function select_detail_tournee($prmId){
        
        $query = $this->db->select('conteneur.Id, conteneur.RefSigfox, conteneur.AddrEmplacement, tourneestandard.Nom, tourneestandard.JourCollecte, tourneestandard.Id, conteneur.tourneestandardId')
                          ->from('conteneur, tourneestandard')
                          ->where('conteneur.tourneestandardId', $prmId)
                          ->where('tourneestandard.Id', $prmId)
                          ->get();
        return $query->result_array();
    }
}
