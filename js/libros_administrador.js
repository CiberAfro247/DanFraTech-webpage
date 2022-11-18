
libros = [];

async function traerLibrosTerror() {
	const response = await fetch('../php/libros_terror.php',
	{
	method: 'GET',
	});
	const res = await response.json();
	return res;
}

traerLibrosTerror().then(dato => {
	for (var i = 0; i < dato.length; i++) {
		filaNuevaTerror(dato[i], i);
		}
});

function filaNuevaTerror(infoLibro, pos){
	var fila = "<div class='product' id='product1_" + pos + "'><a href='../php/vista_libro_administrador.php?isbn=" + infoLibro.ISBN + "'>" +
	"<img class='book' height='200px' src='" + infoLibro.Imagen + "'></a></div>"
	$("#carrusel_1").append(fila);
	
}

async function traerLibrosFantasia() {
	const response = await fetch('../php/libros_fantasia.php',
	{
	method: 'GET',
	});
	const res = await response.json();
	return res;
}

traerLibrosFantasia().then(dato => {
	for (var i = 0; i < dato.length; i++) {
		filaNuevaFantasia(dato[i], i);
		}
});

function filaNuevaFantasia(infoLibro, pos){
	var fila = "<div class='product' id='product2_" + pos + "'><a href='../php/vista_libro_administrador.php?isbn=" + infoLibro.ISBN + "'>" +
	"<img class='book' height='200px' src='" + infoLibro.Imagen + "'></a></div>"
	$("#carrusel_2").append(fila);
	
}

async function traerLibrosRomance() {
	const response = await fetch('../php/libros_romance.php',
	{
	method: 'GET',
	});
	const res = await response.json();
	return res;
}

traerLibrosRomance().then(dato => {
	for (var i = 0; i < dato.length; i++) {
		filaNuevaRomance(dato[i], i);
		}
});

function filaNuevaRomance(infoLibro, pos){
	var fila = "<div class='product' id='product3_" + pos + "'><a href='../php/vista_libro_administrador.php?isbn=" + infoLibro.ISBN + "'>" +
	"<img class='book' height='200px' src='" + infoLibro.Imagen + "'></a></div>"
	$("#carrusel_3").append(fila);
	
}

async function traerLibrosCienciaFiccion() {
	const response = await fetch('../php/libros_ciencia_ficcion.php',
	{
	method: 'GET',
	});
	const res = await response.json();
	return res;
}

traerLibrosCienciaFiccion().then(dato => {
	for (var i = 0; i < dato.length; i++) {
		filaNuevaCienciaFiccion(dato[i], i);
		}
});

function filaNuevaCienciaFiccion(infoLibro, pos){
	var fila = "<div class='product' id='product4_" + pos + "'><a href='../php/vista_libro_administrador.php?isbn=" + infoLibro.ISBN + "'>" +
	"<img class='book' height='200px' src='" + infoLibro.Imagen + "'></a></div>"
	$("#carrusel_4").append(fila);
	
}