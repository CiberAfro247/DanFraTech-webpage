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


$id_autor = $_POST['id'];
$nombre = $_POST['nombre'];

$query_modificar = "UPDATE autores SET Nombre_autor = :nom WHERE ID_Autor = :id";
		$stmt = $conn->prepare($query_modificar);
    $stmt->bindParam(':nom', $nombre);
    $stmt->bindParam(':id', $id_autor);
    $stmt->execute();
?>