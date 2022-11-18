<?php 
include 'database.php';

$consulta = "SELECT * FROM libros WHERE ISBN = :isbn";
$stmt = $conn->prepare($consulta);
$stmt->bindParam(':isbn', $_GET['isbn']);
$stmt->execute();
$result = [];
$book = [];
while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    array_push($result, $row);
}
$book = $result[0];

$consulta2 = "SELECT autores.Nombre_autor FROM autores, escriben, libros WHERE libros.ISBN = escriben.ISBN AND escriben.ID_Autor = autores.ID_Autor AND libros.ISBN = :isbn";
$smt = $conn->prepare($consulta2);
$smt->bindParam(':isbn', $_GET['isbn']);
$smt->execute();
$resultado = [];
$author = [];
while ($row = $smt->fetch(PDO::FETCH_ASSOC)) {
    array_push($resultado, $row);
}
$author = $resultado[0];

$consulta3 = "SELECT usuarios.Nombre, resenias.Opinion FROM resenias, libros, usuarios, tiene, realizan WHERE libros.ISBN = tiene.ISBN AND tiene.ID_Resenias = resenias.ID_Resenia AND resenias.ID_Resenia = realizan.ID_Resenia AND realizan.ID_Usuario = usuarios.ID_Usuario AND libros.ISBN = :isbn";
$st = $conn->prepare($consulta3);
$st->bindParam(':isbn', $_GET['isbn']);
$st->execute();
$res = [];
$Tres = [];
while ($row = $st->fetch(PDO::FETCH_ASSOC)) {
    array_push($res, $row);
}
$Tres = $res[0];

?>

<!DOCTYPE html>
<html>
<head>
    <link rel="icon" href="../Imagenes/Bookneith.png">
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="../css/style.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://kit.fontawesome.com/4c9b3a5a5f.js" crossorigin="anonymous"></script>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap-avatar@latest/dist/avatar.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<title>Libros</title>
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
                                    <a class="nav-link a-custom" href="../html/Inicio_usuario_comun.html">Inicio</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link active a-custom" href="../html/libros.html">Libros</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link a-custom" href="../html/clubs_de_lectura.html">Clubs de lectura</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link a-custom" href="../html/resenias.html">Reseñar</a>
                                </li>
                                <li>
                                    <div class="flexsearchNav" align="center">
                                        <div class="flexsearch--wrapper">
                                            <form class="flexsearch--form" action="../php/busqueda_libro.php" method="post">
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
            <div class="row no-gutters">
                <div class="col-md-2" id="portada">
                  <img src="<?php print($book["Imagen"]) ?>" class="img-fluid rounded-start" alt="..." style="width: fit-content; height: fit-content;">
                </div>
                <div class="col-md-9">
                    <div class="card-body ">
                        <h5 class="card-title" id="nombreLibro"><?php print($book["Nombre"]) ?></h5>
                        <table>
                            <tr>
                                <td><p class="card-text" id="autor">Por <?php print($author["Nombre_autor"]) ?></p></td>
                            </tr>
                            <tr>
                                <td>
                                    <a>Puntaje
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star checked"></span>
                                        <span class="fa fa-star"></span>
                                    </a>    
                                </td>
                            </tr>
                            <tr>
                                <td><p class="card-text">Fecha de publicación: <?php print($book["Fecha_publicacion"]) ?></p></td>
                            </tr>
                            <tr>
                                <td><p class="card-text">Idioma: <?php print($book["Idioma"]) ?></p></td>
                            </tr>
                            <tr>
                                <td>
                                    <p class="card-text">Sinopsis</p>  
                                    <p class="card-text" id="sinopsis"><?php print($book["Sinopsis"]) ?></p>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <a href="resenias.html" class="button button_books">Reseñar</a>
                </div>
            </div>
            <div class="col-md-3">             
               <a href="../html/libro.html" id="prestamo" class="button button_books" value="Pedir Prestamo">Pedir Prestamo</a>
            </div>
        </div>
        <hr style="color: #31ada1; border:1px;">
        <div class="row">
            <div class="col-md-12"><h3>Reseñas</h3></div>
        </div>
        <div class="container" id="resenias">
            <div class="row">
                <?php 
                for ($i=0; $i < count($res); $i++) { 
                    echo "<div class='col-md-12 art'>";
                    echo "<p>Reseña de ".$res[$i]['Nombre']."</p>";
                    echo "<p>".$res[$i]['Opinion']."</p>";
                    echo "</div>";
                    echo "<br>";
                }
                ?>
            </div>
            <br>
        </div>
    </div>
</body>
<script type="text/javascript">
    function Prestamo(){
        confirm('Desea pedir el prestamo de este libro?');
    }
</script>
</html>
