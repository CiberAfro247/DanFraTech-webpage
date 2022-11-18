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

$consulta = "SELECT ID_Multas, fecha, cant_dias, ID_Usuario FROM FullMulta";
$stmt = $conn->query($consulta);
$arreglo = $stmt->fetchAll(PDO::FETCH_ASSOC);
echo json_encode($arreglo);
$stmt->execute();

?>