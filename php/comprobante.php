<?php

try {
    $conn = new PDO("mysql:host=$server;dbname=$database;", $username, $password);
  } catch (PDOException $e) {
    die('Connection Failed: ' . $e->getMessage());
  }


  function checkerLibro($Mail,$ISBN)
{
    $bd = new Database();
    $ads = $bd->prepare("SELECT ISBN FROM prestamos WHERE ID_Usuario = :o AND ISBN = idL");
    $ads->bindParam(':idL', $ISBN, PDO::PARAM_STR);
    $ads->bindParam(':o', $Mail, PDO::PARAM_STR);
    $ads->execute();
    $uInfo = $ads->fetchAll();
    return $uInfo[0]['ISBN'];
}
$checkOwner = checker($Mail, $ISBN);

if(isset($_GET['ID_Usuario']) && $_GET['ID_Usuario'] == $ID_Usuario && isset($_GET['ISBN']) && $_GET['ISBN'] ==$checkOwner){
    $embed = '<embed src="' . $directory . 'toolbar=0&navpanes=0&scrollbar=0" width="1550" height="800>'; 
} else {
    echo 'No es el dueño del libro';
}
?>