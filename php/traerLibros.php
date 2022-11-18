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
$query = "SELECT ISBN, Nombre, Genero, Sinopsis, Tipo, Fecha_publicacion, Idioma FROM libros";
$stmt = $conn->query($query);
$arreglo = $stmt->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($arreglo);
$stmt->execute();
?>