datosAutores = [];

async function traerAutores(){
	const response = await fetch('php/traerAutores.php',
	{
	method: 'GET',
	});
	// waits until the request completes...
	const res = await response.json();
	return res;}
    traerAutores().then(dato => {
        for (var i = 0; i < dato.length; i++) {
            opcionNueva(dato[i], i);
            }
            datosAutores = dato;
    });
/**
* Agrega fila al listado
* 
* Recibe los datos de la persona en formato array y arma una nueva fila para la tabla
* preexistente en HTML. La tabla en el HTML debe tener el id "tablaPersonas"
*
*
* @param integer pos Posicion en el array 
* @param array datosAutores
*/
 

function opcionNueva(datosAutores, pos){
        var opcion = "<tr id="+pos+">"					
                                    +"<td id='txtId"+pos+"' class='pl-4'>"+datosAutores.ID_Autor+"</td>"
                                    +"<td id='txtFecha"+pos+"'class'='pl-4'>"+datosAutores.Nombre_autor+"</td>"
                                    +"<td>"
                                    +"<button type='button' id="+pos+" onclick='eliminar(this.id)' class='btn btn-outline-info btn-circle btn-lg btn-circle ml-2'><i class='fa fa-trash'></i> </button>"
									+"<button type='button' onclick='mostrarModal("+pos+")' class='btn btn-outline-info btn-circle btn-lg btn-circle ml-2'><i class='fa fa-edit'></i> </button>"
									+"</td></tr>"
$("#tabla_Autores").append(opcion);
}

/* Eliminacion de un usuario
*hioal
* Elimina tanto graficamante como en la base de datos.
* La posicion determina el id de la fila
*
* @param integer pos Posicion en el array e id de fila
*/
function eliminar(pos){
	console.log(pos);
	$.ajax({
		url: 'php/eliminar_Autor.php',
		method : 'POST',
		data : {
			dato : datosAutores[pos].ID_Autor
		},
		success: function(respuesta) {
			console.log(respuesta); },
		error: function(respuesta){
			console.log(respuesta);},
		});
	$("#"+pos).remove();
}

/*
Modificacion del Autor
*/
function guardarCambios(pos){
	$.ajax({
			url: 'php/modificar_Autor.php',
			method : 'POST',
			data : {
				nombre : $('#txtNombre').val(),
				id : datosAutores[pos].ID_Autor
				},
			success: function(respuesta) {
				console.log(respuesta); },
			error: function(respuesta) {
				console.log(respuesta); },
			});
	
	$("#txtNombre"+pos).html($('#txtNombre').val());
	cerrarModal();
}
/*##############   MODAL  ############## */
function mostrarModal(pos) {
  $('#modifModal').css("display", "block");
  $('#txtNombre').val(datosAutores[pos].Nombre_autor);
  $('#btnGuardar').click(function(){ guardarCambios(pos); });
}

// Cerrar el modal
function cerrarModal() {
	$('#modifModal').css("display", "none");
	$('#btnGuardar').unbind('click');
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
	var modal = document.getElementById("modifModal");
  if (event.target == modal) {
    modal.style.display = "none";
  }
}