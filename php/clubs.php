<?php

include 'database.php';

$consulta = "SELECT * FROM club_de_lectura LIMIT 12";
$stmt = $conn->prepare($consulta);
$stmt->execute();
$result = [];
while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
    array_push($result, $row);
}

echo json_encode($result);

?>