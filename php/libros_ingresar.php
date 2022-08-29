<?php 
require 'database.php';
$formato;

	if (isset($_POST['fisico']) && isset($_POST['digital'])) {
		$formato = 'Fisico y digital';
	}elseif (isset($_POST['fisico'])) {
		$formato = 'Fisico';
	}elseif (isset($_POST['digital'])) {
		$formato = 'Digital';
	}

	if (!empty($_POST['titulo'])) {
		$sql = "INSERT INTO libros (ISBN, Genero, Sinopsis, Tipo, Nombre, Fecha_publicacion, Idioma) VALUES (:isbn, :genero, :sinopsis, :formato, :nombre, :publicacion, :idioma)";
		//$sqlA="INSERT INTO escriben (ID_Autor, ISBN) VALUES ()"
		$stmt = $conn->prepare($sql);
		$stmt->bindParam(':isbn', $_POST['isbn']);
		$stmt->bindParam(':genero', $_POST['genero']);
		$stmt->bindParam(':sinopsis', $_POST['sinopsis']);
		$stmt->bindParam(':formato', $formato);
		$stmt->bindParam(':nombre', $_POST['titulo']);
		$stmt->bindParam(':publicacion', $_POST['fechaPublicacion']);
		$stmt->bindParam(':idioma', $_POST['idioma']);

		if ($stmt->execute()) {
		    header('Location: libros_ingresar.html');
	  	}
	}
?>
