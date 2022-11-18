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
$stmt = $conn->prepare($query_eliminar);
echo($query_eliminar);
echo($isbn);
$stmt->execute();
?>
