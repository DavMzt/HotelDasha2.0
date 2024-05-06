-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-05-2024 a las 00:29:00
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reservas-hotel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administradores`
--

CREATE TABLE `administradores` (
  `id` int(11) NOT NULL,
  `perfil` text NOT NULL,
  `nombre` text NOT NULL,
  `usuario` text NOT NULL,
  `password` text NOT NULL,
  `estado` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `administradores`
--

INSERT INTO `administradores` (`id`, `perfil`, `nombre`, `usuario`, `password`, `estado`, `fecha`) VALUES
(1, 'Administrador', 'Hotel DASHA', 'admin', '$2a$07$asxx54ahjppf45sd87a5aunxs9bkpyGmGE/.vekdjFg83yRec789S', 1, '2024-05-01 18:39:14'),
(3, 'Administrador', 'Sharon Michelle Mejia Cruz', 'Shamichel', '$2a$07$asxx54ahjppf45sd87a5auJRR6foEJ7ynpjisKtbiKJbvJsoQ8VPS', 1, '2024-05-01 19:48:12'),
(4, 'Empleado', 'David Meza Tovar', 'David', '$2a$07$asxx54ahjppf45sd87a5auJRR6foEJ7ynpjisKtbiKJbvJsoQ8VPS', 1, '2024-05-01 19:48:27');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `agenda`
--

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `id_habitacion` int(11) NOT NULL,
  `fecha_ingreso` datetime NOT NULL,
  `fecha_salida` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `agenda`
--

INSERT INTO `agenda` (`id`, `id_habitacion`, `fecha_ingreso`, `fecha_salida`) VALUES
(1, 1, '2019-05-29 18:00:00', '2019-05-29 19:00:00'),
(2, 2, '2019-05-29 18:00:00', '2019-05-29 19:00:00'),
(3, 3, '2019-05-29 18:00:00', '2019-05-29 19:00:00'),
(4, 4, '2019-04-29 18:00:00', '2019-04-29 19:00:00'),
(5, 5, '2019-05-29 18:00:00', '2019-05-29 19:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `img` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `banner`
--

INSERT INTO `banner` (`id`, `img`, `fecha`) VALUES
(1, 'vistas/img/banner/344.jpg', '2024-05-01 17:56:02'),
(4, 'vistas/img/banner/621.jpg', '2024-05-04 22:00:57'),
(6, 'vistas/img/banner/163.jpg', '2024-05-04 22:02:23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `ruta` text NOT NULL,
  `color` text NOT NULL,
  `tipo` text NOT NULL,
  `img` text NOT NULL,
  `descripcion` text NOT NULL,
  `incluye` text NOT NULL,
  `continental_alta` float NOT NULL,
  `continental_baja` float NOT NULL,
  `americano_alta` float NOT NULL,
  `americano_baja` float NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `ruta`, `color`, `tipo`, `img`, `descripcion`, `incluye`, `continental_alta`, `continental_baja`, `americano_alta`, `americano_baja`, `fecha`) VALUES
(1, 'habitacion-tipo-suite', '#847059', 'Suite', 'vistas/img/suite/portada.png', 'diseñada para satisfacer incluso los gustos más exigentes. Con un elegante diseño contemporáneo y una amplia gama de comodidades, nuestra suite te ofrece un refugio tranquilo y sofisticado durante tu estancia.', '[{ \"item\": \"cama 2 x 2\", \"icono\": \"fas fa-bed\"},\r\n{ \"item\": \"TV de 42 Pulg\", \"icono\": \"fas fa-tv\"},\r\n{ \"item\": \"Agua Caliente\", \"icono\": \"fas fa-tint\"},\r\n{ \"item\": \"Jacuzzi\", \"icono\": \"fas fa-water\"},\r\n{ \"item\": \"Baño privado\", \"icono\": \"fas fa-toilet\"},\r\n{ \"item\": \"Sofá\", \"icono\": \"fas fa-couch\"},\r\n{ \"item\": \"Balcón\", \"icono\": \"far fa-image\"},\r\n{ \"item\": \"Servicio Wifi\", \"icono\": \"fas fa-wifi\"}]', 3700, 3000, 3500, 3300, '2024-05-05 21:37:57'),
(2, 'habitacion-tipo-especial', '#197DB1', 'Especial', 'vistas/img/especial/portada.png', 'Descubre nuestra habitación especial temática de aventura, donde la naturaleza salvaje se combina con el confort moderno. Sumérgete en una experiencia única rodeado de murales de selva, muebles rústicos y servicios exclusivos como una bañera de hidromasaje con vista panorámica. Ideal para amantes de la aventura y la naturaleza.', '[{ \"item\": \"cama 2 x 2\", \"icono\": \"fas fa-bed\"},\r\n{ \"item\": \"TV de 42 Pulg\", \"icono\": \"fas fa-tv\"},\r\n{ \"item\": \"Agua Caliente\", \"icono\": \"fas fa-tint\"},\r\n{ \"item\": \"Baño privado\", \"icono\": \"fas fa-toilet\"},\r\n{ \"item\": \"Sofá\", \"icono\": \"fas fa-couch\"},\r\n{ \"item\": \"Balcón\", \"icono\": \"far fa-image\"},\r\n{ \"item\": \"Servicio Wifi\", \"icono\": \"fas fa-wifi\"}]', 2500, 1600, 2800, 2000, '2024-05-05 21:34:03'),
(3, 'habitacion-tipo-standar', '#2F7D84', 'Habitacion Standar', 'vistas/img/standar/portada.png', 'Sumérgete en la tranquilidad de nuestra habitación estándar, donde la comodidad se combina con la simplicidad para ofrecerte una experiencia acogedora y relajante. Con un diseño funcional y todas las comodidades necesarias, es ideal para una estancia sin complicaciones.', '[{ \"item\": \"cama 2 x 2\", \"icono\": \"fas fa-bed\"},\r\n{ \"item\": \"TV de 42 Pulg\", \"icono\": \"fas fa-tv\"},\r\n{ \"item\": \"Agua Caliente\", \"icono\": \"fas fa-tint\"},\r\n{ \"item\": \"Baño privado\", \"icono\": \"fas fa-toilet\"},\r\n{ \"item\": \"Sofá\", \"icono\": \"fas fa-couch\"},\r\n{ \"item\": \"Servicio Wifi\", \"icono\": \"fas fa-wifi\"}]', 2100, 1500, 1700, 1300, '2024-05-05 21:35:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitaciones`
--

CREATE TABLE `habitaciones` (
  `id_h` int(11) NOT NULL,
  `tipo_h` int(11) NOT NULL,
  `estilo` text NOT NULL,
  `galeria` text NOT NULL,
  `video` text NOT NULL,
  `recorrido_virtual` text NOT NULL,
  `descripcion_h` text NOT NULL,
  `fecha_h` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `habitaciones`
--

INSERT INTO `habitaciones` (`id_h`, `tipo_h`, `estilo`, `galeria`, `video`, `recorrido_virtual`, `descripcion_h`, `fecha_h`) VALUES
(2, 1, 'Moderna', '[\"vistas\\/img\\/suite\\/moderna01.jpg\",\"vistas\\/img\\/suite\\/moderna02.jpg\",\"vistas\\/img\\/suite\\/moderna03.jpg\",\"vistas\\/img\\/suite\\/moderna04.jpg\"]', 'JTu790_yyRc', 'vistas/img/suite/moderna-360.jpg', '<p>Espacio de vanguardia que combina elegancia contemporánea con comodidades de última generación. Al entrar, te envuelve una sensación de estilo y lujo, con líneas limpias, materiales de alta calidad y un diseño que incorpora las últimas tendencias en decoración y tecnología.</p><p>El salón principal de la suite es un espacio amplio y luminoso, con muebles de diseño moderno, como sofás de cuero de líneas rectas y una mesa de centro de cristal. Grandes ventanales ofrecen vistas panorámicas de la ciudad o del entorno natural circundante, inundando el espacio con luz natural.</p><p>El dormitorio principal es un refugio de confort y estilo, con una cama king-size con cabecera tapizada y ropa de cama de alta calidad. A cada lado de la cama, lámparas de pie o luces empotradas en la pared ofrecen iluminación ajustable para crear la atmósfera perfecta.</p><h3>PLAN CONTINENTAL</h3><p>(Precio x pareja 1 día 1 noche, incluye: desayuno) Temporada Baja: S/300 Temporada Alta: S/350</p><h3>PLAN AMERICANO</h3><p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo) Temporada Baja: S/380 Temporada Alta: S/420</p><p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2024-05-01 19:56:18'),
(4, 1, 'Clásica', '[\"vistas\\/img\\/suite\\/clasica01.jpg\",\"vistas\\/img\\/suite\\/clasica02.jpg\",\"vistas\\/img\\/suite\\/clasica03.jpg\",\"vistas\\/img\\/suite\\/clasica04.jpg\"]', 'JTu790_yyRc', 'vistas/img/suite/clasica-360.jpg', '<p>La suite clásica es un refugio de elegancia atemporal, diseñado para aquellos que aprecian el encanto y la sofisticación de las épocas pasadas. Al entrar en la suite, te sumerges en un ambiente de opulencia y refinamiento, con detalles arquitectónicos ornamentados y una decoración que evoca la grandeza de los tiempos pasados.</p><p>El salón principal de la suite está cuidadosamente amueblado con piezas de mobiliario de estilo clásico, como sofás tapizados en telas lujosas, mesas de centro de madera tallada y sillones tapizados a juego. Un elegante candelabro cuelga del techo, proporcionando una luz suave y ambiental que resalta los detalles decorativos.</p><p>El baño en suite es un espectáculo de elegancia clásica, con azulejos de mármol italiano, bañera con patas y grifos de estilo antiguo. Un tocador de madera con espejo ovalado y luces de tocador añade un toque de glamour vintage. Se proporcionan batas de baño suaves y productos de baño de lujo para mimar a los huéspedes.</p><h3>PLAN CONTINENTAL</h3><p>(Precio x pareja 1 día 1 noche, incluye: desayuno) Temporada Baja: S/300 Temporada Alta: S/350</p><h3>PLAN AMERICANO</h3><p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo) Temporada Baja: S/380 Temporada Alta: S/420</p><p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2024-05-01 19:55:10'),
(6, 2, 'Oriental', '[\"vistas\\/img\\/especial\\/oriental01.jpg\",\"vistas\\/img\\/especial\\/oriental02.jpg\",\"vistas\\/img\\/especial\\/oriental03.jpg\",\"vistas\\/img\\/especial\\/oriental04.jpg\"]', 'JTu790_yyRc', 'vistas/img/especial/oriental-360.jpg', '<p>Sumérgete en el encanto y la serenidad de nuestra habitación de inspiración oriental, donde cada detalle está cuidadosamente diseñado para ofrecerte una experiencia única. Desde el momento en que entras, serás recibido por una atmósfera de tranquilidad y armonía, con suaves tonos cálidos y exquisitos detalles decorativos que te transportarán a un mundo de belleza y relajación.</p><p>Nuestra habitación oriental ofrece un ambiente acogedor y elegante, con muebles de madera tallada a mano y suelos de bambú que crean una sensación de calidez y naturalidad. La cama, adornada con delicados textiles de seda y cojines bordados, te invita a descansar y rejuvenecer cuerpo y mente.</p><h3>PLAN CONTINENTAL</h3><p>(Precio x pareja 1 día 1 noche, incluye: desayuno) Temporada Baja: S/300 Temporada Alta: S/350</p><h3>PLAN AMERICANO</h3><p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo) Temporada Baja: S/380 Temporada Alta: S/420</p><p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2024-05-01 17:52:59'),
(7, 2, 'Moderna', '[\"vistas\\/img\\/especial\\/moderna01.jpg\",\"vistas\\/img\\/especial\\/moderna02.jpg\",\"vistas\\/img\\/especial\\/moderna03.jpg\",\"vistas\\/img\\/especial\\/moderna04.jpg\"]', 'JTu790_yyRc', 'vistas/img/especial/moderna-360.jpg', '<p>Habitación especial moderna es un oasis contemporáneo diseñado para aquellos que buscan una experiencia de hospedaje de lujo y estilo vanguardista. Al ingresar, te reciben tonos elegantes y minimalistas, con una paleta de colores que puede incluir grises suaves, blancos nítidos y acentos de colores vibrantes para un toque de energía.</p><p>El centro de atención de la habitación es, sin duda, la cama king-size con sábanas de alta calidad y almohadas mullidas que invitan al descanso. A cada lado de la cama, elegantes lámparas de mesa o luces empotradas en la pared ofrecen una iluminación suave y ajustable para crear la atmósfera perfecta.</p><h3>PLAN CONTINENTAL</h3><p>(Precio x pareja 1 día 1 noche, incluye: desayuno) Temporada Baja: S/300 Temporada Alta: S/350</p><h3>PLAN AMERICANO</h3><p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo) Temporada Baja: S/380 Temporada Alta: S/420</p><p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2024-05-01 19:53:56'),
(15, 3, 'Retro', '[\"vistas\\/img\\/standar\\/retro01.jpg\",\"vistas\\/img\\/standar\\/retro02.jpg\",\"vistas\\/img\\/standar\\/retro03.jpg\",\"vistas\\/img\\/standar\\/retro04.jpg\"]', 'JTu790_yyRc', 'vistas/img/standar/retro-360.jpg', '<p>Habitación estándar es un espacio acogedor diseñado para ofrecer comodidad y funcionalidad a los huéspedes. Suele tener dimensiones moderadas, con suficiente espacio para una cama tamaño queen o dos camas individuales, acompañadas de mesas de noche a cada lado. Las paredes suelen estar pintadas en tonos neutros para crear una atmósfera relajante.</p><p>En el centro de la habitación, puede haber una cómoda o un escritorio con una silla, ideal para trabajar o realizar tareas. Frente a la cama, es común encontrar un televisor montado en la pared o sobre un mueble bajo.</p><p>El baño adjunto a la habitación está equipado con una ducha o bañera, lavabo y tocador. Se proporcionan toallas suaves y artículos de tocador básicos para mayor comodidad del huésped.</p><h3>PLAN CONTINENTAL</h3><p>(Precio x pareja 1 día 1 noche, incluye: desayuno) Temporada Baja: S/300 Temporada Alta: S/350</p><h3>PLAN AMERICANO</h3><p>(Precio x pareja 1 día 1 noche, incluye: cena, desayuno, almuerzo) Temporada Baja: S/380 Temporada Alta: S/420</p><p>Hora de entrada (Check in) 3:00 pm | Hora de salida (Check out) 1:00 pm</p>', '2024-05-01 19:50:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notificaciones`
--

CREATE TABLE `notificaciones` (
  `id` int(11) NOT NULL,
  `tipo` text NOT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `notificaciones`
--

INSERT INTO `notificaciones` (`id`, `tipo`, `cantidad`, `fecha`) VALUES
(1, 'reservas', 0, '2020-08-23 01:49:14'),
(2, 'testimonios', 0, '2020-08-23 01:41:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planes`
--

CREATE TABLE `planes` (
  `id` int(11) NOT NULL,
  `tipo` text NOT NULL,
  `img` text NOT NULL,
  `descripcion` text NOT NULL,
  `precio_alta` float NOT NULL,
  `precio_baja` float NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `planes`
--

INSERT INTO `planes` (`id`, `tipo`, `img`, `descripcion`, `precio_alta`, `precio_baja`, `fecha`) VALUES
(1, 'Romántico', 'vistas/img/planes/plan-romantico.png', '<p>¿Buscas la luna de miel perfecta para celebrar el amor y la unión? ¡Has llegado al lugar indicado! En Hotel DASHA, nos especializamos en crear experiencias inolvidables para parejas que desean comenzar su viaje juntos de la manera más romántica posible.</p>', 500, 400, '2024-05-04 21:50:35'),
(2, 'Luna de Miel', 'vistas/img/planes/luna-de-miel.png', '<p><strong>Días de Relax en la Playa:</strong> Dedica tus días a relajarte en las hermosas playas de arena blanca de Cancún. Sumérgete en las aguas cristalinas del Mar Caribe, toma el sol juntos bajo las palmeras y disfruta de románticos paseos por la orilla del mar mientras el sol se pone en el horizonte.</p><p>&nbsp;</p>', 600, 500, '2024-05-01 22:20:24'),
(3, 'Aventura', 'vistas/img/planes/plan-aventura.png', '<p><strong>Parque Xcaret: Explora la Naturaleza y la Cultura Mexicana</strong></p><p>Ubicado en la Riviera Maya, cerca de Cancún, el Parque Xcaret es un destino turístico único que combina la belleza natural de la región con la rica cultura de México. Aquí hay algunas actividades que puedes disfrutar en el Parque Xcaret:</p><p>&nbsp;</p>', 400, 300, '2024-05-01 22:19:20'),
(4, 'SPA', 'vistas/img/planes/plan-spa.png', '<p>Sumérgete en un mundo de relajación y rejuvenecimiento con nuestro exclusivo Retiro de Bienestar en Serenidad Spa. Ubicado en el corazón de nuestro hotel, Serenidad Spa ofrece un refugio tranquilo donde los huéspedes pueden escapar del estrés cotidiano y reconectar con su bienestar interior.</p><p>&nbsp;</p>', 547, 453, '2024-05-01 22:18:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recorrido`
--

CREATE TABLE `recorrido` (
  `id` int(11) NOT NULL,
  `foto_peq` text NOT NULL,
  `foto_grande` text NOT NULL,
  `titulo` text NOT NULL,
  `descripcion` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `recorrido`
--

INSERT INTO `recorrido` (`id`, `foto_peq`, `foto_grande`, `titulo`, `descripcion`, `fecha`) VALUES
(1, 'vistas/img/recorrido/pueblo01a.png', 'vistas/img/recorrido/pueblo01b.png', '¡Vamos de paseo!', 'Escápese a nuestro tranquilo refugio, rodeado de exuberantes colinas verdes y un paisaje pintoresco. Imagínese despertarse en las tranquilas aguas de nuestro lago, con el cálido sol brillando sobre usted. Nuestra lujosa casa flotante, equipada con una amplia terraza y un cómodo dosel, ofrece la mejor experiencia de relajación. Relájese con estilo y disfrute de las impresionantes vistas de la belleza de la naturaleza.', '2024-05-04 20:07:35'),
(2, 'vistas/img/recorrido/pueblo02a.png', 'vistas/img/recorrido/pueblo02b.png', '¿Buscar relajarte, salida romántica?\r\nEste recorrido podría ser para ti', 'Experimente el epítome del lujo y la relajación en nuestro prístino lago. Nuestra impresionante casa flotante blanca, equipada con una espaciosa terraza y un acogedor dosel, ofrece una experiencia única e inolvidable. Rodeados de exuberantes colinas verdes y un paisaje pintoresco, nuestros huéspedes pueden disfrutar del tranquilidad y serenidad de la naturaleza mientras disfruta de la comodidad y elegancia de nuestro retiro flotante.', '2024-05-04 20:14:10'),
(3, 'vistas/img/recorrido/pueblo03a.png', 'vistas/img/recorrido/pueblo03b.png', 'Recorrido desde nuestro barco', 'Sumérjase en la belleza y la serenidad de la naturaleza en nuestra impresionante casa flotante blanca. Flotando en un pintoresco lago, rodeada de exuberantes colinas verdes y un paisaje impresionante, nuestra casa flotante ofrece una experiencia única e inolvidable. Con una amplia terraza y un acogedor dosel, Nuestros huéspedes pueden disfrutar de la tranquilidad del agua mientras disfrutan del cálido sol. Ya sea que esté buscando un retiro tranquilo o una aventura única, nuestra casa flotante es el destino perfecto para unas vacaciones inolvidables\".', '2024-05-04 20:17:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id_reserva` int(11) NOT NULL,
  `id_habitacion` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `pago_reserva` float NOT NULL,
  `numero_transaccion` text NOT NULL,
  `codigo_reserva` text NOT NULL,
  `descripcion_reserva` text NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `fecha_salida` date NOT NULL,
  `fecha_reserva` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`id_reserva`, `id_habitacion`, `id_usuario`, `pago_reserva`, `numero_transaccion`, `codigo_reserva`, `descripcion_reserva`, `fecha_ingreso`, `fecha_salida`, `fecha_reserva`) VALUES
(8, 1, 8, 900000, '19680828', '6NJS06V8L', 'Habitación Suite Oriental - Plan Continental - 2 personas', '2020-08-13', '2020-08-17', '2020-07-16 18:11:33'),
(9, 2, 8, 760000, '19680844', 'M1UHK6R50', 'Habitación Suite Moderna - Plan Americano - 2 personas', '2020-06-18', '2020-06-20', '2020-06-16 18:12:53'),
(10, 3, 8, 420000, '19680849', 'YK51N1HAQ', 'Habitación Suite Africana - Plan Romantico - 2 personas', '2020-02-20', '2020-02-22', '2020-08-22 01:43:15'),
(11, 1, 7, 860000, '19680940', '2S7PLNC32', 'Habitación Suite Oriental - Plan Luna de Miel - 2 personas', '2020-08-12', '2020-08-15', '2020-08-22 01:44:18'),
(12, 2, 7, 820000, '19681854', '3UD1XIBEO', 'Habitación Suite Moderna - Plan Aventura - 2 personas', '2020-04-16', '2020-04-20', '2020-08-22 01:43:49'),
(13, 3, 7, 1260000, '19681866', 'WFZIEN8MO', 'Habitación Suite Africana - Plan Romantico - 2 personas', '2020-02-07', '2020-02-10', '2020-08-22 01:44:39'),
(14, 1, 3, 900000, '19681883', '3U2WO6002', 'Habitación Suite Oriental - Plan Continental - 2 personas', '2020-03-27', '2020-03-30', '2020-08-22 01:45:10'),
(15, 2, 3, 860000, '19681896', 'N10L457ZB', 'Habitación Suite Moderna - Plan Luna de Miel - 2 personas', '2020-09-25', '2020-09-27', '2020-08-21 18:51:05'),
(16, 3, 3, 900000, '19681906', 'IMSB2OKGV', 'Habitación Suite Africana - Plan Continental - 2 personas', '0000-00-00', '0000-00-00', '2020-08-22 01:23:22'),
(17, 1, 4, 425000, '19681954', '6VZ4HIZ27', 'Habitación Suite Oriental - Plan SPA - 2 personas', '2020-08-19', '2020-08-20', '2020-08-21 18:08:33'),
(18, 2, 4, 300000, '19681999', 'L5BCTUYGM', 'Habitación Suite Moderna - Plan Continental - 2 personas', '2020-08-15', '2020-08-22', '2020-08-21 18:09:02'),
(19, 3, 4, 1290000, '19682031', 'ACXC0HPO5', 'Habitación Suite Africana - Plan Luna de Miel - 2 personas', '2020-08-19', '2020-08-21', '2020-08-21 17:51:08'),
(20, 1, 3, 760000, '19686161', 'ZLMAOP6C0', 'Habitación Suite Oriental - Plan Americano - 2 personas', '0000-00-00', '0000-00-00', '2020-08-22 01:23:30'),
(21, 2, 9, 600, '28947282', '1K7B9F5ID', 'Habitación Suite Moderna - Plan Continental - 2 personas', '2020-03-18', '2020-03-20', '2020-08-04 01:42:19'),
(22, 1, 10, 300, '28947388', 'YEHXHSRIK', 'Habitación Suite Oriental - Plan Continental - 2 personas', '2020-08-16', '2020-08-17', '2020-08-15 02:56:25'),
(23, 8, 11, 500, '28947652', '0YGPLCHX8', 'Habitación Especial Africana - Plan Continental - 2 personas', '0000-00-00', '0000-00-00', '2024-05-05 21:56:01'),
(24, 2, 12, 600, '28961574', '6BUZBJUJO', 'Habitación Suite Moderna - Plan Continental - 2 personas', '0000-00-00', '0000-00-00', '2020-08-22 01:18:57'),
(25, 6, 4, 250, '29129954', 'O6M8YWMF5', 'Habitación Especial Oriental - Plan Continental - 2 personas', '2020-05-22', '2020-05-23', '2020-04-17 01:41:54'),
(26, 11, 13, 600, '29155556', 'WW9XWNJNA', 'Habitación Standar Caribeña - Plan Continental - 2 personas', '2020-09-17', '2020-09-20', '2020-08-22 23:50:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas2`
--

CREATE TABLE `reservas2` (
  `id` int(11) NOT NULL,
  `id_habitacion` int(11) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `fecha_salida` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reservas2`
--

INSERT INTO `reservas2` (`id`, `id_habitacion`, `fecha_ingreso`, `fecha_salida`) VALUES
(1, 1, '2019-05-03', '2019-05-05'),
(2, 2, '2019-05-02', '2019-05-05'),
(3, 3, '2019-05-03', '2019-05-05'),
(4, 4, '2019-05-05', '2019-05-07'),
(5, 5, '2019-05-03', '2019-05-05'),
(6, 1, '2019-05-06', '2019-05-07'),
(7, 2, '2019-05-06', '2019-05-08'),
(8, 3, '2019-05-05', '2019-05-05'),
(9, 4, '2019-05-08', '2019-05-10'),
(10, 5, '2019-05-06', '2019-05-07'),
(11, 1, '2019-05-09', '2019-05-12'),
(12, 2, '2019-05-09', '2019-05-13'),
(13, 3, '2019-05-05', '2019-05-10'),
(14, 4, '2019-05-10', '2019-05-11'),
(15, 5, '2019-05-07', '2019-05-09'),
(16, 1, '2019-05-16', '2019-05-17'),
(17, 2, '2019-05-15', '2019-05-16'),
(18, 3, '2019-05-19', '2019-05-21'),
(19, 4, '2019-05-18', '2019-05-19'),
(20, 5, '2019-05-11', '2019-05-15'),
(21, 1, '2019-05-26', '2019-05-28'),
(22, 2, '2019-05-26', '2019-05-28'),
(23, 3, '2019-05-26', '2019-05-28'),
(24, 4, '2019-05-26', '2019-05-28'),
(25, 5, '2019-05-26', '2019-05-28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `restaurante`
--

CREATE TABLE `restaurante` (
  `id` int(11) NOT NULL,
  `img` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `restaurante`
--

INSERT INTO `restaurante` (`id`, `img`, `descripcion`, `fecha`) VALUES
(1, 'vistas/img/restaurante/plato01.png', 'Deléitese con nuestras generosas porciones de carne tierna y jugosa y vegetales frescos se cocinan a la perfección, lo que garantiza una experiencia culinaria verdaderamente satisfactoria en la comodidad de su propia habitación\".', '2024-05-04 19:05:27'),
(2, 'vistas/img/restaurante/plato02.png', 'Nuestra selección de platos gourmet, preparados con ingredientes frescos y de alta calidad, te sorprenderá con su sabor y presentación. Nuestras porciones generosas de carne tierna y jugosa y verduras frescas son cocinadas a la perfección, brindándote una experiencia culinaria verdaderamente memorable.', '2024-05-04 19:04:55'),
(3, 'vistas/img/restaurante/plato03.png', 'Generosos y jugosos trozos de salmón, que se han cocinado a la parrilla a la perfección para mantener su sabor y textura naturales. Acompañados de verduras frescas y coloridas, cada plato es una obra de arte culinaria que te dejará sin aliento.', '2024-05-04 19:09:46'),
(4, 'vistas/img/restaurante/plato04.png', 'Nuestro plato de tacos presenta una variedad de carnes tiernas, aderezos frescos y tortillas crujientes, cuidadosamente dispuestas para deleitar sus sentidos. Disfrute de una escapada culinaria en la comodidad. de nuestro hotel.\"', '2024-05-04 19:26:42'),
(6, 'vistas/img/restaurante/679.jpg', 'Experimente los sabores ricos y picantes de México con nuestros chilaquiles de salsa verde. Este plato tradicional incluye crujientes chips de tortilla cocidos a fuego lento en una vibrante salsa de tomatillo verde, cubiertos con queso desmenuzado, cebollas frescas y una cucharada de crema. \".\r\n', '2024-05-04 19:29:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `testimonios`
--

CREATE TABLE `testimonios` (
  `id_testimonio` int(11) NOT NULL,
  `id_res` int(11) NOT NULL,
  `id_us` int(11) NOT NULL,
  `id_hab` int(11) NOT NULL,
  `testimonio` text NOT NULL,
  `aprobado` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `testimonios`
--

INSERT INTO `testimonios` (`id_testimonio`, `id_res`, `id_us`, `id_hab`, `testimonio`, `aprobado`, `fecha`) VALUES
(1, 20, 3, 1, 'Fue una experiencia maravillosa', 1, '2019-05-15 00:35:52'),
(2, 14, 3, 1, 'Siempre quise una Luna de Miel como la que viví en este hotel', 1, '2019-05-15 00:36:05'),
(3, 15, 3, 2, 'La mejor experiencia de mi vida', 1, '2019-05-15 00:36:07'),
(4, 16, 3, 3, 'Me encantó estar en esta habitación.', 1, '2019-05-15 00:36:09'),
(5, 8, 8, 1, 'Super siempre quise estar acá', 1, '2019-05-15 00:36:12'),
(6, 9, 8, 2, 'Estoy muy agradecido con el personal del hotel', 1, '2019-05-15 00:36:14'),
(7, 10, 8, 3, 'La comida maravillosa', 1, '2019-05-15 00:36:16'),
(8, 11, 7, 1, 'Es una experiencia inolvidable', 1, '2019-05-15 00:36:20'),
(9, 12, 7, 2, 'El lugar es de ensueños', 0, '2020-08-22 02:51:58'),
(10, 13, 7, 3, 'Gracias, todo muy bien!', 0, '2020-08-22 02:52:29'),
(11, 17, 4, 1, 'Que belleza de lugar', 1, '2019-05-15 00:36:26'),
(12, 18, 4, 2, 'Volveré con mi familia', 1, '2019-05-15 00:36:29'),
(13, 19, 4, 3, 'Sin lugar a dudas, el mejor hotel de la zona', 1, '2024-05-05 21:40:40'),
(15, 22, 10, 1, 'Muy agradable', 1, '2024-05-05 21:40:39'),
(16, 23, 11, 8, 'Muy buena Habitación', 1, '2024-05-05 21:40:37'),
(17, 24, 12, 2, 'Muy agradable buena experiencia.', 1, '2020-08-22 02:52:16'),
(19, 26, 13, 11, 'Muy buena habitación, me gusto', 1, '2020-08-23 00:16:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_u` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL,
  `foto` text NOT NULL,
  `modo` text NOT NULL,
  `verificacion` int(11) NOT NULL,
  `email_encriptado` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_u`, `nombre`, `password`, `email`, `foto`, `modo`, `verificacion`, `email_encriptado`, `fecha`) VALUES
(3, 'Juan Fernando Urrego', '$2a$07$asxx54ahjppf45sd87a5auFL5K1.Cmt9ZheoVVuudOi5BCi10qWly', 'correotutorialesatualcance@gmail.com', 'vistas/img/usuarios/3/279.png', 'directo', 1, '678ec21f18a39c43b95e93de54d78a93', '2019-05-14 22:15:37'),
(4, 'Felipe Trujillo', '$2a$07$asxx54ahjppf45sd87a5auFL5K1.Cmt9ZheoVVuudOi5BCi10qWly', 'felipe@hotmail.com', '', 'directo', 1, '8fe863573a42ae1ec12c4d3c1d591c6d', '2019-05-14 17:16:14'),
(7, 'Tutoriales a tu Alcance', 'null', 'correo.tutorialesatualcance@gmail.com', 'https://lh4.googleusercontent.com/-80gqeIg_Gq8/AAAAAAAAAAI/AAAAAAAAAF4/0_8JQ_8Gffk/s96-c/photo.jpg', 'google', 1, 'null', '2019-05-11 00:16:27'),
(8, 'Juan Fernando Urrego Alvarez', 'null', 'juanustudio@hotmail.com', 'http://graph.facebook.com/10219668435251136/picture?type=large', 'facebook', 1, 'null', '2019-05-14 17:05:28'),
(10, 'Luis Homero Tuesta Pereda', 'null', 'ltuestapereda@gmail.com', 'https://lh3.googleusercontent.com/a-/AOh14GjO1-4R2YiyOpqZXs0KfqDxmEcuRYXdGABo5R4=s96-c', 'google', 1, 'null', '2020-08-15 02:53:41'),
(11, 'Hector Tuesta Pereda', '$2a$07$asxx54ahjppf45sd87a5auFL5K1.Cmt9ZheoVVuudOi5BCi10qWly', 'tuestaperedahf@gmail.com', '', 'directo', 1, '88cee69fafa201a2f327619d49ca42d8', '2020-08-15 03:09:37'),
(12, 'Yenmy Guizado Zuñiga', '$2a$07$asxx54ahjppf45sd87a5auFL5K1.Cmt9ZheoVVuudOi5BCi10qWly', 'guizado@gmail.com', '', 'directo', 1, 'd05777fb5263e7df96d91bd9743eb4a2', '2020-08-15 23:55:20'),
(13, 'Junior Castillo ', '$2a$07$asxx54ahjppf45sd87a5auJRR6foEJ7ynpjisKtbiKJbvJsoQ8VPS', 'junior@gmail.com', '', 'directo', 1, '7f1faf39a24fa6a1bd053b454fd97f11', '2020-08-22 23:41:08'),
(14, 'David Meza', 'null', 'davtec1309@gmail.com', 'https://lh3.googleusercontent.com/a/ACg8ocLHQnDzzWnX2w3ZJhhvmvilW5v6jXmJi9_RqP2aE5ow2CgcVpc=s96-c', 'google', 1, 'null', '2024-05-05 05:35:10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  ADD PRIMARY KEY (`id_h`);

--
-- Indices de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `planes`
--
ALTER TABLE `planes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recorrido`
--
ALTER TABLE `recorrido`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id_reserva`);

--
-- Indices de la tabla `reservas2`
--
ALTER TABLE `reservas2`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `restaurante`
--
ALTER TABLE `restaurante`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `testimonios`
--
ALTER TABLE `testimonios`
  ADD PRIMARY KEY (`id_testimonio`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_u`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administradores`
--
ALTER TABLE `administradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  MODIFY `id_h` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `notificaciones`
--
ALTER TABLE `notificaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `planes`
--
ALTER TABLE `planes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `recorrido`
--
ALTER TABLE `recorrido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `reservas2`
--
ALTER TABLE `reservas2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `restaurante`
--
ALTER TABLE `restaurante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `testimonios`
--
ALTER TABLE `testimonios`
  MODIFY `id_testimonio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_u` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
