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


$isbn = $_POST['dato'];
		
$query_eliminar = "DELETE FROM libros WHERE ISBN =".$isbn."";
echo($query_eliminar);
$stmt = $conn->prepare($query_eliminar);
$stmt->execute();
?>
