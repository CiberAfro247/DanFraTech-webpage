<?php
	session_start();

	require 'database.php';

	if (!empty($_POST['email'])) {
		$query_eliminar = "
		DELETE FROM contactos_usuario WHERE contactos_usuario.ID_Usuario_1 = (SELECT usuarios.ID_Usuario FROM usuarios WHERE usuarios.Mail = :email);
		DELETE FROM contactos_usuario WHERE contactos_usuario.ID_Usuario_2 = (SELECT usuarios.ID_Usuario FROM usuarios WHERE usuarios.Mail = :email);
		DELETE FROM realizan WHERE realizan.ID_Usuario = (SELECT usuarios.ID_Usuario FROM usuarios WHERE usuarios.Mail = :email);
		DELETE FROM prestamos WHERE prestamos.ID_Usuario = (SELECT usuarios.ID_Usuario FROM usuarios WHERE usuarios.Mail = :email);
		DELETE FROM reciben WHERE reciben.ID_Usuario = (SELECT usuarios.ID_Usuario FROM usuarios WHERE usuarios.Mail = :email);
		DELETE FROM forman WHERE forman.ID_Usuario = (SELECT usuarios.ID_Usuario FROM usuarios WHERE usuarios.Mail = :email);
		DELETE FROM historial_usuarios WHERE historial_usuarios.ID_Usuario = (SELECT usuarios.ID_Usuario FROM usuarios WHERE usuarios.Mail = :email);
		DELETE FROM usuarios WHERE usuarios.ID_Usuario = (SELECT usuarios.ID_Usuario FROM usuarios WHERE usuarios.Mail = :email);";
		$records = $conn->prepare($query_eliminar);
		$records->bindParam(':email', $_POST['email']);
		
		if ($records->execute()) {
			header('Location: ../html/eliminar_usuario.html');
		}
	}
	
?>
