<?php
	include 'modelo.php';
	include 'vista.php';
    
	$accion = "";
	//Carga variables
	if (isset($_GET["accion"])) {

		$accion = $_GET["accion"];
	} elseif (isset ($_POST["accion"])) {
		$accion = $_POST["accion"];
	}

	if (isset($_GET["id"])) {
		$id = $_GET["id"];
	} elseif (isset ($_POST["id"])) {
		$id = $_POST["id"];
	}
	
	if (strlen($accion)==0){
			$vista = new Vista();
			$vista->vcargarinicio();

	}
?>
