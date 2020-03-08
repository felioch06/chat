<?php require_once('views/layouts/header.php') ?>

<body onload="readyStateChanged()">
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

            <div class="ten wide column ">
                <div class="ui stackable grid">
                    <div class="row mg-30-bottom" id="mensajeResponse">
                        <?php
                            $id = @$_REQUEST['id'];
                            $id_usuario_para = @$_REQUEST['id_para'];
                        ?>

                        <input type="hidden" value="<?php echo $id ?>" id="id">
                        <input type="hidden" value="<?php echo $id_usuario_para ?>" id="id_usuario_para">
                    </div>

                    <div class="row">
                        <div class="sixteen wide column ">
                            <form action="?class=Usuarios&view=newMensaje&id=<?php echo $id ?>&id_para=<?php echo $id_usuario_para ?>" class="input-chat" method="post" >
                                <div class="ui action input-background big input">
                                    <input type="text" class="input-bar" name="mensaje" placeholder="Escribe un mensaje..." autocomplete="off">
                                    <button class="ui icon button" id="buttonMensaje">
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