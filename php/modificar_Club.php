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
$id_club = $_POST['dato'];
$nom = $_POST['nombre'];

$query_modificar = " UPDATE club_de_lectura SET Nombre = '$nom' WHERE ID_Club ='".$id_club."'";
$stmt = $conn->prepare($query_modificar);
echo($query_modificar);
$stmt->execute();

?>