<?php
	session_start();

	if (isset($_SESSION['user_id'])) {
		header('Location: /DanFraTech-webpage-main');
	}
	require 'database.php';

	if (!empty($_POST['email'])) {
		$query_eliminar = "DELETE FROM usuarios WHERE Mail = :email";
		$records = $conn->prepare($query_eliminar);
		$records->bindParam(':email', $_POST['email']);
		
		if ($records->execute()) {
			header('Location: eliminar_usuario.html');
		}
	}
	
?>