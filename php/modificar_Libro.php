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
$gen = $_POST['genero'];
$lan = $_POST['idioma'];


$query_modificar = " UPDATE libros SET Genero = '$gen', Idioma = '$lan' WHERE ISBN ='".$isbn."'";
$stmt = $conn->prepare($query_modificar);
/*$stmt->bindParam(':Genero', $isbn);
$stmt->bindParam(':Idioma', $gen);
$stmt->bindParam(':ISBN', $lan);*/

echo($isbn);
echo($gen);
echo($lan);

echo($query_modificar);
$stmt->execute();

?>