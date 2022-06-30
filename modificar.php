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
$correo = $_POST['email'];
$telefono = $_POST['telefono'];

$consulta = "UPDATE usuariosPlataforma SET nombre = '$nombre', apellido = '$apellido', email = '$correo', telefono = '$telefono' WHERE id =$id";
$resultado = mysqli_query($conn , $consulta);

echo $consulta;

?>
