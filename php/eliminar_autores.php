<?php
include 'database.php';
try {
    $conn = mysqli_connect($servidor,$usuario,$password,$base_datos);
} catch (Exception $ex) {
    die($ex->getMessage());
}

$id = $_POST['id'];
$nombre = $_POST['nombre'];
$apellido = $_POST['apellido'];
$biografia = $_POST['biografia'];


$consulta = "UPDATE autores SET nombre = '$nombre', apellido = '$apellido', biografia = '$biografia'  WHERE id =$id";
$resultado = mysqli_query($conn , $consulta);

echo $consulta;

?>