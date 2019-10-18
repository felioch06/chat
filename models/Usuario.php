<?php
    class Usuario extends DB{
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