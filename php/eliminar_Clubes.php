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
		
$query_eliminar = "DELETE FROM club_de_lectura WHERE ID_Club =".$id_club."";
echo($query_eliminar);
$stmt = $conn->prepare($query_eliminar);
$stmt->execute();
?>
