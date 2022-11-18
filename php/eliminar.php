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
$query_eliminar2 = "DELETE FROM reciben WHERE ID_Multas =".$id."";
//$query_eliminar = "DELETE FROM multas WHERE ID_Multas =".$id."";
$stmt = $conn->prepare($query_eliminar2);
$stmt->execute();
?>