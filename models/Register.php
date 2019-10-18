<?php
    class Register extends DB{
        public function stored($nombres,$apellidos,$correo,$contra,$fecha_creacion){
            try{
                $str = parent::conectar()->prepare("INSERT INTO usuarios(nombres,apellidos,correo,contra,fecha_creacion) VALUES('$nombres','$apellidos','$correo','$contra', $fecha_creacion)");
                $str->execute();
            }catch(Exception $e){
                die('mal'.$e->getMessage());
            }
        }
    }
?>