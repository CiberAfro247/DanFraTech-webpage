
datosUsuarios = []; //Array global para manejo de usuarios
	
	/**
	*Función que trae usuarios desde PHP
	* 
	*El archivo PHP va contra la base de datos y nos devuelve
	* un listado en formato JSON
	* 
	*/
async function traerUsuarios() {
	const response = await fetch('php/traerUsuarios.php',
	{
	method: 'GET',
	});
	// waits until the request completes...
	const res = await response.json();
	return res;
}

/**
 * Llama a la función de traer datos de forma asincrona
 * 
 * Esta funcióm nos permite llamar a traer datos, y cuando
 * los datos llegan, operamos con los mismos
 * 
 */ 
traerUsuarios().then(dato => {
	for (var i = 0; i < dato.length; i++) {
		filaNueva(dato[i], i);
		}

		datosUsuarios = dato;

});

/**
* Agrega fila al listado
* 
* Recibe los datos de la persona e  fotrmato array y arma una nueva fila para la tabla
* preexistente en HTML. La tabla en el HTML debe tener el id "tablaPersonas"
*
* 
* @param array infoPersona
* @param integer pos Posicion en el array 
*/
function filaNueva(infoPersona, pos){
	var fila = "<tr id="+pos+">"
								+"<td id='txtId"+pos+"' class='pl-4'>"+infoPersona.id+"</td>"
								+"<td id='txtNombre"+pos+"'>"+infoPersona.nombre+"</td>"
								+"<td id='txtEmail"+pos+"'>"+infoPersona.email+"</td>"
								+"<td>"
								+"<button type='button' id="+pos+" onclick='eliminar(this.id)' class='btn btn-outline-info btn-circle btn-lg btn-circle ml-2'><i class='fa fa-trash'></i> </button>"
								+"<button type='button' onclick='mostrarModal("+pos+")' class='btn btn-outline-info btn-circle btn-lg btn-circle ml-2'><i class='fa fa-edit'></i> </button>"
								+"</td></tr>"
	$("#tablaPersonas").append(fila);
}

/**
* Eliminacion de un usuario
*
* Elimina tanto graficamante como en la base de datos.
* La posicion determina el id de la fila
*
* @param integer pos Posicion en el array e id de fila
*/
function eliminar(pos){
	$.ajax({
			url: 'htpps://php/eliminar.php',
			method : 'POST',
			data : {
				dato : datosUsuarios[pos].id
			},
			success: function(respuesta) {
				console.log(respuesta); },
			error: function(respuesta) {
				console.log(respuesta); },
			});
	$("#"+pos).remove();
}


/**
 * Guardar modificaciones en usuario
 * 
 * Realiza las modificaciones del usuarios tanto graficamente como
 * en presistencia.
 * 
 * @param integer pos Posicion en el array e id de fila
 */
function guardarCambios(pos){
	$.ajax({
			url: 'php/modificar.php',
			method : 'POST',
			data : {
				nombre : $('#txtNombre').val() ,
				email : $('#txtCorreo').val(),
				id : datosUsuarios[pos].id
			},
			success: function(respuesta) {
				console.log(respuesta); },
			error: function(respuesta) {
				console.log(respuesta); },
			});
	
	$("#txtNombre"+pos).html($('#txtNombre').val());
	$("#txtEmail"+pos).html($('#txtCorreo').val());
	cerrarModal();
}



/*##############   MODAL  ############## */

function mostrarModal(pos) {
  $('#modifModal').css("display", "block");
  $('#txtNombre').val(datosUsuarios[pos].nombre);
  $('#txtCorreo').val(datosUsuarios[pos].email);
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