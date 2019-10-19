<?php
    class UsuariosController extends Usuario{
        public function index(){
            $title='Home';
            require_once('views/usuario/index.php');
        }
    }
?>