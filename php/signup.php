<?php
include 'database.php';

$message = '';

if (!empty($_POST['email']) && !empty($_POST['password'])) {
  $sql = "INSERT INTO usuarios (nombre, apellido, clave, telefono, mail, Administrador, Grado) VALUES (:nombrereg, :apellidoreg, :password, :numerotel, :email, 0, :grado)";
  $stmt = $conn->prepare($sql);
  $stmt->bindParam(':nombrereg', $_POST['nombrereg']);
  $stmt->bindParam(':apellidoreg', $_POST['apellidoreg']);
  $stmt->bindParam(':numerotel', $_POST['numerotel']);
  $stmt->bindParam(':email', $_POST['email']);
  $stmt->bindParam(':grado', $_POST['grado']);
  $password = password_hash($_POST['password'], PASSWORD_BCRYPT);
  $stmt->bindParam(':password', $password);
  
  if ($stmt->execute()) {
    $message = 'Usuario creado exitosamente';
    header('Location: ../Inicio_usuario_comun.html');
  } else {
    $message = 'Lo lamentamos, no pudimos crear su usuario';
    header('Location: ../signup.php');
  }
}
?>
