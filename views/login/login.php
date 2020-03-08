<?php require_once('views/layouts/header.php') ?>
<body class="body">
<b class="title">TALKING</b>

<div class="container" id="container">
	<!-- formulario de registro -->
	<div class="form-container sign-up-container" id="containerSingUp">
		<form action="?class=Register&view=store" class="form" method="post">
			<h1 class="h1">Crear Cuenta</h1>
			<input type="text" name="nombre_usuario" class="input" placeholder="Nombre de Usuario" required />
			<input type="email" name="correo" class="input" placeholder="Correo" required />
			<input type="password" name="pass" class="input" placeholder="Contraseña" required />
			<button class="button">Crear</button>
			<p class="p" id="demoTwo">¿Ya tienes una cuenta? Iniciar Sesión</p>
		</form>
	</div>
<!-- fin formulario registro -->

<!-- formulario de iniciar sesion -->
	<div class="form-container sign-in-container" id="containerSingIn">

		<form action="?class=Login&view=auth" class="form" method="post">

			<?php if(isset($_REQUEST['success'])){ ?>
				<div class="alert alert-success" role="alert" id="success">
					¡Se Registró Correctamente!
				</div>
			<?php } ?>

			<?php if(isset($_REQUEST['noExiste'])){ ?>
				<div class="alert alert-danger" role="alert" id="noExiste">
					¡Correo o Contraseña Incorrecta!
				</div>
			<?php } ?>

			<?php if(isset($_REQUEST['yaExiste'])){ ?>
				<div class="alert alert-danger" role="alert" id="yaExiste">
					¡este correo ya existe!
				</div>
			<?php } ?>

			<h1 class="h1">Iniciar Sesión</h1>

			<input type="email" name="correo" class="input" placeholder="Correo" required />
			<input type="password" name="contra" class="input" placeholder="Contraseña" required />
			<a class="a" href="#">¿Olvidaste tu contraseña?</a>
			<button class="button" type="submit">Entrar</button>

			<p href="" id="demo" class="p">¿No tienes una cuenta? Crear Cuenta</p>

		</form>
		
	</div>
<!-- fin formulario iniciar sesion -->

<!-- segmentos deslizables -->

	<div class="overlay-container">
		<div class="overlay">
			<div class="overlay-panel overlay-left">
				<h1 class="h1">¡Bienvenido de vuelta!</h1>
				<p class="p">Para mantenerse conectado con nosotros, inicie sesión con su información personal.</p>
				<button class="button ghost" id="signIn">Iniciar Sesión</button>
			</div>

			<div class="overlay-panel overlay-right">
				<h1 class="h1">¡Hola Amigo!</h1>
				<p class="p">Ingrese sus datos personales y comience su viaje con nosotros.</p>
				<button class="button ghost" id="signUp">Crear Cuenta</button>
			</div>
		</div>
	</div>
<!-- fin segmentos delizables -->
</div>


</body>

<?php require_once('views/layouts/footer.php') ?>
</body>
</html>
