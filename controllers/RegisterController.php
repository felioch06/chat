<?php
    

    class RegisterController extends Register{

        public function register(){
            $title = 'Register';
            require_once('views/register/register.php');
        }
        public function store(){
            $nombres = $_POST['nombres'];
            $apellidos = $_POST['apellidos'];
            $correo = $_POST['correo'];
            $contra = md5($_POST['contra']);
            $fecha_creacion = $_POST['fecha_creacion'];

            parent::stored($nombres,$apellidos,$correo, $contra,$fecha_creacion);
            
            header('location:?class=Login&view=login&success=success');
        }
    }

?>