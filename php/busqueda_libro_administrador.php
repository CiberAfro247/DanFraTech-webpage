<?php 
	include 'database.php';

	$consulta = "CALL buscar_libro(:buscar)";
	$stmt = $conn->prepare($consulta);
	$stmt->bindParam(':buscar', $_POST['buscar']);
	$stmt->execute();
	$result = [];
	while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
	    array_push($result, $row);
	}
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<link rel="icon" href="Imagenes/Bookneith.png">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../css/style.css">
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
		<script src="https://kit.fontawesome.com/4c9b3a5a5f.js" crossorigin="anonymous"></script>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap-avatar@latest/dist/avatar.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
	
		<title>Buscar</title>
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
			            			<a class="nav-link a-custom" href="../Inicio_administrador.html">Inicio</a>
			          			</li>

								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
										Libros
									</a>
									<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
										<li><a class="dropdown-item" href="../html/libros_administrador.html">Pagina Principal</a></li>	
									  	<li><a class="dropdown-item" href="../html/libros_ingresar.html">Ingresar</a></li>
										<li><a class="dropdown-item" href="../html/libros_eliminar.html">Eliminar</a></li>
									  	<li><a class="dropdown-item" href="../html/libros_modificar.html">Modificar</a></li>
									</ul>
								</li>
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
									Clubes de Lectura
									</a>
									<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
										<li><a class="dropdown-item" href="../html/clubs_de_lectura_administrador.html">Pagina Principal</a></li>
										<li><a class="dropdown-item" href="../html/crear_club_de_lectura.html">Crear</a></li>
									  	<li><a class="dropdown-item" href="../html/eliminar_club_de_lectura.html">Eliminar</a></li>
									  	<li><a class="dropdown-item" href="../html/modificar_club_de_lectura.html">Modificar</a></li>
									</ul>
								</li>
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
										Usuarios
									</a>
									<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
									  	<li><a class="dropdown-item " href="../html/eliminar_usuario.html">Eliminar</a></li>
									  	<li><a class="dropdown-item " href="../html/modificar_usuario.html">Modificar</a></li>
									</ul>
								</li>
							
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
										Usuarios
									</a>
									<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
									  	<li><a class="dropdown-item " href="../html/eliminar_usuario.html">Eliminar</a></li>
									  	<li><a class="dropdown-item " href="../html/modificar_usuario.html">Modificar</a></li>
									</ul>
								</li>
							
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
										Autores
									</a>
									<ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                       						<li><a class="dropdown-item" href="ingresar_autores.html">Ingresar</a></li>
									  	<li><a class="dropdown-item " href="eliminar_autores.html">Eliminar</a></li>
									  	<li><a class="dropdown-item " href="modificar_autores.html">Modificar</a></li>
									</ul>
								</li>	
						
								<li class="nav-item">
			            			<a class="nav-link a-custom" href="../resenias_administrador.html">Reseñar</a>
			          			</li>
								<li>
			          				<div class="flexsearchNav" align="center">
										<div class="flexsearch--wrapper">
											<form class="flexsearch--form" action="php/busqueda_libro_administrador.php" method="post">
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
                <div class="col-md-12"><h2>Resultados de Busqueda: <?php print($_POST['buscar']) ?> </h2></div>
            </div>
            <hr style="color: #31ada1; border:1px;">
            <div class="col-md 12 art"><h6>Filtro de Busqueda</h6>
                <input type="radio" id="todo"> Todo <input type="radio" id="novelas"> Novelas <input type="radio" id="comics"> Comics <input type="radio" id="estdio"> Estudio <select name="select" placeholder="Genero">	
                    <option value="value1"> Aventura</option>
                    <option value="value2"> Accion</option>
                    <option value="value3"> Misterio</option>
                    <option value="value4"> Deportes</option>
                    <option value="value5"> Romance</option>
                  </select></select> 
            </div>
			<br>
            <div class="row">
            	<div class="col-12">
	            	<div class="container">
	            		<?php
	            			for ($i=0; $i < count($result); $i++) { 
	            				echo "<div class='row art'>";
	            				echo "<div class='row no-gutters'>";
	            				echo "	<div class='col-md-2'>";
	            				echo "		<img src=".$result[$i]["Imagen"]." class='img-fluid rounded-start' alt='...' style='width: fit-content; height: fit-content;'>";
	            				echo "	</div>";
	            				echo "	<div class='col-md-9'>";
	            				echo "		<div class='card-body'>";
	            				echo "			<h5 class='card-title'>".$result[$i]["Nombre"]."</h5>";
	            				echo "			<p class='card-text'></p>";
	            				echo "			<a href='vista_libro' class='button button_books'>Pedir Prestamo</a>";
	            				echo "			<p class='card-text'>".$result[$i]["Sinopsis"]."</p>";
	               				echo "		</div>";
	            				echo "	</div>";
	            				echo "</div>";
	            				echo "</div>";
	            			}
	            		?>
	            	</div>
            	</div>
			</div>
			<br>
		</div>
</body>
</html>
