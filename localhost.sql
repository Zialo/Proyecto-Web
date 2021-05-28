-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u9
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 28-05-2021 a las 12:15:03
-- Versión del servidor: 5.5.62-0+deb8u1
-- Versión de PHP: 5.6.40-0+deb8u12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `iw21_db_ziah`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ARMAS`
--

CREATE TABLE IF NOT EXISTS `ARMAS` (
`id_arma` int(11) NOT NULL,
  `nombre_arma` varchar(20) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `tipo_arma` varchar(20) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `descripcion_arma` varchar(400) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `precio_arma` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `ARMAS`
--

INSERT INTO `ARMAS` (`id_arma`, `nombre_arma`, `tipo_arma`, `descripcion_arma`, `precio_arma`) VALUES
(1, 'Classic', 'Pistola', 'Es la pistola predeterminada del juego, con ella se comienza la partida. Es bastante estándar y mata de dos balas en la cabeza.', 200),
(2, 'Shorty', 'Pistola', 'Es una escopeta recortada. Útil en distancia muy cortas, quizás para esperar a algún enemigo en algún recoveco.', 200),
(3, 'Frenzy', 'Pistola', 'Es una pistola automática y tiene un cargador de 13 balas. Es más complicada de usar por el retroceso.', 400),
(4, 'Ghost', 'Pistola', 'Es muy parecida a la conocida USP-S del CSGO. Una pistola bastante completa con un cargador de 15 balas.', 800),
(5, 'Sheriff', 'Pistola', 'Este arma es el revolver del videojuego, y es muy parecida a la Desert Eagle. Tiene un cargador de 6 balas y mata de un disparo en la cabeza.', 1000),
(6, 'Stinger', 'SMGS', 'No ha tenido muy buen feedback en la versión Alpha. Tiene mucha cadencia con un retroceso bastante difícil de controlar. Además, no tiene mucho daño.', 1000),
(7, 'Spectre', 'SMGS', 'Un SMG mucho más completo que viene con Silenciador. Es el equivalente al MP5 en el Counter Strike. A priori, el mejor subfusil del juego.', 1600),
(8, 'Bucky', 'Escopetas', 'Es una escopeta semiautomática que no tiene mucha cadencia, ya que después de cada disparo tiene que soltar el cartucho, pero muy buena a distancias cortas.', 900),
(9, 'Judge', 'Escopetas', 'A diferencia de la anterior, es una escopeta automática. Es menos precisa que la Bucky, pero con más cadencia.', 1500),
(10, 'Bulldog', 'Rifles', 'Es un rifle de ráfagas. Cada ráfaga dispara 3 balas. Tiene un cargador de 24 proyectiles.', 2100),
(11, 'Guardian', 'Rifles', 'Es un arma semiautomática con un poco más de daño que los demás rifles. No tiene mucha cadencia y funciona mejor en medias – largas distancias. Tiene un cargador de 12 balas.', 2800),
(12, 'Phantom', 'Rifles', 'Es una carabina que viene con el silenciador incorporado. No tiene mira, y es bastante completa. Se asemeja a la M4 del Counter Strike.', 2900),
(13, 'Vandal', 'Rifles', 'Es muy parecida a la AK47 del CSGO. Viene con una mira incorporada. Tiene un cargador de 25 balas, es un arma muy completa y muy versátil. Es una de las mejores armas de Valorant.', 3200),
(14, 'Marshal', 'Sniper', 'Es un sniper que quita 100 de vida y mata de un disparo en la cabeza. En caso de que el enemigo no lleve chaleco también mataría de un tiro. Más fácil de usar que el Operator.', 1100),
(15, 'Operator', 'Sniper', 'Es el AWP de Valorant. Es complicado de usar pero mata de un disparo en cualquier parte del cuerpo. Tiene un cargador de 5 balas.', 4500),
(16, 'Ares', 'Pesadas', 'Ametralladora pesada muy precisa. Con muy poco retroceso e infinidad de balas.', 1700),
(17, 'Odin', 'Pesadas', 'Arma pesada extremadamente complicada de usar. Capaz de lo peor y de lo mejor. Poca movilidad pero gran cargador.', 3500),
(18, 'Cuchillo', 'Arma blanca', 'Cuchillo para correr mas rápido. Preciso, sigiloso y mortal. ', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `COMENTARIOS`
--

CREATE TABLE IF NOT EXISTS `COMENTARIOS` (
`id_comentarios` int(11) NOT NULL,
  `id_usuarios` int(11) NOT NULL,
  `texto_comentario` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `COMENTARIOS_FORO`
--

CREATE TABLE IF NOT EXISTS `COMENTARIOS_FORO` (
`Id_comentario` int(11) NOT NULL,
  `nick_usuarios` varchar(100) NOT NULL,
  `texto_comentario` varchar(300) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `COMENTARIOS_FORO`
--

INSERT INTO `COMENTARIOS_FORO` (`Id_comentario`, `nick_usuarios`, `texto_comentario`) VALUES
(1, 'mikelaibar', 'holaaaaaa'),
(2, 'mikelaibar', 'Hodei sexy'),
(3, 'mikelaibar', 'ESto está acabado (casi)'),
(4, 'Leysritt', 'El videojuego ha sido criticado por su software antitrampas, Vanguard, ya que se reveló que ejecuta un controlador de kernel, que permite el acceso al sistema informático. OSNews expresó su preocupación de que Riot Games y su propietario, la multinacional china Tencent, pudieran espiar a los usuario'),
(5, 'Leysritt', 'El videojuego ha sido criticado por su software antitrampas, Vanguard, ya que se reveló que ejecuta un controlador de kernel, que permite el acceso al sistema informático. OSNews expresó su preocupación de que Riot Games y su propietario, la multinacional china Tencent, pudieran espiar a los usuario'),
(6, 'Zialocrack', 'Comentario de ejemplo antes de intentar implementar MongoDB o MariaDB'),
(7, 'Zialocrack', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `HABILIDADES`
--

CREATE TABLE IF NOT EXISTS `HABILIDADES` (
  `id_personajes` int(11) NOT NULL,
  `numero_habilidades` int(1) NOT NULL,
  `nombre_habilidades` varchar(20) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `descripcion_habilidades` varchar(200) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `precio_habilidades` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `MAPAS`
--

CREATE TABLE IF NOT EXISTS `MAPAS` (
`id_mapa` int(11) NOT NULL,
  `nombre_mapa` varchar(20) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `descripcion_mapa` varchar(400) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `MAPAS`
--

INSERT INTO `MAPAS` (`id_mapa`, `nombre_mapa`, `descripcion_mapa`) VALUES
(1, 'Icebox', 'Vuestro próximo campo de batalla será una zona de excavación de Kingdom secreta y abandonada en territorio ártico. Las dos zonas para plantar la Spike están protegidas por capas de nieve y metal, y cubrir las distancias horizontales requerirá destreza. Recurrid a las tirolinas y pillad al enemigo por sorpresa.'),
(2, 'Bind', 'Dos ubicaciones sin zona central. Derecha o izquierda, ¿por cuál os decantaréis? Ambas disponen de caminos directos para los atacantes y dos teleportadores unidireccionales que facilitan los flanqueos.'),
(3, 'Haven', 'Bajo un monasterio olvidado, retumba el clamor de agentes rivales que luchan por controlar tres ubicaciones distintas. Hay más territorio que en otros mapas, pero los defensores pueden aprovecharlo para avanzar de forma agresiva y flanquear.'),
(4, 'Split', 'Para llegar lejos, hay que ascender. Dos ubicaciones separadas por un centro elevado que dispone de dos zonas de cuerdas para facilitar el movimiento. Cada una de las ubicaciones cuenta con una gran torre esencial para hacerse con el control. No perdáis de vista estas zonas antes de que salten por los aires.'),
(5, 'Ascent', 'Un patio abierto para pequeños combates de posicionamiento y desgaste divide las dos ubicaciones de Ascent. Cada una de ellas puede fortificarse con unas puertas a prueba de bombas. Tendréis que destruirlas o buscar otro camino. La cuestión es no ceder ni un centímetro.'),
(6, 'Breeze', 'Disfrutad de las vistas de ruinas históricas y cuevas junto al mar en este paraíso tropical, pero no olvidéis traer protección... La necesitaréis en los amplios espacios abiertos y enfrentamientos a largo alcance. Vigilad vuestros flancos: llega Breeze.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PERSONAJES`
--

CREATE TABLE IF NOT EXISTS `PERSONAJES` (
`id_personajes` int(11) NOT NULL,
  `nombre_personajes` varchar(20) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `rol_personajes` varchar(25) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `descripcion_personajes` varchar(500) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `PERSONAJES`
--

INSERT INTO `PERSONAJES` (`id_personajes`, `nombre_personajes`, `rol_personajes`, `descripcion_personajes`) VALUES
(1, 'Jett', 'Duelista', 'Jett viene de Corea del Sur, y su estilo de lucha ágil y evasivo le permite asumir grandes riesgos. Corre y salta de aquí para allá en las refriegas y hace trizas a los enemigos con una rapidez espectacular.'),
(2, 'Omen', 'Controlador', 'Omen es un fantasma de tiempos pasados que acecha en las sombras. Es capaz de cegar al enemigo, teleportarse a través del campo de batalla y sembrar el caos y la paranoia mientras sus rivales se preguntan dónde atacará la próxima vez.'),
(3, 'Brimstone', 'Controlador', 'De origen estadounidense, Brimstone cuenta con un arsenal de órbita que garantiza que su equipo siempre vaya por delante. Su capacidad para proporcionar herramientas de utilidad con precisión y desde la distancia lo convierten en un comandante ejemplar.'),
(4, 'Raze', 'Duelista', 'Raze llega desde Brasil con ganas de hacer que todo salte por los aires. Gracias a su estilo de juego basado en la fuerza bruta, destaca a la hora de barrer a grupos de enemigos atrincherados y de despejar áreas estrechas con explosión y sin compasión.'),
(5, 'Breach', 'Iniciador', 'Breach, el sueco biónico, dispara una serie de explosiones cinéticas controladas para abrirse paso por el territorio enemigo. Su capacidad para infligir daño y sembrar el caos garantiza que los combates siempre estén de su parte.'),
(6, 'Phoenix', 'Duelista', 'Phoenix proviene del Reino Unido y sus poderes estelares salen a relucir con su estilo de combate, que prende fuego al campo de batalla de forma deslumbrante. No le hacen falta refuerzos; es él quién se lanza al combate y marca el ritmo.'),
(7, 'Sage', 'Centinela', 'Originaria de China, Sage destaca a la hora de crear espacios seguros para su equipo allá donde va. Sus capacidades especiales para revivir a compañeros caídos en batalla y para mantener a raya los asaltos enemigos la convierten en la calma en mitad de la tormenta para su equipo.'),
(8, 'Sova', 'Iniciador', 'Nacido en el eterno invierno de la tundra rusa, Sova destaca a la hora de localizar, perseguir y eliminar a los enemigos con una eficiencia y una precisión inclementes. Su arco personalizado junto con su sobrenatural capacidad de rastreamiento hacen que sea imposible escapar.'),
(9, 'Viper', 'Controlador', 'Viper es una química estadounidense con un amplio arsenal de dispositivos venenosos que le sirven para tomar el control del campo de batalla y cegar a los enemigos. Si las toxinas no acaban con su presa, la paranoia la rematará.'),
(10, 'Cypher', 'Centinela', 'Cypher es un experto en información de Marruecos que se especializa en redes de vigilancia y es capaz de seguirle la pista al enemigo constantemente. No hay secreto a salvo ni maniobra que pase desapercibida. Cypher siempre está alerta.'),
(11, 'Reyna', 'Duelista', 'Desde el corazón de México, Reyna llega para dominar los combates uno contra uno y cada asesinato que consigue la hace más fuerte. Su potencial es prácticamente infinito, y la destreza individual es el único factor determinante de su éxito.'),
(12, 'Killjoy', 'Centinela', 'Killjoy es una brillante agente alemana que se encarga de tomar el campo de batalla con un amplio arsenal de inventos. Si el daño de sus invenciones no detiene a los enemigos, la debilitación de sus robots los convertirá en presas fáciles.'),
(13, 'Skye', 'Iniciador', 'Skye y su manada de bestias se abren paso desde Australia y a través de territorio hostil. Sus creaciones obstaculizan los avances enemigos y su capacidad para curar a los demás se ocupa de que, a su lado, su equipo esté a salvo.'),
(14, 'Yoru', 'Duelista', 'Yoru, nacido en Japón, abre agujeros en el tejido de la realidad para infiltrarse tras las líneas enemigas sin ser visto. Utiliza el engaño y la agresividad por igual para acabar con sus objetivos antes de que sepan qué ha pasado.'),
(15, 'Astra', 'Controlador', 'Astra, la agente ghanesa, controla las energías del cosmos para dar forma al campo de batalla a su antojo. Con pleno dominio de su forma astral y un gran talento para la anticipación estratégica, siempre va eones por delante de los movimientos de sus enemigos.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `USUARIOS`
--

CREATE TABLE IF NOT EXISTS `USUARIOS` (
`id_usuarios` int(10) NOT NULL,
  `nombre_usuarios` text CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `ape1_usuarios` text CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `ape2_usuarios` text CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `nick_usuarios` varchar(20) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `pass_usuarios` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `USUARIOS`
--

INSERT INTO `USUARIOS` (`id_usuarios`, `nombre_usuarios`, `ape1_usuarios`, `ape2_usuarios`, `nick_usuarios`, `pass_usuarios`) VALUES
(1, 'Hodei', 'Zia', 'Lopez', 'zialo99', '7c6a180b36896a0a8c02787eeafb0e4c'),
(3, 'Mikel', 'Aibar', 'Aibar', 'mikelaibar', '8a8bc6f1f2e6762dae7780efd335c743'),
(4, 'Asier', 'Pérez', 'Cemborain', 'Leysritt', '77a61869bc93b509efe6db6b282b19f6'),
(5, 'Hodei', 'Zia', 'Lopez', 'Zialocrack', '5f4dcc3b5aa765d61d8327deb882cf99');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ARMAS`
--
ALTER TABLE `ARMAS`
 ADD PRIMARY KEY (`id_arma`);

--
-- Indices de la tabla `COMENTARIOS`
--
ALTER TABLE `COMENTARIOS`
 ADD PRIMARY KEY (`id_comentarios`), ADD KEY `id_usuarios` (`id_usuarios`);

--
-- Indices de la tabla `COMENTARIOS_FORO`
--
ALTER TABLE `COMENTARIOS_FORO`
 ADD PRIMARY KEY (`Id_comentario`);

--
-- Indices de la tabla `HABILIDADES`
--
ALTER TABLE `HABILIDADES`
 ADD PRIMARY KEY (`id_personajes`,`numero_habilidades`);

--
-- Indices de la tabla `MAPAS`
--
ALTER TABLE `MAPAS`
 ADD PRIMARY KEY (`id_mapa`);

--
-- Indices de la tabla `PERSONAJES`
--
ALTER TABLE `PERSONAJES`
 ADD PRIMARY KEY (`id_personajes`);

--
-- Indices de la tabla `USUARIOS`
--
ALTER TABLE `USUARIOS`
 ADD PRIMARY KEY (`id_usuarios`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ARMAS`
--
ALTER TABLE `ARMAS`
MODIFY `id_arma` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `COMENTARIOS`
--
ALTER TABLE `COMENTARIOS`
MODIFY `id_comentarios` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `COMENTARIOS_FORO`
--
ALTER TABLE `COMENTARIOS_FORO`
MODIFY `Id_comentario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `MAPAS`
--
ALTER TABLE `MAPAS`
MODIFY `id_mapa` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `PERSONAJES`
--
ALTER TABLE `PERSONAJES`
MODIFY `id_personajes` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `USUARIOS`
--
ALTER TABLE `USUARIOS`
MODIFY `id_usuarios` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `COMENTARIOS`
--
ALTER TABLE `COMENTARIOS`
ADD CONSTRAINT `COMENTARIOS_ibfk_1` FOREIGN KEY (`id_usuarios`) REFERENCES `USUARIOS` (`id_usuarios`);

--
-- Filtros para la tabla `HABILIDADES`
--
ALTER TABLE `HABILIDADES`
ADD CONSTRAINT `HABILIDADES_ibfk_1` FOREIGN KEY (`id_personajes`) REFERENCES `PERSONAJES` (`id_personajes`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
