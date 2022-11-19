<?php
    include 'database.php';
    
    $admin;

    if (isset($_POST['si'])) {
        $admin = 1;
    }elseif (isset($_POST['no'])) {
        $admin = 0;
    }

    echo "hola";

    if (!empty($_POST['mail'])) {
        echo "hola";
        $query_eliminar = "UPDATE usuarios SET nombre = :nombre, apellido = :apellido, Telefono = :telefono, Mail = :email, Nacimiento = :fecha, Administrador = :admin WHERE Mail = :mail";
        $records = $conn->prepare($query_eliminar);
        $records->bindParam(':email', $_POST['email']);
        $records->bindParam(':mail', $_POST['mail']);
        $records->bindParam(':nombre', $_POST['nombre']);
        $records->bindParam(':apellido', $_POST['apellido']);
        $records->bindParam(':telefono', $_POST['telefono']);
        $records->bindParam(':fecha', $_POST['fecha']);
        $records->bindParam(':admin', $admin);
        
        if ($records->execute()) {
            echo "hola";
            header('Location: ../html/modificar_usuario.html');
        }
    }
?>
