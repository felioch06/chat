<div class="ui white secondary pointing banner menu">
  <a class="active item">
    Home
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
