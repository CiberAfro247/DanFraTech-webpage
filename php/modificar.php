<?php
$server = 'localhost';
$username = 'root';
$password = '';
$database = 'proyecto';

try {
  $conn = new PDO("mysql:host=$server;dbname=$database;", $username, $password);
} catch (PDOException $e) {
  die('Connection Failed: ' . $e->getMessage());
}
$id = $_POST['dato'];

$day = $_POST['cnt'];

$consulta = "UPDATE multas SET cant_dias = '$day' WHERE ID_Multas = $id";
$resultado = $conn->query($consulta);
echo($consulta);

$resultado->execute();
?>
