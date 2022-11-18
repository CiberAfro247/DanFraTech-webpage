datosMultas = []; //Array global para manejo de usuarios	
	/**
	*Función que trae usuarios desde PHP
	* 
	*El archivo PHP va contra la base de datos y nos devuelve
	* un listado en formato JSON
	* 
	*/
async function traerUsuarios() {
	const response = await fetch('../php/traerMultas.php',
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
		datosMultas = dato;
});
/**
* Agrega fila al listado
* 
* Recibe los datos de la persona en formato array y arma una nueva fila para la tabla
* preexistente en HTML. La tabla en el HTML debe tener el id "tablaPersonas"
*
*
* @param integer pos Posicion en el array 
* @param array infoMultas
*/
function filaNueva(infoMultas, pos){
	var fila = "<tr id="+pos+">"
								
								+"<td id='txtId"+pos+"' class='pl-4'>"+infoMultas.ID_Multas+"</td>"
								+"<td id='txtFecha"+pos+"'class'='pl-4'>"+infoMultas.fecha+"</td>"
								+"<td id='txtCntDia"+pos+"'class'='pl-4'>"+infoMultas.cant_dias+"</td>"
								+"<td id='txtNombre"+pos+"'class'='pl-4'>"+infoMultas.ID_Usuario+"</td>"
								+"<td>"
								+"<button type='button' id="+pos+" onclick='eliminar(this.id)' class='btn btn-outline-info btn-circle btn-lg btn-circle ml-2'><i class='fa fa-trash'></i> </button>"
								+"<button type='button' onclick='mostrarModal("+pos+")' class='btn btn-outline-info btn-circle btn-lg btn-circle ml-2'><i class='fa fa-edit'></i> </button>"
								+"</td></tr>"
	$("#tablaMultas").append(fila);
}
/* Eliminacion de un usuario
*hioal
* Elimina tanto graficamante como en la base de datos.
* La posicion determina el id de la fila
*
* @param integer pos Posicion en el array e id de fila
*/
function eliminar(pos){
	$.ajax({
			url: '../php/eliminar.php',
			method : 'POST',
			data : {
				dato : datosMultas[pos].ID_Multas
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
			url: '../php/modificar.php',
			method : 'POST',
			data : {
				dato : datosMultas[pos].ID_Multas,
				cnt : $('#txtCntDia').val()
				},
			success: function(respuesta) {
				console.log(respuesta); },
			error: function(respuesta) {
				console.log(respuesta); },
			});
	
	$("#txtCntDia"+pos).html($('#txtCntDia').val());
	cerrarModal();
}
/*##############   MODAL  ############## */

function mostrarModal(pos) {
  $('#modifModal').css("display", "block");
  $('#txtCntDia').val(datosMultas[pos].cant_dias);
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
