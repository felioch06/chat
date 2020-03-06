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

        public function newChat(){
            $id = $_REQUEST['id'];
            $mio = $_SESSION['nombres']->id_usuario;
        
            $sala = parent::searchSala($id);
            if($id == @$sala->id_sala){
                echo "existe";
                $mensajes = parent::mensajesUsuarios($sala->id_sala);
            }else{
                $fecha = date('y-m-d g:i:s');
                parent::stored($fecha);
                $consultaSala = parent::consultaSala();
                $cantidadSalas = count($consultaSala);
                echo $cantidadSalas;
                parent::storedSalaUsuario($cantidadSalas, $id);
            }
                        
        }

        public function searchAjax(){
            $persona = $_POST['busqueda'].'%';
            ?>
                <div class="ui info message">
            <?php
            foreach(parent::searchPersona($persona) as $person){
            ?>
                
                <p><a href="?class=Usuarios&view=newChat&id=<?php echo $person->id_usuario ?>"><?php echo $person->nombres ?></a></p>
                <div class="ui divider"></div>
                
            <?php
            }
            ?>
            </div>

            <?php
            
        }

        
    }
?>