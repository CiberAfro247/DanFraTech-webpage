
<?php 
	$libro = $_POST['book'];
	$usuario = $_POST['user'];
	$nombre = $_POST['name'];
	$conexion = mysqli_connect("localhost", "root", "", "proyecto");

	if (mysqli_connect_errno()) {
    	printf("Conexión fallida: %s\n", mysqli_connect_error());
   		exit();
	}

	$query_autor = "SELECT libros.nombre, autores.Nombre_autor, libros.Idioma, libros.Genero, libros.ISBN, libros.Fecha_publicacion FROM libros, autores, escriben WHERE libros.ISBN = escriben.ISBN AND autores.ID_Autor = escriben.ID_Autor AND libros.Nombre LIKE '%$libro%'";
	$query_libro = "SELECT * FROM libros WHERE nombre LIKE '%$libro%'";
	$query_user = "SELECT ID_Usuario FROM usuarios WHERE nombre LIKE '%$usuario%'";
	$query_insertar_club = "INSERT INTO club_de_lectura (ID_Club, fecha_creacion, Nombre) VALUES (CURDATE(), '$nombre')";

	//$query_insertar_forman = "INSERT INTO forman (ID_Usuario, ID_Club) VALUES ()";
	//$query_insertar_historial = "INSERT INTO historial_club (ID_Club, ISBN) VALUES ()";
?>

<?php 
//Buscar usuario
	/*
	if ($busqueda = mysqli_multi_query($conexion, $query_user)){
		do {
			if ($resultado = mysqli_store_result($conexion)){
				while ($fila = mysqli_fetch_array($resultado)){
					//printf("$fila[0] <br>");
				}
			}
			mysqli_free_result($resultado);
		} while (mysqli_next_result($conexion));
	}
	*/

	//Insertar club de lectura
	//mysqli_multi_query($conexion, $query_insertar_club);
	//Insertar forman
	
	//Insertar historial del club
?>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
  	<link rel="stylesheet" type="text/css" href="style.css">
  	<script src="js/bootstrap.min.js"></script>
  	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<title></title>
</head>
<body>
	<nav class="navbar navbar-custom navbar-expand-lg navbar-light">
    	<div class="container">
      		<div class="collapse navbar-collapse" id="navbarNavDropdown">
        		<ul class="navbar-nav">
          			<li class="nav-item">
            			<a class="nav-link a-custom" href="#">Inicio</a>
          			</li>
          			<li class="nav-item">
            			<a class="nav-link a-custom" href="#">Libros</a>
          			</li>
          			<li class="nav-item">
            			<a class="nav-link a-custom" href="#">Usuarios</a>
          			</li>
          			<li class="nav-item">
            			<a class="nav-link active a-custom" href="crear_club_de_lectura.html">Clubs de lectura</a>
          			</li>
          			<li>
          				<div class="flexsearch" align="center">
							<div class="flexsearch--wrapper">
								<form class="flexsearch--form" action="#" method="post">
									<div class="flexsearch--input-wrapper">
										<input class="flexsearch--input" type="search" placeholder="Buscar libros">
									</div>
								</form>
							</div>
						</div>
          			</li>
        		</ul>
      		</div>
    	</div>
  	</nav>
  	<br>
  	<div class="container">
  		<form action="navegacion_club.php" method="post">
  			<div class="row">
	  			<div class="col-2 art">
	  				<a class="a-custom active" href="crear_club_de_lectura.html">Crear</a><br>
	  				<a class="a-custom" href="eliminar_club_de_lectura.html">Eliminar</a><br>
	  				<a class="a-custom" href="modificar_club_de_lectura.html">Modificar</a>
	  			</div>
	  			<div class="col-2">
	  				<p>Nombre</p>
	  				<p>Buscar primera lectura</p>
	  				<p>Agregar integrantes</p>
	  			</div>
	  			<div class="col-8">
	  				<div class="flexsearch" align="center">
						<div class="flexsearch--wrapper">
							<div class="flexsearch--input-wrapper">
								<input class="flexsearch--input" id="name" name="name" style="background-color: #FFFFFF;" type="text">
							</div>
						</div>
					</div>

					<div class="flexsearch" align="center">
						<div class="flexsearch--wrapper">
							<div class="flexsearch--input-wrapper">
								<input class="flexsearch--input" id="book" name="book" type="search" placeholder="Buscar libros">
							</div>
						</div>
					</div>

					<div class="flexsearch" align="center">
						<div class="flexsearch--wrapper">
							<div class="flexsearch--input-wrapper">
								<input class="flexsearch--input" id="user" name="user" type="search" placeholder="Buscar usuario">
							</div>
						</div>
					</div>
	  			</div>
	  		</div>
	  		<br>
	  		<br>
	  		<div class="row">
	  			<div class="container">
	  				<div class="row">
	  					<div class="col-2"></div>
			  			<div class="col-2 art">
			  				<p align="center">...</p>
			  			</div>
			  			<div class="col-8">
			  				<table>
			  					<?php
								if ($busqueda = mysqli_multi_query($conexion, $query_autor)){
									do {
										if ($resultado = mysqli_store_result($conexion)){
											while ($fila = mysqli_fetch_array($resultado)){
								?>
												<tr>
								  					<td>Nombre: </td>
								  					<td><?php printf ($fila[0]) ?></td>
								  				</tr>
								  				<tr>
													<td>Autor: </td>
							  						<td><?php printf ($fila[1]) ?></td>
							  					</tr>
								  				<tr>
								  					<td>Idioma: </td>
								  					<td><?php printf ($fila[2]) ?></td>
								  				</tr>
								  				<tr>
													<td>Genero: </td>
							  						<td><?php printf ($fila[3]) ?></td>
							  					</tr>
								  				<tr>
								  					<td>ISBN: </td>
								  					<td><?php printf ($fila[4]) ?></td>
								  				</tr>
												<tr>
							  						<td>Publicacion: </td>
							  						<td><?php printf ($fila[5]) ?></td>
							  					</tr>
								<?php
												}
											}
											mysqli_free_result($resultado);
										} while (mysqli_next_result($conexion));
									}
								?>
			  				</table>
			  			</div>
	  				</div>
	  			</div>
	  		</div>
	  		<div class="row">
	  			<div class="col-10" align="right">
	  				<br>
	  				<input type="submit" id="crear" class="button" value="Crear">
	  			</div>
	  		</div>
  		</form>
  		
  	</div>
</body>
</html>