<?php 
	$servidor = "localhost";
	$usuario = "root";
	$password = "";
	$base_datos = "proyecto";
	$usuario = $_POST['user'];
	$conexion = mysqli_connect("localhost", "root", "", "proyecto");

	$query_user = "SELECT * FROM usuarios WHERE nombre = '$usuario'";

	$resultado = mysqli_query($conexion , $query_user);
	$arreglo = mysqli_fetch_all($resultado,MYSQLI_ASSOC);
	echo json_encode($arreglo);

?>