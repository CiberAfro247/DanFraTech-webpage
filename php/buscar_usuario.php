<?php
	
	require 'database.php';

	$conexion = mysqli_connect($servidor,$usuario, $password, $base_datos);

	$query_user = "SELECT * FROM usuarios WHERE nombre = '$usuario'";

	$resultado = mysqli_query($conexion , $query_user);
	$arreglo = mysqli_fetch_all($resultado,MYSQLI_ASSOC);
	echo json_encode($arreglo);

?>