<?php 
require 'database.php';

	if (!empty($_POST['titulo'])) {
		$sql = "INSERT INTO multas (ID_Multas, fecha, cant_dias) VALUES (:idmultas, :fecha, :cntdias)";
		//$sqlA="INSERT INTO escriben (ID_Autor, ISBN) VALUES ()"
		$stmt = $conn->prepare($sql);
		$stmt->bindParam(':idmultas', $_POST['idmultas']);
		$stmt->bindParam(':fecha', $_POST['fecha']);
		$stmt->bindParam(':cntdias', $_POST['cntdias']);
	

		if ($stmt->execute()) {
		    header('Location: ingresar_multas.html');
	  	}
	}
?>