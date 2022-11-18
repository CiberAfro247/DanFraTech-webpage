datosClubes = [];

async function traerClubes(){
	const response = await fetch('php/traerClubes.php',
	{
	method: 'GET',
	});
	
	// waits until the request completes...
	const res = await response.json();
	return res;}
    traerClubes().then(dato => {
		for (var i = 0; i < dato.length; i++) {
            opcionNueva(dato[i], i);
            }
            datosClubes = dato;
    });
/**
* Agrega fila al listado
* 
* Recibe los datos de la persona en formato array y arma una nueva fila para la tabla
* preexistente en HTML. La tabla en el HTML debe tener el id "tablaClubes"
*
*
* @param integer pos Posicion en el array 
* @param array datosClubes
*/
 

function opcionNueva(datosClubes, pos){

        var opcion = "<tr id="+pos+">"
                                    +"<td id='txtID"+pos+"' class='pl-4'>"+datosClubes.ID_Club+"</td>"
                                    +"<td id='txtNombre"+pos+"'class'='pl-4'>"+datosClubes.Nombre+"</td>"
                                    +"<td id='txtFechaCreacion"+pos+"'class'='pl-4'>"+datosClubes.fecha_creacion+"</td>"
                                	+"<td>"
                                    +"<button type='button' id="+pos+" onclick='eliminar(this.id)' class='btn btn-outline-info btn-circle btn-lg btn-circle ml-2'><i class='fa fa-trash'></i> </button>"
									+"<button type='button' onclick='mostrarModal("+pos+")' class='btn btn-outline-info btn-circle btn-lg btn-circle ml-2'><i class='fa fa-edit'></i> </button>"
									+"</td></tr>"
$("#tabla_Clubes").append(opcion);
}

/* Eliminacion de un usuario
*hioal
* Elimina tanto graficamante como en la base de datos.
* La posicion determina el id de la fila
*
* @param en  Posicion en el array e id de fila
*/
function eliminar(pos){
	console.log(pos);
	$.ajax({
		url: 'php/eliminar_Clubes.php',
		method : 'POST',
		data : {
			dato : datosClubes[pos].ID_Club
		},
		success: function(respuesta) {
			console.log(respuesta); },
		error: function(respuesta){
			console.log(respuesta);},
		});
	$("txtID"+pos).remove();
}

/*
Modificacion del Club
*/
function guardarCambios(pos){
	console.log(pos);
	$.ajax({
			url: 'php/modificar_Club.php',
			method : 'POST',
			data : {
				nombre : $('#txtNombre').val(),
				dato : datosClubes[pos].ID_Club
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
  $('#txtNombre').val(datosClubes[pos].Nombre);
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