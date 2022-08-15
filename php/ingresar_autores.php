<?php

  require 'database.php';
  $message 
  if(!empty($_POST[nombre_autor,apellido_autor])){
    $sql="INSERT INTO autores(nombre_autor, apellido_autor, biografia) VALUES (:nombre_autorins, :apellido_autorins, :biografiains)";
  }
  $stmt = $conn->prepare($sql);
  $stmt->bindParam(':nombre_autorins',$_POST['nombre_autorins']);
  $stmt->bindParam(':apellido_autorins',$_POST['apellido_autorins']);
  $stmt->bindParam(':biografiains',$_POST['biografiains']);
?>