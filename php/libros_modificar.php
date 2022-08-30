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

	if (!empty($_POST['isbn'])) {
		$consulta = "UPDATE libros SET genero = :genero, sinopsis = :sinopsis, tipo = :formato, nombre = :titulo, Fecha_publicacion = :fecha, idioma = :idioma  WHERE ISBN = :isbn";
		$stmt = $conn->prepare($consulta);
		$stmt->bindParam(':titulo', $_POST['titulo']);
		$stmt->bindParam(':isbn', $_POST['isbn']);
		$stmt->bindParam(':fecha', $_POST['fechaPublicacion']);
		$stmt->bindParam(':idioma', $_POST['idioma']);
		$stmt->bindParam(':formato', $formato);
		$stmt->bindParam(':genero', $_POST['genero']);
		$stmt->bindParam(':sinopsis', $_POST['sinopsis']);

		if ($stmt->execute()) {
			header('Location: libros_modificar.html');
		}
	}

?>