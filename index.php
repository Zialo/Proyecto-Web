
<?php
	session_start();

	include 'vista.php';
	include 'modelo.php';
    
	$accion = "";
	//Carga variables
	if (isset($_GET["accion"])) {

		$accion = $_GET["accion"];
	} elseif (isset ($_POST["accion"])) {
		$accion = $_POST["accion"];
	}

	if (isset($_GET["personajeValue"])) {
		$personajeValue = $_GET["personajeValue"];
	} elseif (isset ($_POST["personajeValue"])) {
		$personajeValue = $_POST["personajeValue"];
	}

	if (isset($_SESSION["nick"])==false){
		
		$_SESSION["nick"]="";
		$_SESSION["password"]="";
		$_SESSION["estado"]="";
	}
	$valor = -1;

	
	//Funciones iguales para todos
	
	if ($accion == "listadopersonajes") {

		$listaPersonajes = new ListaPersonajes();
		$vista = new Vista();
		$vista-> print_lista_personajes($listaPersonajes->get_lista_personajes());
	}
	    
	
	if ($accion == "infopersonaje") {
		
		$personajeaux = new ListaPersonajes();
		$personaje = $personajeaux->get_personaje($personajeValue);
		$vista = new Vista();
		$path_big = $personaje->get_path_personaje_big();
		$path_mid = $personaje->get_path_personaje_mid();
		$vista-> print_vista_personaje($personaje->nombre_personaje, $personaje->rol_personaje, $personaje->descripcion_personaje,$path_big, $path_mid);
	}
	
	if ($accion == "listadoarmas") {
		$listaArmas = new ListaArmas();
		$vista = new Vista();
		$vista-> print_lista_armas($listaArmas->get_lista_armas());
	}
	
	if ($accion == "listadomapas") {
		$listaMapas= new ListaMapas();
		$vista = new Vista();
		$vista-> print_lista_mapas($listaMapas->get_lista_mapas());
	}
	
	    
	/**************************
	Comprobar usuario
		si 1-->Usuario registrado
		si -1--> no usuario registrado
	*************************/
	$usuario = new Usuario();
	$valor = $usuario-> comprobarusuariosesion();
	
	if($valor == 1){
		
		if (strlen($accion)==0){
			$vista = new Vista();
			$vista->vcargarinicio();

		}
		
		if ($accion == "listadocomentarios"){
			$listaComentarios= new ListaComentarios();
			$vista = new Vista();
			$vista-> print_lista_comentarios_con_comentar($listaComentarios->get_lista_comentarios());
		}
		
		if ($accion == "comentar"){
			
			if (isset($_GET["id"])) {
				$id = $_GET["id"];
			} elseif (isset ($_POST["id"])) {
				$id = $_POST["id"];
			}
			
			switch ($id) {
				case '1':
					$vista = new Vista();
					$vista-> vistacomentar();
					break;
				case '2':
					$listaComentarios= new ListaComentarios();
					$comentario = $listaComentarios->set_comentario();
					
					if ($comentario = 1){
						$listaComentarios1= new ListaComentarios();
						$vista = new Vista();
						$vista-> print_lista_comentarios_con_comentar($listaComentarios1->get_lista_comentarios());
					} else {
						$mensaje = "Error al insertar el comentario";
						echo "<script type='text/javascript'>alert('$mensaje');</script>";
					}
					break;
			}	
		}
		
		if ($accion == "login") {
			
			if (isset($_GET["id"])) {
				$id = $_GET["id"];
			} elseif (isset ($_POST["id"])) {
				$id = $_POST["id"];
			}
			switch ($id) {
				case '1':
					$usuario->logout();
					
					$vista = new Vista();
					$vista->vcargarinicio_conlogin();
					break;
			 
			}
						
		}
		
		
	}else {
		
		if (strlen($accion)==0){
			$vista = new Vista();
			$vista->vcargarinicio_conlogin();

		}
		
		if ($accion == "listadocomentarios"){
			$listaComentarios= new ListaComentarios();
			$vista = new Vista();
			$vista-> print_lista_comentarios($listaComentarios->get_lista_comentarios());
		}
		
		if ($accion == "login") {
			
			if (isset($_GET["id"])) {
				$id = $_GET["id"];
			} elseif (isset ($_POST["id"])) {
				$id = $_POST["id"];
			}
			switch ($id) {
				case '1':
					$vista = new Vista();
					$vista->vistalogin();
					break;
				case '2':
					$usuario = new Usuario();
					$usuarioaux = $usuario->login();
					
					if ($usuarioaux == 1){
						$vista = new Vista();
						$vista->vcargarinicio();
					} else if ($usuarioaux == -3) {
						$mensaje = "Error al iniciar sesion. Contraseña erronea";
						echo "<script type='text/javascript'>alert('$mensaje');</script>";
						$vista = new Vista();
						$vista->vistalogin();
					} else if ($usuarioaux == -2) {
						$mensaje = "Error al iniciar sesion. Nick erroneo";
						echo "<script type='text/javascript'>alert('$mensaje');</script>";
						$vista = new Vista();
						$vista->vistalogin();
					}
					
					break;
			}
		}

		if ($accion == "registrar") {
			if (isset($_GET["id"])) {
				$id = $_GET["id"];
			} elseif (isset ($_POST["id"])) {
				$id = $_POST["id"];
			}
			switch ($id) {
				case '1':
					$vista = new Vista();
					$vista->vistaregistrar();
					break;
				case '2':
					$usuario = new Usuario();
					$usuarioaux = $usuario->registrar();
					
					if ($usuarioaux == 1){
						$vista = new Vista();
						$vista->vcargarinicio();
					} else if ($usuarioaux == -2) {
						$mensaje = "Usuario ya registrado";
						echo "<script type='text/javascript'>alert('$mensaje');</script>";
					} else {
						$mensaje = "Algo la has liado";
						echo "<script type='text/javascript'>alert('$mensaje');</script>";
					}
					
					break;
			}
		}
	
	}
?>
