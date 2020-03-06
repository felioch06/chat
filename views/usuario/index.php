<?php require_once('views/layouts/header.php') ?>

<body>
    <?php require_once('views/layouts/banner.php') ?>

    <div class="ui stackable grid">
        <div class="row">
            <div class="three wide column">
                <div class="ui search mg-10-left">
                    <input class="prompt" type="text" id="search" placeholder="A Quien Buscas?">
                    <div id="searchResponse" class="result">
    
                    </div>
                    <div class="results"></div>
                </div>
            </div>

            <div class="ten wide column">
                <div class="ui stackable grid">
                    <div class="row">

                        <?php 
                        $id = $_REQUEST['id'];
                        $mensajes = parent::mensajesUsuarios($id); 
                            foreach($mensajes as $r){ 
                        ?>

                        <?php if($_SESSION['nombres']->id_usuario == $r->fk_usuario){ ?>
                        <div class="sixteen wide column">
                            <div class="chat-segment-primary">
                                <span><?php echo $r->hora_enviado ?></span>
                                <br>
                                <span><?php echo $r->mensaje ?></span>
                            </div>
                        </div>
                            <?php }else { ?>

                        <div class="right floated right aligned thirteen wide column">
                            <div class="chat-segment-secondary">
                                <span><?php echo $r->hora_enviado ?></span>
                                <br>
                                <span><?php echo $r->mensaje ?></span>
                            </div>
                        </div>
                            <?php  } } ?>
                    </div>

                    <div class="row">
                        <div class="sixteen wide column ">
                            <form action="" class="input-chat" >
                                <div class="ui action input-background big input">
                                    <input type="text" class="input-bar" placeholder="Escribe un mensaje...">
                                    <button class="ui icon button">
                                        <i class="paper plane icon"></i>
                                    </button>
                                </div>
                            </form>
                        </div>  
                    </div>
                </div>
            </div>
        </div>
    </div>


    <?php require_once('views/layouts/footer.php') ?>
</body>

</html>