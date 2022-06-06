<?php
require Usuarios;
require Libros
class Clubes_de_Lectura{
    private $id_Club;
	private $nombre;
	private $fecha_Creacion;
	private $historial;
    private $integrantes;
    private $primeralectura;

	public function __construct($identificacion,$nombre,$contactos,$historial,$integrantes,$primeralectura){
		$this->id_Club =$id;
		$this->nombre =$n;
        $this->fecha_Creacion =$fc;
		$this->historial=$h;
        $this->integrantes=$i;
        $this->primeralectura=$prl;
	}
	public function __ToString(){
		return 'ID del Club: '.$this->id.'nombre: '.$this->n.'Fecha de Creacion: '.$this->fc. 'Historial: ' .$this->h. 'Integrantes: ' .$this->i. 'Primera Lectura: ' .$this->prl. ;
	}

		
	public function setIdentificacion($id){
		$this->identificacion; = $id;
	}
	public function getIdentificacion(){
		return $this->identificacion;
	}
	
	public function setNombre($n){
		$this ->nombre = $n;
	}
	public function getNombre(){
		return $this ->nombre;
	}

	public function setFecha_Creacion($fc){
		$this ->fc= $fc;
	}
	public function getFecha_Creacion(){
		return $this ->fecha_Creacion;
	}
	public function setHistorial($h){
		$this ->historial= $h;
	}
	public function getHistorial($h){
		return $this ->historial=$h;
	}
	public function setIntegrantes($i){
		$this ->intregrantes = $i;
	}
	public function getintegrantes(){
		return $this ->integrantes;
	}
	
	public function setPrimeraLectura($prl){
		$this->primeralectura; = $prl;
	}
	public function getPrimeraLectura(){
		return $this->primeralectura;
	}
}