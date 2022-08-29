<?php 
	require 'database.php';
	if (isset($_SESSION['user_id'])) {
		header('Location: /DanFraTech-webpage-main');
	}

	if (!empty($_POST['book'])) {
		$query_eliminar = "DELETE FROM libros WHERE ISBN = :book";
		$records = $conn->prepare($query_eliminar);
		$records->bindParam(':book', $_POST['book']);
		
		if ($records->execute()) {
			header('Location: libros_eliminar.html');
		}
	}
?>
