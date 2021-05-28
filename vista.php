<?php
	
	class Vista {
		
		/*
		private $navItems; //Todas mis vistas van a tener un menú
		public function __construct($navItems){
			$this->navItems = $navItems;
		}*/
		public function __construct(){
		}
		
		public function printFullHTML(){
			$content = $this->getHead();
			$content .= $this->getMain();
			echo $content;   
		}
		
		public function print_vista_personaje($nombre_personaje, $rol_personaje, $descripcion_personaje,$path_big, $path_mid){
			
			$menu = file_get_contents("menu_superior.html");
			
			$vista = file_get_contents("personaje_individual.html");
			$vista = str_replace("##nombre##", $nombre_personaje, $vista);
			$vista = str_replace("##tipo##", $rol_personaje, $vista);
			$vista = str_replace("##descripcion##", $descripcion_personaje, $vista);
			$vista = str_replace("##fotoGrande##", $path_big, $vista);
			$vista = str_replace("##fotoMid##", $path_mid, $vista);
			
			echo $menu . $vista;
		}
		
		public function vcargarinicio(){
			
			$menu = file_get_contents("menu_superior.html");
			
			$vista = file_get_contents("principal.html");
			
			echo $menu . $vista;
		}
		
		public function vcargarinicio_conlogin(){
			
			$menu = file_get_contents("menu_superior.html");
			
			$vista = file_get_contents("principal_conlogin.html");
			
			echo $menu . $vista;
		}
		
		public function print_lista_personajes($listaPersonajes){
			
			$menu = file_get_contents("menu_superior.html");
			
			$vista = file_get_contents("personajes.html");
			
			echo $menu . $vista;
		}
		
		public function print_lista_armas($listaArmas){
			
			$menu = file_get_contents("menu_superior.html");
			
			$vista = file_get_contents("armas.html");
			$trozos = explode("##arma##", $vista);
			
			
			$aux ="";
			$cuerpo = "";
			foreach ($listaArmas as $arma){
				$aux = $trozos[1];
				
				$aux = str_replace("##nombre##", $arma->nombre_arma, $aux);
				$aux = str_replace("##tipo##", $arma->tipo_arma, $aux);
				$aux = str_replace("##precio##", $arma->precio_arma, $aux);
				$aux = str_replace("##descripcion##", $arma->descripcion_arma, $aux);
				$aux = str_replace("##imagen##", $arma->get_path_arma(), $aux);
				
				$cuerpo .= $aux;
			}
			
			
			echo $menu . $trozos[0] . $cuerpo . $trozos[2];
		}
		
		public function print_lista_mapas($listaMapas){
			
			$menu = file_get_contents("menu_superior.html");
			
			$vista = file_get_contents("mapas.html");
			$trozos = explode("##mapa##", $vista);
			
			
			$aux ="";
			$cuerpo = "";
			foreach ($listaMapas as $mapa){
				$aux = $trozos[1];
				
				$aux = str_replace("##nombre##", $mapa->nombre_mapa, $aux);
				$aux = str_replace("##descripcion##", $mapa->descripcion_mapa, $aux);
				$aux = str_replace("##imagen##", $mapa->get_path_mapa(), $aux);
				
				$cuerpo .= $aux;
			}
			
			
			echo $menu . $trozos[0] . $cuerpo . $trozos[2];
		}
		
		public function print_lista_comentarios($listaComentarios){
			
			$menu = file_get_contents("menu_superior.html");
			
			$vista = file_get_contents("comentarios.html");
			$trozos = explode("##comentario##", $vista);
			
			
			$aux ="";
			$cuerpo = "";
			foreach ($listaComentarios as $comentario){
				$aux = $trozos[1];
				
				$aux = str_replace("##usuario##", $comentario->nick_usuario, $aux);
				$aux = str_replace("##texto##", $comentario->texto_comentario, $aux);
				
				$cuerpo .= $aux;
			}
			
			
			echo $menu . $trozos[0] . $cuerpo . $trozos[2];
		}
		
		public function print_lista_comentarios_con_comentar($listaComentarios){
			
			$menu = file_get_contents("menu_superior.html");
			
			$vista = file_get_contents("comentarios_concomentar.html");
			$trozos = explode("##comentario##", $vista);
			
			
			$aux ="";
			$cuerpo = "";
			foreach ($listaComentarios as $comentario){
				$aux = $trozos[1];
				
				$aux = str_replace("##usuario##", $comentario->nick_usuario, $aux);
				$aux = str_replace("##texto##", $comentario->texto_comentario, $aux);
				
				$cuerpo .= $aux;
			}
			
			
			echo $menu . $trozos[0] . $cuerpo . $trozos[2];
		}
		
		public function vistacomentar(){
			$menu = file_get_contents("menu_superior.html");
			
			$vista = file_get_contents("comentar.html");
			
			echo $menu . $vista;
		}
		
		public function vistaregistrar(){
			$menu = file_get_contents("menu_superior.html");
			
			$vista = file_get_contents("registrar.html");
			
			echo $menu . $vista;
		}
		
		public function vistalogin(){
			$menu = file_get_contents("menu_superior.html");
			
			$vista = file_get_contents("login.html");
			
			echo $menu . $vista;
		}
	}
?>
