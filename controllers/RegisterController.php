<?php
    

    class RegisterController extends Register{

        public function register(){
            $title = 'Register';
            require_once('views/register/register.php');
        }
        public function store(){
            $nick_name = $_POST['nick_name'];
            $nombres = $_POST['nombres'];
            $apellidos = $_POST['apellidos'];
            $correo = $_POST['correo'];
            $contra = md5($_POST['contra']);
            $fecha_creacion = $_POST['fecha_creacion'];

            $verify = parent::verify($correo);
            
            if($correo == @$verify->correo){
                header('location:?class=Register&view=register&error=error');            
            }else{
                parent::stored($nick_name,$nombres,$apellidos,$correo, $contra,$fecha_creacion);
            
                header('location:?class=Login&view=login&success=success');
            }

             
        }
    }

?>