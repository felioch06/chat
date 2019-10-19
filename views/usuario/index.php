<?php if(isset($_SESSION['nombres'])){ ?>
    
<?php require_once('views/layouts/header.php') ?>
<body>
<?php require_once('views/layouts/banner.php') ?>




<?php require_once('views/layouts/footer.php') ?>
</body>
</html>
<?php }else{ header('location:?class=Login&view=login'); } ?>