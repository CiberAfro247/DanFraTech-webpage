<?php

session_start();

if (isset($_SESSION['user_id'])) {
header('Location: /PROYECTO 2022');
}
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="bootstrap-5.0.2-dist/css/bootstrap.min.css" rel="stylesheet" media="screen">
  	<link rel="stylesheet" type="text/css" href="css/style.css">
  	<script src="bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<title></title>
</head>
<body>
	<nav class="navbar navbar-custom navbar-expand-lg navbar-light">
    	<div class="container">
      		<div class="collapse navbar-collapse" id="navbarNavDropdown">
        		<ul class="navbar-nav">
          			<li class="nav-item">
            			<a class="nav-link active a-custom" href="Index.html">Inicio</a>
          			</li>
          			<li class="nav-item">
            			<a class="nav-link a-custom" href="libros.html">Libros</a>
          			</li>
          			<li class="nav-item">
            			<a class="nav-link a-custom" href="clubs_de_lectura.html">Clubs de lectura</a>
          			</li>
          			<li class="nav-item">
            			<a class="nav-link a-custom" href="resenias.html">Reseñar</a>
          			</li>
          			<li>
          				<div class="flexsearchNav" align="center">
							<div class="flexsearch--wrapper">
								<form class="flexsearch--form" action="#" method="post">
									<div class="flexsearch--input-wrapper">
										<input class="flexsearch--input" type="search" placeholder="Buscar libros">
									</div>
								</form>
							</div>
						<li class="nav-item">
            			<a class="nav-link a-custom" href="logout2.php">Cerrar sesion</a>
          			</li>
						</div>
          			</li>
        		</ul>
      		</div>
    	</div>
  	</nav>
  	<br>
  	<div class="container">
  		<div class="row">
  			<div class="col-3">
	  			<div class="container">
	  				<h6>LIBROS PEDIDOS</h6>
	  				<div class="row">
	  					<div class="col-5">
			  				<img src="../Imagenes/ladron_rayo.png" width="90px">
						</div>
			  			<div class="col-7">
			  				<h6>El ladron del rayo</h6>
			  				<p>por Rick Riordan</p>
			  				<button class="button">Continuar</button>
			  			</div>
		  			</div>
		  			<br>
		  			<div class="row">
	  					<div class="col-5">
			  				<img src="../Imagenes/naranjo.jpg" width="90px">
						</div>
			  			<div class="col-7">
			  				<h6>El priorato del naranjo</h6>
	  						<p>por Samantha Shannon</p>
			  				<button class="button">Continuar</button>
			  			</div>
		  			</div>
		  		</div>
	  		</div>
	  		<div class="col-6">
	  			<div class="container">
	  				<h6>MIS RESEÑAS</h6>
	  				<div class="art row" align="left">
	  					<div class="col-3">
	  						<img src="../Imagenes/ladron_rayo.png" width="100px">
	  					</div>
	  					<div class="col-9">
	  						<h6>El ladron del rayo</h6>
	  						<p>por Rick Riordan</p>
	  						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud  <a href="">...(mas)</a></p>
	  					</div>
	  				</div>
	  				<br>
	  				<div class="art row" align="left">
	  					<div class="col-3">
	  						<img src="../Imagenes/naranjo.jpg" width="100px">
	  					</div>
	  					<div class="col-9">
	  						<h6>El priorato del naranjo</h6>
	  						<p>por Samantha Shannon</p>
	  						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud  <a href="">...(mas)</a></p>
	  					</div>
	  				</div>
	  			</div>
	  		</div>
	  		<div class="col-3">
	  			<div class="container">
	  				<h6>MIS CLUBS DE LECTURA</h6>
	  				<div class="art row">
	  					<div class="col-12">
	  						<h6>PJO Freaks</h6>
	  						<p>Pepito comentó</p>
	  						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad  <a href="">...(mas)</a></p>
	  					</div>
	  				</div>
	  				<br>
	  				<div class="art row">
	  					<div class="col-12">
	  						<h6>Thriller Shananigans</h6>
	  						<p>Josefa comentó</p>
	  						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad  <a href="">...(mas)</a></p>
	  					</div>
	  				</div>
	  				<br>
	  				<div class="art row">
	  					<div class="col-12">
	  						<h6>Biografía de por vida</h6>
	  						<p>Maria comentó</p>
	  						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad  <a href="">...(mas)</a></p>
	  					</div>
	  				</div>
	  			</div>
	  		</div>
  		</div>
  	</div>
</body>
</html>