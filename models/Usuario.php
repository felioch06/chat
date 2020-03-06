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

        public function consultaSala(){
            try{
                $str = parent::conectar()->prepare("SELECT * FROM sala");
                $str->execute();
                return $str->fetchAll(PDO::FETCH_OBJ);
            }catch(Exception $e){
                die('mal'.$e->getMessage());
            }
        }

        public function searchPersona($persona){
            try{
              $q=parent::conectar()->prepare("SELECT * FROM usuarios WHERE nombres LIKE ?");
              $q->bindParam(1,$persona,PDO::PARAM_STR);
              $q->execute();
              return $q->fetchAll(PDO::FETCH_OBJ);
            }catch(Exception $e){
               die($e->getMessage());
            }
        }

        public function stored($fecha){
            try{
                $str = parent::conectar()->prepare("INSERT INTO sala(fk_tipo,fecha) VALUES( 1,'$fecha')");
                $str->execute();
            }catch(Exception $e){
                die('mal'.$e->getMessage());
            }
        }

        public function storedSalaUsuario($fk_sala, $fk_usuario){
            try{
                $str = parent::conectar()->prepare("INSERT INTO sala_usuario(fk_sala,fk_usuario) VALUES( $fk_sala,$fk_usuario)");
                $str->execute();
            }catch(Exception $e){
                die('mal'.$e->getMessage());
            }
        }

        public function searchSala($id){
            try{
              $q=parent::conectar()->prepare("SELECT * FROM sala_usuario LEFT JOIN sala on sala.id_sala = sala_usuario.fk_sala WHERE fk_sala = ?");
              $q->bindParam(1,$id,PDO::PARAM_INT);
              $q->execute();
              return $q->fetch(PDO::FETCH_OBJ);
            }catch(Exception $e){
               die($e->getMessage());
            }
        }
        

        public function mensajesUsuarios($mensajes){
            try{
              $q=parent::conectar()->prepare("SELECT * FROM mensajes 
              LEFT JOIN usuarios on usuarios.id_usuario = mensajes.fk_usuario
              WHERE fk_sala = ? ");
              $q->bindParam(1,$mensajes,PDO::PARAM_STR);
              $q->execute();
              return $q->fetchAll(PDO::FETCH_OBJ);
            }catch(Exception $e){
               die($e->getMessage());
            }
        }
        
    }
?>