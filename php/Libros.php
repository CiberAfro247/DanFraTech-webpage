<?php
class Libros{
    private $isbn;
	private $titulo;
	private $autor;
	private $formatosDisponibles;
    private $genero;
    private $sinopsis;
    private $idiomasDisponibles;
    private $fechaPublicacion;
    private $cntPrestamos;

	public function __construct($isbn,$titulo,$autor,$formatosDisponibles,$genero,$sinopsis,$idiomasDisponibles,$fechaPublicacion,$cntPrestamos){
		$this->isbn =$is;
		$this->titulo =$t;
        $this->autor =$a;
		$this->formatosDisponibles=$fd;
		$this->genero=$g;
        $this->sinopsis=$s;
        $this->idiomasDisponibles=$id;
        $this->fechaPublicacion=$fp;
        $this->cntPrestamos=$cp; 
	}
	public function __ToString(){
		return 'ISBN: '.$this->is.'Titulo: '.$this->t.'Formatos Disponibles: '.$this->fd. 'Autor: ' .$this->a. 'Genero: ' .$this->g. 'Sinopsis: ' .$this->s. 'Idiomas Disponibles: ' .$this->id. 'Fecha Publicacion: ' .$this->fp. 'Cantidad Prestamos: ' .$this->cp. ;
	}
	
		
	public function setIsbn($is){
		$this->isbn; = $is;
	}
	public function getIsbn(){
		return $this->isbn;
	}
	
	public function setAutor($a){
		$this ->autor = $a;
	}
	public function getAutor(){
		return $this ->autor;
	}

	public function setTitulo($t){
		$this ->titulo = $t;
	}
	public function getTitulo(){
		return $this ->Titulo;
	}
	public function setFormatosDisponibles($fd){
		$this ->formatosDisponibles= $fd;
	}
	public function getFormatosDisponibles($fd){
		return $this ->formatosDisponibles=$fd;
	}
	public function setGenero($g){
		$this ->genero = $g
	}
	public function getGenero(){
		return $this ->genero;
	}
	
	public function setSinopsis($s){
		$this->sinopsis; = $s;
	}
	public function getSinopsis(){
		return $this->sinopsis;
	}
	
	public function setIdiomasDisponibles($id){
		$this->idiomasDisponibles; = $id;
	}
	public function getIdiomasDisponibles(){
		return $this->idiomasDisponibles;
	}
		
	public function setFechaPublicacion($fp){
		$this->fechaPublicacion; = $fp;
	}
	public function getFechaPublicacion(){
		return $this->fechaPublicacion;
	}
		
	public function setCntPrestamos($cp){
		$this->cntPrestamos; = $cp;
	}
	public function getCntPrestamos(){
		return $this->getCntPrestamos;
	}

}