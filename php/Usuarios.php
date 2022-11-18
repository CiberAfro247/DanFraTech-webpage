<?php
class Usuario{
    private $identificacion;
	private $nombre;
	private $contactos;
	private $historial;
    private $nroMultas;
    private $telefono;
    private $mail;
    private $boolAdmin;
    private $cntPrestamos;

	public function __construct($identificacion,$nombre,$contactos,$historial,$nroMultas,$telefono,$mail,$boolAdmin,$cntPrestamos){
		$this->identificacion =$id;
		$this->nombre =$t;
        $this->contactos =$a;
		$this->historial=$h;
		$this->nroMultas=$nm;
        $this->telefono=$t;
        $this->mail=$m;
        $this->boolAdmin=$ba;
        $this->cntPrestamos=$cp; 
	}
	public function __ToString(){
		return 'identificacion: '.$this->id.'nombre: '.$this->n.'Contactos: '.$this->c. 'Historial: ' .$this->h. 'Numero Multas: ' .$this->nm. 'Telefono: ' .$this->t. 'Mail: ' .$this->mail. 'Bool Admin: ' .$this->ba. 'Cantidad Prestamos: ' .$this->cp. ;
	}
	
		
	public function setIdentificacion($id){
		$this->identificacion; = $id;
	}
	public function getIdentificacion(){
		return $this->identificacion;
	}
	
	public function setContactos($c){
		$this ->contactos = $c;
	}
	public function getContactos(){
		return $this ->contactos;
	}

	public function setNombre($n){
		$this ->nombre= $n;
	}
	public function getNombre(){
		return $this ->nombre;
	}
	public function setHistorial($h){
		$this ->historial= $h;
	}
	public function getHistorial($h){
		return $this ->historial=$h;
	}
	public function setNumeroMultas($nm){
		$this ->nroMultas = nm;
	}
	public function getNumeroMultas(){
		return $this ->nroMultas;
	}
	
	public function setTelefono($t){
		$this->telefono; = $t;
	}
	public function getTelofono(){
		return $this->telefono;
	}
	
	public function setmail($m){
		$this->mail; = $m;
	}
	public function getmail(){
		return $this->mail;
	}
		
	public function setboolAdmin($ba){
		$this->boolAdmin; = $ba;
	}
	public function getboolAdmin(){
		return $this->boolAdmin;
	}
		
	public function setCntPrestamos($cp){
		$this->cntPrestamos; = $cp;
	}
	public function getCntPrestamos(){
		return $this->getCntPrestamos;
	}

}