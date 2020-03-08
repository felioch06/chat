<?php require_once('views/layouts/header.php') ?>

<body>
    <?php require_once('views/layouts/banner.php') ?>

    <div class="ui stackable  grid">
        <div class="row ">
            <div class="three wide column"></div>
            <div class="ten wide column ">
                
                <div class="ui red message">
                
                    <?php
                        $mensajesUser = parent::mensajesUsuario($_SESSION['nombres']->id_usuario);
                        $id_propio = $_SESSION['nombres']->id_usuario;
                        
                            if(@$mensajesUser->visto == 0){
                    foreach(parent::consultaMensajesNuevos($id_propio) as $person){
                    
                    ?>
                
                    <b><i class="ui tiny circle icon"></i>
                    <a href="?class=Usuarios&view=newChat&id=<?php echo $person->id_usuario ?>"><?php echo strtoupper($person->nick_name) ?>
                    <span><?php echo $person->mensaje ?></span>
                    </a>
                    <div class="ui divider"></div></b>

                    <?php

                    } } ?> 
                    </div>
                    <div class="ui red message">
                        <?php if(@$mensajesUser->visto == 0 || @$mensajesUser->visto == 1){
                            foreach(parent::consultaMensajesAntiguos($id_propio) as $person){

                            ?>
                            <a href="?class=Usuarios&view=newChat&id=<?php echo $person->id_usuario ?>"><?php echo strtoupper($person->nick_name) ?>
                            <span><?php echo $person->mensaje ?></span>
                            </a>
                            <div class="ui divider"></div>
                        <?php
                        } }
                        ?>

                    </div>
            </div>
        </div>
    </div>


    <?php require_once('views/layouts/footer.php') ?>
</body>

</html>