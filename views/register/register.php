<?php require_once('views/layouts/header.php') ?>
<body>
<?php require_once('views/layouts/banner.php') ?>


<div class="ui middle stackable aligned center aligned mg-20-top-bottom container grid">
  <div class="eight wide column ">

  <?php if(isset($_REQUEST['error'])){ ?>
    <div class="ui red message">
        <i class="x large icon"></i>    
        El correo ya existe, por favor selecciona otro
    </div>
    <?php } ?>

    <form class="ui large form" action="?class=Register&view=store" method="post">
      <div class="ui stacked pd-20-top-bottom segment">
        <h2 class="ui teal image header">
            <div class="content">
                <p><i class="user plus big icon"></i></p>
                Registrarse
            </div>
        </h2>
        <div class="ui divider"></div>

        <div class="field">
          <div class="ui left icon big input">
            <i class="id badge icon"></i>
            <input type="text" name="nick_name" placeholder="Usuario" minlength="3" maxlength="20" required pattern="[a-zA-Z0-9!]+">
          </div>
        </div>

        <div class="field">
          <div class="ui left icon big input">
            <i class="user icon"></i>
            <input type="text" name="nombres" placeholder="Nombres">
          </div>
        </div>

        <div class="field">
          <div class="ui left icon big input">
            <i class="user outline icon"></i>
            <input type="text" name="apellidos" placeholder="Apellidos">
          </div>
        </div>

        <div class="field">
          <div class="ui left icon big input">
            <i class="mail icon"></i>
            <input type="email" name="correo" placeholder="Correo">
          </div>
        </div>

        <div class="field">
          <div class="ui left icon big input">
            <i class="lock icon"></i>
            <input type="password" name="contra" placeholder="Contraseña">
          </div>
        </div>

        <input type="hidden" value="<?php echo date('Y-m-d') ?>" name="fecha_creacion">
         

        <button class="ui fluid large teal submit mg-10-bottom animated fade button">
            <div class="visible content">
                Registrarse
            </div>
            <div class="hidden content">
                <i class="right arrow icon"></i>
            </div>
        </button>

        ¿Ya tienes una cuenta? <a href="?class=Login&view=login">Inicia Sesion</a>

      </div>
    </form>
    
  </div>
</div>

<?php require_once('views/layouts/footer.php') ?>
</body>
</html>