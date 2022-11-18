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


$id_autor = $_POST['dato'];


$consulta = "DELETE FROM autores WHERE ID_Autor =".$id_autor."";
echo($consulta);
$stmt = $conn->prepare($consulta);
$stmt->execute();
?>