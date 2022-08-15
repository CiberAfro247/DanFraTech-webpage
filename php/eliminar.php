<?php

include 'database.php';

try {
    $conn = mysqli_connect($servidor,$usuario,$password,$base_datos);
} catch (Exception $ex) {
    die($ex->getMessage());
}

$id = $_POST['dato'];

$consulta = "DELETE FROM usuariosPlataforma WHERE id =".$id."";
$resultado = mysqli_query($conn , $consulta);

?>
