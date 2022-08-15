<?php

include 'database.php';


try {
    $conn = mysqli_connect($servidor,$usuario,$password,$base_datos);
} catch (Exception $ex) {
    die($ex->getMessage());
}

$consulta = "SELECT * FROM usuariosPlataforma";


$resultado = mysqli_query($conn , $consulta);
$arreglo = mysqli_fetch_all($resultado,MYSQLI_ASSOC);

echo json_encode($arreglo);

?>
	