<?php

include 'database.php';

$consulta = "SELECT * FROM libros WHERE Genero = 'Fantasia' LIMIT 12";
$stmt = $conn->prepare($consulta);
$stmt->execute();
$result = [];
while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    array_push($result, $row);
}

echo json_encode($result);

?>
