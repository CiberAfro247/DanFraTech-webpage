<?php 
require 'database.php';

    if (!empty($_POST['id_autor'])) {

    $sql="INSERT INTO autores(ID_Autor, Nombre_autor) VALUES (:id_autor, :nombre)";
		$stmt = $conn->prepare($sql);
    $stmt->bindParam(':id_autor',$_POST['id_autor']);
    $stmt->bindParam(':nombre',$_POST['nombre']);

    if ($stmt->execute()) {
      header('Location: ../ingresar_autores.html');
    }
  }
?>