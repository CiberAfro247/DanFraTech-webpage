<?php
	include 'database.php';

	$consulta = "SELECT * FROM club_de_lectura WHERE ID_Club = :id";
	$stmt = $conn->prepare($consulta);
	$stmt->bindParam(':id', $_GET['id_club']);
	$stmt->execute();
	$result = [];
	$club = [];
	while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
	    array_push($result, $row);
	}
	$club = $result[0];

	$consulta2 = "SELECT libros.Nombre, libros.Imagen FROM historial_club, libros, club_de_lectura WHERE libros.ISBN = historial_club.ISBN AND historial_club.ID_Club = club_de_lectura.ID_Club AND historial_club.fecha_fin IS NULL AND historial_club.ID_Club = :id";
	$smt = $conn->prepare($consulta2);
	$smt->bindParam(':id', $_GET['id_club']);
	$smt->execute();
	$resultado = [];
	$bookA = [];
	while ($row = $smt->fetch(PDO::FETCH_ASSOC)) {
	    array_push($resultado, $row);
	}
	$bookA = $resultado[0];

	$consulta3 = "SELECT libros.Nombre, libros.Imagen FROM historial_club, libros, club_de_lectura WHERE libros.ISBN = historial_club.ISBN AND historial_club.ID_Club = club_de_lectura.ID_Club AND historial_club.fecha_fin IS NOT NULL AND historial_club.ID_Club = :id";
	$sm = $conn->prepare($consulta3);
	$sm->bindParam(':id', $_GET['id_club']);
	$sm->execute();
	$res = [];
	$bookV = [];
	while ($row = $sm->fetch(PDO::FETCH_ASSOC)) {
	    array_push($res, $row);
	}
	$bookV = $res[0];

	$consulta4 = "SELECT CONCAT(usuarios.Nombre, ' ', usuarios.Apellido) AS NomCom FROM forman, usuarios, club_de_lectura WHERE usuarios.ID_Usuario = forman.ID_Usuario AND forman.ID_Club = club_de_lectura.ID_Club GROUP BY club_de_lectura.ID_Club AND club_de_lectura.ID_Club = :id";
	$s = $conn->prepare($consulta4);
	$s->bindParam(':id', $_GET['id_club']);
	$s->execute();
	$resu = [];
	$ints = [];
	while ($row = $s->fetch(PDO::FETCH_ASSOC)) {
	    array_push($resu, $row);
	}
	$ints = $resu[0];
?>
<!DOCTYPE html>
<html>
<head>
	<link rel="icon" href="Imagenes/Bookneith.png">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
  	<link rel="stylesheet" type="text/css" href="style.css">
  	<script src="js/bootstrap.min.js"></script>
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  	<script src="https://kit.fontawesome.com/4c9b3a5a5f.js" crossorigin="anonymous"></script>
	<title>Clubs de Lectura</title>
</head>
<body>
	<nav class="navbar navbar-custom navbar-expand-lg navbar-light">
    	<div class="container">
      		<div class="collapse navbar-collapse" id="navbarNavDropdown">
      			<div class="container">
      				<div class="row">
      					<div class="col-11">
      						<ul class="navbar-nav">

			          			<li class="nav-item">
			            			<a class="nav-link a-custom" href="Inicio_administrador.html">Inicio</a>
			          			</li>

								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
										Libros
									</a>
									<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
										<li><a class="dropdown-item" href="libros_administrador.html">Pagina Principal</a></li>	
									  	<li><a class="dropdown-item" href="libros_ingresar.html">Ingresar</a></li>
										<li><a class="dropdown-item" href="libros_eliminar.html">Eliminar</a></li>
									  	<li><a class="dropdown-item" href="libros_modificar.html">Modificar</a></li>
									</ul>
								</li>
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
									Clubes de Lectura
									</a>
									<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
										<li><a class="dropdown-item" href="clubs_de_lectura_administrador.html">Pagina Principal</a></li>
										<li><a class="dropdown-item" href="crear_club_de_lectura.html">Crear</a></li>
									  	<li><a class="dropdown-item" href="eliminar_club_de_lectura.html">Eliminar</a></li>
									  	<li><a class="dropdown-item" href="modificar_club_de_lectura.html">Modificar</a></li>
									</ul>
								</li>
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
										Usuarios
									</a>
									<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
									  	<li><a class="dropdown-item " href="eliminar_usuario.html">Eliminar</a></li>
									  	<li><a class="dropdown-item " href="modificar_usuario.html">Modificar</a></li>
									</ul>
								</li>
								<li class="nav-item">
			            			<a class="nav-link a-custom" href="resenias_administrador.html">Reseñar</a>
			          			</li>
								<li>
			          				<div class="flexsearchNav" align="center">
										<div class="flexsearch--wrapper">
											<form class="flexsearch--form" action="busqueda_libro_administrador.php" method="post">
												<div class="flexsearch--input-wrapper">
													<input id="buscar" name="buscar" class="flexsearch--input" type="search" placeholder="Buscar libros">
													<input type="submit" name="submit" class="button">
												</div>
											</form>
										</div>
									</div>
			          			</li>
			        		</ul>
      					</div>
      					<div class="col-1">
      						<ul class="navbar-nav">
			      				<li align="right" class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
										<i class="fa-solid fa-user fa-lg"></i>
									</a>
									<ul class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
										<li><a class="dropdown-item" href="">Perfil</a></li>
										<div class="dropdown-divider"></div>
								  		<li><a class="dropdown-item" href="Inicio_sin_usuario.html">Cerrar sesión</a></li>
									</ul>
								</li>
			        		</ul>
      					</div>
      				</div>
      			</div>
      		</div>
    	</div>
  	</nav>
  	<br>
  	<div class="container">
  		<div class="row">
  			<div class="col-12">
  				<h3 class="club"><?php print($club["Nombre"]) ?></h3>
  				<h6>Lectura actual:</h6>
  			</div>
  		</div>
  		<div class="row">
  			<div class="col-2">
  				<img width="150px" src=<?php print($bookA["Imagen"]) ?>>
  			</div>
  			<div class="col-3">
  				<h6><?php print($bookA["Nombre"]) ?></h6>
  				<p>por Rick Riordan</p>
  				<button class="button">Realizar comentario</button>
  			</div>
  			<div class="col-4"></div>
  			<div class="col-3 art">
  				<p>Lecturas anteriores:</p>
  				<img width="120px" src=<?php print($bookV["Imagen"]) ?>>
  			</div>
  		</div>
  		<br>
  		<div class="row">
  			<div class="col-3">
  				<h5>Integrantes</h5>
  				<table class="table">
  					<?php 
  					for ($i=0; $i < count($resu); $i++) { 
  						echo "<tr><td>".$resu[$i]['NomCom']."</td></tr>";
  					}
  					?>
  				</table>
  			</div>
  		</div>
  		<br>
  		<div class="row">
  			<div class="col-12"><h5>Comentarios del libro</h5></div>
  		</div>
  		<div class="row">
  			<div class="col-12 art">
  				<img width="40px" src="Imagenes/Usuario.png">
  				<a>Josefa comentó</a>
  				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
  			</div>
  		</div>
  	</div>
  	<br>
  	<br>
</body>
</html>