<?php
    class Usuario extends DB{

        public function request($correo,$contra){
            try{
                $str = parent::conectar()->prepare("SELECT * FROM usuarios WHERE correo = ? AND contra = ?");
                $str->bindParam(1,$correo,PDO::PARAM_STR);
                $str->bindParam(2,$contra,PDO::PARAM_STR);
                $str->execute();
                return $str->fetch(PDO::FETCH_OBJ);
            }catch(Exception $e){
                die('mal'.$e->getMessage());
            }
        }

        public function consulta(){
            try{
                $str = parent::conectar()->prepare("SELECT * FROM usuarios");
                $str->execute();
                return $str->fetchAll(PDO::FETCH_OBJ);
            }catch(Exception $e){
                die('mal'.$e->getMessage());
            }
        }
        
    }
?>