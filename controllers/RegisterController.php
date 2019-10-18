<?php
    

    class RegisterController extends Register{
        public function store(){
            $correo = $_POST['correo'];
            $contra = md5($_POST['contra']);

            parent::stored($correo, $contra);
            
        }
    }

?>