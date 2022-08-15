<?php
	session_start();

	if (isset($_SESSION['user_id'])) {
		header('Location: /DanFraTech-webpage-main');
	}
	require 'database.php';

	if (!empty($_POST['email'])) {
		$query_eliminar = "DELETE FROM autores WHERE NOMBRE = :nombre";
		$records = $conn->prepare($query_eliminar);
		$records->bindParam(':nombre', $_POST['nombre']);
		
		if ($records->execute()) {
			header('Location: eliminar_autores.html');
		}
	}
	
?>