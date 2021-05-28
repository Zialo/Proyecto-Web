-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 18-04-2021 a las 15:43:58
-- Versión del servidor: 5.7.33-0ubuntu0.18.04.1
-- Versión de PHP: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proyecto_IW`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ARMAS`
--

CREATE TABLE `ARMAS` (
  `id_armas` int(11) NOT NULL,
  `nombre_armas` varchar(20) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `tipo_armas` varchar(20) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `descripcion_armas` varchar(400) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `precio_armas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `COMENTARIOS`
--

CREATE TABLE `COMENTARIOS` (
  `id_comentarios` int(11) NOT NULL,
  `id_usuarios` int(11) NOT NULL,
  `texto_comentario` varchar(100) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `HABILIDADES`
--

CREATE TABLE `HABILIDADES` (
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

CREATE TABLE `MAPAS` (
  `id_mapas` int(11) NOT NULL,
  `nombre_mapas` varchar(20) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `descripcion_mapas` varchar(400) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `MAPAS`
--

INSERT INTO `MAPAS` (`id_mapas`, `nombre_mapas`, `descripcion_mapas`) VALUES
(1, 'Icebox', 'Vuestro próximo campo de batalla será una zona de excavación de Kingdom secreta y abandonada en territorio ártico. Las dos zonas para plantar la Spike están protegidas por capas de nieve y metal, y cubrir las distancias horizontales requerirá destreza. Recurrid a las tirolinas y pillad al enemigo por sorpresa.'),
(2, 'Bind', 'Dos ubicaciones sin zona central. Derecha o izquierda, ¿por cuál os decantaréis? Ambas disponen de caminos directos para los atacantes y dos teleportadores unidireccionales que facilitan los flanqueos.'),
(3, 'Haven', 'Bajo un monasterio olvidado, retumba el clamor de agentes rivales que luchan por controlar tres ubicaciones distintas. Hay más territorio que en otros mapas, pero los defensores pueden aprovecharlo para avanzar de forma agresiva y flanquear.'),
(4, 'Split', 'Para llegar lejos, hay que ascender. Dos ubicaciones separadas por un centro elevado que dispone de dos zonas de cuerdas para facilitar el movimiento. Cada una de las ubicaciones cuenta con una gran torre esencial para hacerse con el control. No perdáis de vista estas zonas antes de que salten por los aires.'),
(5, 'Ascent', 'Un patio abierto para pequeños combates de posicionamiento y desgaste divide las dos ubicaciones de Ascent. Cada una de ellas puede fortificarse con unas puertas a prueba de bombas. Tendréis que destruirlas o buscar otro camino. La cuestión es no ceder ni un centímetro.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `PERSONAJES`
--

CREATE TABLE `PERSONAJES` (
  `id_personajes` int(11) NOT NULL,
  `nombre_personajes` varchar(20) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `rol_personajes` varchar(25) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `descripcion_personajes` varchar(500) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `USUARIOS` (
  `id_usuarios` int(10) NOT NULL,
  `nombre_usuarios` text CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `ape1_usuarios` text CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `ape2_usuarios` text CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `nick_usuarios` varchar(20) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `pass_usuarios` varchar(30) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ARMAS`
--
ALTER TABLE `ARMAS`
  ADD PRIMARY KEY (`id_armas`);

--
-- Indices de la tabla `COMENTARIOS`
--
ALTER TABLE `COMENTARIOS`
  ADD PRIMARY KEY (`id_comentarios`),
  ADD KEY `id_usuarios` (`id_usuarios`);

--
-- Indices de la tabla `HABILIDADES`
--
ALTER TABLE `HABILIDADES`
  ADD PRIMARY KEY (`id_personajes`,`numero_habilidades`);

--
-- Indices de la tabla `MAPAS`
--
ALTER TABLE `MAPAS`
  ADD PRIMARY KEY (`id_mapas`);

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
  MODIFY `id_armas` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `COMENTARIOS`
--
ALTER TABLE `COMENTARIOS`
  MODIFY `id_comentarios` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `MAPAS`
--
ALTER TABLE `MAPAS`
  MODIFY `id_mapas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `PERSONAJES`
--
ALTER TABLE `PERSONAJES`
  MODIFY `id_personajes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `USUARIOS`
--
ALTER TABLE `USUARIOS`
  MODIFY `id_usuarios` int(10) NOT NULL AUTO_INCREMENT;
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