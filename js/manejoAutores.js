
datoAutores = []; //Array global para manejo de usuarios	
async function traerAutores() {
	const response = await fetch('php/traerAutores.php',
	{
	method: 'GET',
	});
	const res = await response.json();
	return res;
}
 traerAutores().then(dato => {
	for (var i = 0; i < dato.length; i++) {
		opcionNueva(dato[i], i);
		}
		datosAutores = dato;
});
/**
* Agrega una opcion al combobox
* 
*
* @param integer pos Posicion en el array 
* @param array infoAutores
*/
function opcionNueva(infoAutores, pos){
	var opcion = "<option id="+pos+
								+"id='txtNombre"+pos+"value'>"+infoAutores.Nombre_autor+"</option>"
	$("#cmbAutores").append(opcion);
}