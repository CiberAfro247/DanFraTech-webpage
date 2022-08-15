<?php
  session_start();

  if (isset($_SESSION['user_id'])) {
  header('Location: /DanFraTech-webpage-main');
  }
  require 'database.php';

  if (!empty($_POST['email']) && !empty($_POST['password'])) {
    $records = $conn->prepare('SELECT ID_Usuario, Mail, clave, administrador FROM usuarios WHERE Mail = :email');
    $records->bindParam(':email', $_POST['email']);
    $records->execute();
    $results = $records->fetch(PDO::FETCH_ASSOC);

    $message = '';

    if (count($results) > 0 && password_verify($_POST['password'], $results['clave']) && $results['administrador'] == 0) {
      $_SESSION['user_id'] = $results['ID_Usuario'];
      header('Location: Inicio_usuario_comun.html');
    } else if (count($results) > 0 && password_verify($_POST['password'], $results['clave']) && $results['administrador'] == 1) {
      $_SESSION['user_id'] = $results['ID_Usuario'];
      header('Location: Inicio_administrador.html');
    } else {
      header('Location: login.html');
    }
  }

?>