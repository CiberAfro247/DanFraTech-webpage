<?php

$server = 'localhost';
$username = 'administracion';
$password = 'admin';
$database = 'proyecto';
$usernameu = 'usuario';
$passwordu = 'user';

try {
  $conn = new PDO("mysql:host=$server;dbname=$database;", $username, $password);
  $connu = new PDO("mysql:host=$server;dbname=$database;", $usernameu, $passwordu);
} catch (PDOException $e) {
  die('Connection Failed: ' . $e->getMessage());
}

?>
