<div class="ui white secondary pointing banner menu">
  <a href="?class=Usuarios&view=index" class="active item">
    Home
  </a>
  
  <a href="?class=Usuarios&view=mensajes" class="active item">
    Mensajes
    <?php ?>
    <i class="ui circle icon"></i>
    <?php } ?>
  </a>

  
  <?php if(isset($_SESSION['nombres'])){ ?>
  <div class="right menu">
  <a class="ui item">
      <?php echo $_SESSION['nombres']->nick_name?>
    </a>
    <a href="?class=Security&view=salir" class="ui item">
      Logout
    </a>
  </div>
  <?php }?>
</div>
