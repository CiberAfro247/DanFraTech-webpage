datosUsuarios = [];

function funcion (usuario){
	$.ajax({
		url: 'buscar_usuario.php',
		method : 'POST',
		data : {user : usuario},
		success: function(respuesta) {
			console.log(respuesta); },
		error: 
	})
}