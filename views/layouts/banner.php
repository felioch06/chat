<div class="ui secondary pointing banner menu">
  <a class="active item">
    Home
  </a>
  
  <?php if(isset($_SESSION['nombres'])){ ?>
  <div class="right menu">
  <a class="ui item">
      <?php echo $_SESSION['nombres']->nick_name?>
    </a>
    <a href="?class=Login&view=destroy" class="ui item">
      Logout
    </a>
  </div>
  <?php }else{ ?>
    <div class="right menu">
  <a href="?class=Login&view=login" class="ui item">
    Iniciar Sesion
    </a>
    <a href="?class=Register&view=register" class="ui item">
      Registrarse
    </a>
  </div>
  <?php } ?>
</div>
