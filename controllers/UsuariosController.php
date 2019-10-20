<?php
    class UsuariosController extends Usuario{
        
        private $security;

        public function __construct(){
            try{
                $this->security = new Security();
                $this->security->validar_sesion();
            }catch(Exception $e){
                die($e->getMessage);
            }
        }
        
        public function index(){
            $title='Home';
            require_once('views/usuario/index.php');
        }

        
    }
?>