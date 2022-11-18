
libros = [];

async function traerClubs() {
	const response = await fetch('../php/clubs.php',
	{
	method: 'GET',
	});
	const res = await response.json();
	return res;
}

traerClubs().then(dato => {
	for (var i = 0; i < dato.length; i++) {
		filaNueva(dato[i], i);
		otros(dato[i], i);
		}
});

function filaNueva(infoClub, pos){
	var fila = "<div class='productClub' id='product_" + pos + "'>" + 
					"<a href='club_de_lectura_administrador.php?id_club=" + infoClub.ID_Club + "' class='a'><h5 align='left'>" + infoClub.Nombre + "</h5></a>" +
					"<p class='p' align='left'>Descripcion:</p>" +
					"<p align='left'>" + infoClub.Descripcion + "</p>" +
				"</div>"
	$("#carrusel").append(fila);
}

function otros(infoClub, pos){
	var filaN = "<div class='row'>" +
					"<div class='col-12 art'>" + 
						"<a href='club_de_lectura_administrador.php?id_club=" + infoClub.ID_Club + "' class='a'><h5 align='left'>" + infoClub.Nombre + "</h5></a>" + 
						"<button class='button'>Unirse</button>" + 
						"<p>" + infoClub.Descripcion + "</p>" +
					"</div>" + 
				"</div>" +
				"<br>"
	$("#otros").append(filaN);
}

