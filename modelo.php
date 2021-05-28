<?php
	
	class Model {
		
		public function __construct(){
			require_once 'connection.php'; //Solicita el import y si ya está importado no lo vuelve a importar
		}
	}

	class Personaje {
		
		public $id_personaje;
		public $nombre_personaje;
		public $rol_personaje;
		public $descripcion_personaje;
		
		public function __construct($id_personaje, $nombre_personaje, $rol_personaje, $descripcion_personaje ) {
			
			$this->id_personaje = $id_personaje;
			$this->nombre_personaje = $nombre_personaje;
			$this->rol_personaje = $rol_personaje;
			$this->descripcion_personaje = $descripcion_personaje;
		}
		public function get_path_personaje_big() {
			//Si está path_personajes vacío, dar una imagen genérica
			$path_personaje = "images/Personajes/" . $this->id_personaje . "/big.jpg";
			return $path_personaje ; 
		}
		public function get_path_personaje_mid() {
			//Si está path_personajes vacío, dar una imagen genérica
			$path_personaje = "images/Personajes/" . $this->id_personaje . "/mid.png";
			return $path_personaje ; 
		}
		//Faltarían funciones de set y delete, que hemos decidido no implementarlas
	}
	
	class Arma {
		
		public $id_arma = "id_arma";
		public $nombre_arma = "nombre_arma";
		public $tipo_arma = "tipo_arma";
		public $descripcion_arma = "descripcion_personaje";
		public $precio_arma = "precio_arma";
		
		public function __construct($id_arma, $nombre_arma, $tipo_arma, $descripcion_arma, $precio_arma ) {
			
			$this->id_arma = $id_arma;
			$this->nombre_arma = $nombre_arma;
			$this->tipo_arma = $tipo_arma;
			$this->descripcion_arma = $descripcion_arma;
			$this->precio_arma = $precio_arma;
		}
		
		public function get_path_arma() {
			$path_arma = "images/Armas/" . $this->id_arma . ".png";
			return $path_arma; 
		}
		
		//Faltarían funciones de set y delete, que hemos decidido no implementarlas
	}

	class Mapa {
		
		public $id_mapa = "id_mapa";
		public $nombre_mapa = "nombre_mapa";
		public $descripcion_mapa = "descripcion_mapa";
		
		public function __construct($id_mapa, $nombre_mapa, $descripcion_mapa) {
			
			$this->id_mapa = $id_mapa;
			$this->nombre_mapa = $nombre_mapa;
			$this->descripcion_mapa = $descripcion_mapa;
		}
		
		public function get_path_mapa() {
			$path_arma = "images/Mapas/" . $this->id_mapa . ".png";
			return $path_arma; 
		}
		
		//Faltarían funciones de set y delete, que hemos decidido no implementarlas
	}
	
	class Habilidad {
		
		public $id_personaje = "id_personaje";
		public $numero_habilidad = "numero_habilidad";
		public $nombre_habilidad = "nombre_habilidad";
		public $descripcion_habilidad = "descripcion_habilidad";
		public $precio_habilidad = "precio_habilidad";
		
		public function __construct($id_personaje, $numero_habilidad, $nombre_habilidad, $descripcion_habilidad, $precio_habilidad ) {
			
			$this->id_personaje = $id_personaje;
			$this->numero_habilidad = $numero_habilidad;
			$this->nombre_habilidad = $nombre_habilidad;
			$this->descripcion_habilidad = $descripcion_habilidad;
			$this->precio_habilidad = $precio_habilidad;
		}
		
		//Faltarían funciones de set y delete, que hemos decidido no implementarlas
	}
	
	class Comentario {
		
		public $id_comentario = "id_comentario";
		public $nick_usuario = "nick_usuario";
		public $texto_comentario = "texto_comentario";
		
		public function __construct($id_comentario, $nick_usuario, $texto_comentario ) {
			
			$this->id_comentario = $id_comentario;
			$this->nick_usuario = $nick_usuario;
			$this->texto_comentario = $texto_comentario;
		}
		
		//Faltarían funciones de set y delete, que hemos decidido no implementarlas
	}
	
	class ListaPersonajes extends Model{
		
		public function get_lista_personajes(){
			
			$listaPersonajes = array();
			
			$conn = Database::connect();
			$query = "SELECT * FROM PERSONAJES";
			
			
			if ($res = $conn->query("$query")) {
				while ($row = $res->fetch_assoc()) {
					array_push($listaPersonajes, new Personaje($row["id_personajes"], $row["nombre_personajes"], $row["rol_personajes"], $row["descripcion_personajes"]));
				}
				$res->free();
				return $listaPersonajes;
			}
		}
		public function get_personaje($personajeValue){
			
			$conn = Database::connect();
			$query = "SELECT * FROM PERSONAJES WHERE id_personajes=". $personajeValue;
			
			if ($res = $conn->query("$query")) {
				if ($row = $res->fetch_assoc()) {
					return new Personaje($row["id_personajes"], $row["nombre_personajes"], $row["rol_personajes"], $row["descripcion_personajes"]);
				}
			}
		}
		
		
	}
	
	class ListaArmas extends Model{
		
		public function get_lista_armas(){
			
			$listaArmas = array();
			
			$conn = Database::connect();
			$query = "SELECT * FROM ARMAS";
			
			if ($res = $conn->query("$query")) {
				while ($row = $res->fetch_assoc()) {
					array_push($listaArmas, new Arma($row["id_arma"], $row["nombre_arma"], $row["tipo_arma"], $row["descripcion_arma"], $row["precio_arma"]));
				}
				$res->free();
				return $listaArmas;
			}
		}
	}
	
	class ListaMapas extends Model{
		
		public function get_lista_mapas(){
			
			$listaMapas = array();
			
			$conn = Database::connect();
			$query = "SELECT * FROM MAPAS";
			
			if ($res = $conn->query("$query")) {
				while ($row = $res->fetch_assoc()) {
					array_push($listaMapas, new Mapa($row["id_mapa"], $row["nombre_mapa"],$row["descripcion_mapa"]));
				}
				$res->free();
				return $listaMapas;
			}
		}
	}
	class ListaHabilidades extends Model{
		
		public function get_lista_habilidades(){
			
			$listaHabilidades = array();
			
			$conn = Database::connect();
			$query = "SELECT * FROM HABILIDADES";
			
			if ($res = $conn->query("$query")) {
				while ($row = $res->fetch_assoc()) {
					array_push($listaHabilidades, new Habilidad($row["id_habilidad"], $row["numero_habilidad"], $row["nombre_habilidad"], $row["descripcion_habilidad"], $row["precio_habilidad"]));
				}
				$res->free();
				return $listaHabilidades;
			}
		}
	}
	class ListaComentarios extends Model{
		
		public function get_lista_comentarios(){
			
			$listaComentarios = array();
			
			$conn = Database::connect();
			$query = "SELECT * FROM COMENTARIOS_FORO";
			
			if ($res = $conn->query("$query")) {
				while ($row = $res->fetch_assoc()) {
					array_push($listaComentarios, new Comentario($row["Id_comentario"], $row["nick_usuarios"], $row["texto_comentario"]));
				}
				$res->free();
				return $listaComentarios;
			}
		}
		
		public function set_comentario(){
			$conn = Database::connect();
			
			$usuario = $_SESSION["nick"];
			$texto = $_POST["Texto"];
			
			$consulta = "INSERT INTO COMENTARIOS_FORO (nick_usuarios, texto_comentario) VALUES ('$usuario', '$texto')";
			
			
			if ($resultado = $conn->query($consulta)) {
				return 1;
			} else {
				return -1;
			}
		}
	}
	
	class Usuario extends Model{
		
		public function comprobarusuariosesion(){
			
			$conn = Database::connect();
			
			$nick = $_SESSION["nick"];
			$password = $_SESSION["password"];
			$consulta = "select * from USUARIOS where nick_usuarios = '$nick'";
			
			if ($resultado = $conn->query($consulta)) {
				if ($datos = $resultado->fetch_assoc()) {
					if ($password == $datos["pass_usuarios"]){
						return 1;
					}else{
						return -3;
					}
				}else{
					return -2;
				}
			} else {
				return -1;
			}
			
		}
		
		public function logout(){

			unset($_SESSION["nick"]);
			unset($_SESSION["password"]);
			session_destroy();

			header("Location: index.php");
			return 1;
		}
		
		public function login(){
			
			$conn = Database::connect();
			
			$nick = $_POST["Nick"];
			$password = md5($_POST["Password"]);
	  
			$consulta = "select * from USUARIOS where nick_usuarios = '$nick'";
			
			if ($resultado = $conn->query($consulta)) {
				if ($datos = $resultado->fetch_assoc()) {
					if ($password == $datos["pass_usuarios"]){
						$_SESSION["nick"] = $nick;
						$_SESSION["password"] = $password;
						
						return 1;
					}else{
						return -3;
					}
				}else{
					return -2;
				}
			} else {
				return -1;
			}
		}
		
		public function registrar(){

			$conn = Database::connect();
			
			$nick = $_POST["Nick"];
			$nombre = $_POST["Nombre"];
			$ape1 = $_POST["Ape1"];
			$ape2 = $_POST["Ape2"];
			$password = $_POST["Password"];
	  
			$consulta = "select nick_usuarios from USUARIOS where nick_usuarios = '$nick'";
			
			if ($resultado = $conn->query($consulta)) {
				if ($datos = $resultado->fetch_assoc()) {
					return -2;
				}
			} else {
				return -1;
			}
			$password_cod = md5($password);
			$consulta1 = "insert into USUARIOS (nombre_usuarios, ape1_usuarios, ape2_usuarios, nick_usuarios, pass_usuarios) values ('$nombre','$ape1','$ape2','$nick','$password_cod')";
			
			if ($resultado = $conn->query($consulta1)) {
				$_SESSION["nick"] = $nick;
				$_SESSION["password"] = $password_cod;
				return 1;
			} else {
				return -1;
			}
		}
	}
?>
