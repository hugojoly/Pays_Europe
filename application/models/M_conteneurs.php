<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_conteneurs extends CI_Model {
    public function __construct() {
        parent::__construct();
        $this->load->database();
    }
    
    public function select_all_by_pages(){
        
        $this->load->library('pagination');
        
        $config_p['base_url'] = site_url('conteneurs/index/');
        
        $config_p['total_rows'] = $this->db->from('conteneur')
                                           ->count_all_results();
        
        $config_p['per_page'] = 10;
        
        $this->pagination->initialize($config_p) ;
        
        $query = $this->db->select('Id, AddrEmplacement')
                          ->from('conteneur')
                          ->limit($config_p['per_page'], $this->uri->segment(3))
                          ->get();
        return $query->result_array();
    }
    
    
    public function select_detail_by_conteneur($prmid){
        
        $query = $this->db->select('*')
                          ->from('conteneur')
                          ->where('Id', $prmid)
                          ->get();
        return $query->result_array();
    }
    
    public function select_search_by_page($search){
        
        $this->load->library('pagination');
        
        $config_p['base_url'] = site_url('conteneurs/search/');
        
        $config_p['total_rows'] = $this->db->from('conteneur')
                                           ->count_all_results();
        
        $config_p['per_page'] = 10;
        
        $config_p['reuse_query_string'] = TRUE;
        
        $this->pagination->initialize($config_p) ;
        
        $query = $this->db->select('conteneur.Id, conteneur.AddrEmplacement, tourneestandard.Nom')
                        ->from('conteneur, tourneestandard')
                        ->where('conteneur.TourneeStandardId = tourneestandard.Id')
                        ->like('conteneur.AddrEmplacement', $search)
                        ->limit($config_p['per_page'], $this->uri->segment(3))
                        ->get();
        return $query->result_array();  
    }
    
    
    
    public function select_all(){
        $query = $this->db->select('Id, AddrEmplacement')
                          ->from('conteneur')
                          ->get();
        return $query->result_array();
    }
    
    public function insert($dto){
        $this->db->insert('conteneur', $dto) ;
        $last_id = $this->db->insert_id() ;
        return $this->select_detail_by_conteneur($last_id) ;
    }
    
    public function delete($prmid){
        $this->db->where('Id', $prmid)
                 ->delete('conteneur');
    }           
    
    public function put($prmid, $dto){
        $this->db->where('Id', $prmid)
                 ->update('conteneur', $dto);
    }
    
    public function search($search_string){
        $query = $this->db->select('conteneur.Id, conteneur.AddrEmplacement, tourneestandard.Nom')
                        ->from('conteneur, tourneestandard')
                        ->where('conteneur.TourneeStandardId = tourneestandard.Id')
                        ->like('conteneur.AddrEmplacement', $search_string)
                        ->get();
        return $query->result_array(); 
    }
}

