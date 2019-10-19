<?php require_once('views/layouts/header.php') ?>
<body>
<?php require_once('views/layouts/banner.php') ?>

<div class="ui middle stackable aligned center aligned mg-20-top-bottom container grid">
  <div class="eight wide column ">

    <?php if(isset($_REQUEST['success'])){ ?>
    <div class="ui teal message">
        <i class="check circle large icon"></i>    
        Te has registrado correctamente
    </div>
    <?php } ?>

    <?php if(isset($_REQUEST['error'])){ ?>
    <div class="ui red message">
        <i class="x large icon"></i>    
        Tu correo o contraseña no coinciden
    </div>
    <?php } ?>

    <form class="ui large form" action="?class=Login&view=auth" method="post">
      <div class="ui stacked pd-20-top-bottom segment">
        <h2 class="ui teal image header">
            <div class="content">
                <p><i class="user circle big icon"></i></p>
                Ingresar
            </div>
        </h2>
        <div class="ui divider"></div>
        <div class="field">
          <div class="ui left icon big input">
            <i class="user icon"></i>
            <input type="email" name="correo" placeholder="Correo">
          </div>
        </div>
        <div class="field">
          <div class="ui left icon big input">
            <i class="lock icon"></i>
            <input type="password" name="contra" placeholder="Contraseña" >
          </div>
        </div>
        <button class="ui fluid large teal submit mg-10-bottom animated fade button">
            <div class="visible content">
                Login
            </div>
            <div class="hidden content">
                <i class="right arrow icon"></i>
            </div>
        </button>

        ¿Usuario Nuevo? <a href="?class=Register&view=register">Registrate</a>

      </div>
    </form>
  </div>
</div>

<?php require_once('views/layouts/footer.php') ?>
</body>
</html>