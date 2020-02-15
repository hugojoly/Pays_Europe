<?php
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . 'libraries/REST_Controller.php' ;

class Conteneurs extends REST_Controller {
        
        public  function __construct() {
            parent::__construct();
            $this->load->model('M_conteneurs');
            $this->load->helper("url"); 
        }
        
	public function index_get($id = '')   
	{
                if($id === '') {
                    
                    $results = $this->M_conteneurs->select_all() ;
                    $this->response($results, REST_Controller::HTTP_OK) ; 
                        
                } else {
                    
                    $results = $this->M_conteneurs->select_detail_by_conteneur($id);
                     
                    
                    if(count($results) != 0) {
                        
                        $this->response($results, REST_Controller::HTTP_OK) ;
                        
                    } else {
                        
                        $this->response($results, REST_Controller::HTTP_NOT_FOUND) ;
                        
                    }
                    
                }     
	}
        
        public function index_post()   
        {
            $dto = $this->_post_args['dto'] ;
            $dto = (array) json_decode($dto) ;
            
            $results = $this->M_conteneurs->insert($dto) ;
            
            $this->response($results[0], REST_Controller::HTTP_CREATED) ;
            
        }
        
        public function index_delete($id = '')   
        {
            if($id !== '') {
                
                $results = $this->M_conteneurs->delete($id) ;
                $this->response($results, REST_Controller::HTTP_CREATED) ;
            
                
            } else {
                        
                $this->response($results, REST_Controller::HTTP_NOT_FOUND) ;
                        
            }       
            
        }
        
        public function index_put($id = '')   
        {
            if($id !== '') {
                
                $dto = $this->_put_args['dto'] ;
                $dto = (array) json_decode($dto) ;  
                
                $results = $this->M_conteneurs->put($id, $dto) ;
                $this->response($results, REST_Controller::HTTP_CREATED) ;
            
                
            } else {
                        
                $this->response($results, REST_Controller::HTTP_NOT_FOUND) ;
                        
            } 
        }
        
        public function search_get($search_string = '')   
        {
                $results = $this->M_conteneurs->search($search_string);
                $array_resultat = $this->response($results, REST_Controller::HTTP_OK) ;      
        }
}


