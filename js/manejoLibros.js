datosLibros = [];

async function traerLibros(){
	const response = await fetch('../php/traerLibros.php',
	{
	method: 'GET',
	});
	
	// waits until the request completes...
	const res = await response.json();
	return res;}
    traerLibros().then(dato => {
		for (var i = 0; i < dato.length; i++) {
            opcionNueva(dato[i], i);
            }
            datosLibros = dato;
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
 

function opcionNueva(datosLibros, pos){

        var opcion = "<tr id="+pos+">"
                                    +"<td id='txtISBN"+pos+"' class='pl-4'>"+datosLibros.ISBN+"</td>"
                                    +"<td id='txtTitulo"+pos+"'class'='pl-4'>"+datosLibros.Nombre+"</td>"
                                    +"<td id='txtGenero"+pos+"'class'='pl-4'>"+datosLibros.Genero+"</td>"
                                    +"<td id='txtSinopsis"+pos+"'class'='pl-4'>"+datosLibros.Sinopsis+"</td>"
                                    +"<td id='txtTipo"+pos+"'class'='pl-4'>"+datosLibros.Tipo+"</td>"
                                    +"<td id='txtFecha"+pos+"'class'='pl-4'>"+datosLibros.Fecha_publicacion+"</td>"
                                    +"<td id='txtIdioma"+pos+"'class'='pl-4'>"+datosLibros.Idioma+"</td>"
									+"<td>"
                                    +"<button type='button' id="+pos+" onclick='eliminar(this.id)' class='btn btn-outline-info btn-circle btn-lg btn-circle ml-2'><i class='fa fa-trash'></i> </button>"
									+"<button type='button' onclick='mostrarModal("+pos+")' class='btn btn-outline-info btn-circle btn-lg btn-circle ml-2'><i class='fa fa-edit'></i> </button>"
									+"</td></tr>"
$("#tabla_Libros").append(opcion);
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
		url: '../php/eliminar_Libro.php',
		method : 'POST',
		data : {
			dato : datosLibros[pos].ISBN
		},
		success: function(respuesta) {
			console.log(respuesta); },
		error: function(respuesta){
			console.log(respuesta);},
		});
	$("id"+pos).remove();
}

/*
Modificacion del Autor
*/
function guardarCambios(pos){
	console.log(pos);
	$.ajax({
			url: '../php/modificar_Libro.php',
			method : 'POST',
			data : {
				genero : $('#txtGenero').val(),
				idioma : $('#txtIdioma').val(),
				dato : datosLibros[pos].ISBN
				},
			success: function(respuesta) {
				console.log(respuesta); },
			error: function(respuesta) {
				console.log(respuesta); },
			});
	
	$("#txtGenero"+pos).html($('#txtGenero').val());
	$("#txtIdioma"+pos).html($('#txtIdioma').val());
	cerrarModal();
}
/*##############   MODAL  ############## */
function mostrarModal(pos) {
  $('#modifModal').css("display", "block");
  $('#txtGenero').val(datosLibros[pos].Genero);
  $('#txtIdioma').val(datosLibros[pos].Idioma);
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
