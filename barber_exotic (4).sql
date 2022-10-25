-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-06-2022 a las 04:32:12
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `barber_exotic`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `usuario` varchar(50) DEFAULT NULL,
  `contraseña` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`usuario`, `contraseña`) VALUES
('administrador', '12345'),
('admin34@gmail.com', '13456'),
('santt@gmail.com', '134578'),
('nelsonddf@gmail.com', '456789'),
('crisst@gmail.com', '434320'),
('dandf@gmail.com', '20209'),
('tamyorr@gmail.com', '26345'),
('carolhg@gmail.com', '090805'),
('derekstpm@gmail.com', '71313'),
('dovecameron@gmail.com', '345672'),
('carlosare@gmail.com', '7789'),
('casemiro@gmail.com', '89999'),
('tomasw@gmail.com', '45456778'),
('nicolekidman@gmail.com', '10004'),
('andrew@gmail.com', '10005');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `area`
--

CREATE TABLE `area` (
  `Id_area` int(11) NOT NULL,
  `Nombre_area` varchar(20) NOT NULL,
  `Descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `area`
--

INSERT INTO `area` (`Id_area`, `Nombre_area`, `Descripcion`) VALUES
(1, 'manicure', 'se encarga del decorado de servicios especialmente de las manos y uñas.'),
(2, 'pedicure', 'se encarga especialmente del decorado de las uñas de los pies.'),
(3, 'tattoos', 'encargados de detallado de la piel y pigmentar zonas especiales.'),
(4, 'barberos', 'encargados precisamente en el corte de cabello de los hombres.'),
(5, 'tinturas', 'encargadas especialmente de pigmentar el cabello del color que sea y con los mejores tratamientos.'),
(6, 'depilación', 'encargada de el trato y cuidado de la parte facial del hombre o mujer, tratamiento que se hace con cera.'),
(7, 'micropigmentación', 'el trato especial para la postura de las pestañas.'),
(8, 'keratina', 'encargadas de aplicar keratina al cabello para alisarlo y darle un mejor estilo.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `Id_categoria` int(11) NOT NULL,
  `Nombre_categoria` varchar(100) NOT NULL,
  `Detalle_categoria` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`Id_categoria`, `Nombre_categoria`, `Detalle_categoria`) VALUES
(1, 'shampoos', 'zona especial encargada del cuidado del cabello, con tratamientos naturales.'),
(2, 'geles ', 'para fijar el cabello y darle estilo.'),
(3, 'arcilla', 'mascarillas faciales.'),
(4, 'alcohol', 'especialmente para cuidado de manos y protección.'),
(5, 'tintes', 'son solo para cabello y de todos los colores.'),
(6, 'cremas', 'especiales para cabello y cuidado.'),
(7, 'keratinas', 'se venden por individual para alisar cabello.'),
(8, 'maquillaje', 'para mujeres, hay de todo tipo y toda marca.'),
(9, 'aceites', 'especialmente para la piel.'),
(10, 'piercing', 'un producto especialmente para perforaciones y estilo.'),
(11, 'esmaltes', 'especial para las uñas y con distintos colores.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `Id_comentario` int(11) NOT NULL,
  `Comentario` varchar(200) NOT NULL,
  `Fecha_comentario` date NOT NULL,
  `Id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`Id_comentario`, `Comentario`, `Fecha_comentario`, `Id_usuario`) VALUES
(1, 'un buen servicio y muy cómodo.', '2022-05-11', 14),
(2, 'Hola, me encanta los servicios y sus productos son muy buenos.', '2022-06-08', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `ID_Empleados` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Contacto` int(10) NOT NULL,
  `Horario` varchar(50) NOT NULL,
  `Id_area` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`ID_Empleados`, `Nombre`, `Contacto`, `Horario`, `Id_area`) VALUES
(1, 'Eduardo Castaño', 32098345, '9:00 am descanso a 1:00pm a 4:00 pm', 4),
(2, 'Carlos Torres', 301314784, '9:00am descanso a 1:00pm a 4:00pm', 4),
(3, 'Adam Smit', 302345671, '9:00am descanso a 1:00pm a 4:00pm', 4),
(4, 'Pedro Casanare ', 30467426, '9:00am descanso a 1:00pm a 4:00pm', 4),
(5, 'Daniela Córdova ', 309876543, '10:00 am descanso a 1:00pm a 3:00 pm', 1),
(6, 'Alexandra Caro ', 321890876, '10:00 am descanso a 1:00pm a 3:00 pm', 1),
(7, 'Carla Stom', 314564328, '10:00 am descanso a 1:00pm a 3:00 pm', 1),
(8, 'Tatiana Rodríguez', 314234568, '10:00 am descanso a 1:00pm a 3:00 pm', 2),
(9, 'Dora Mesa', 321498787, '10:00 am descanso a 1:00pm a 3:00 pm', 2),
(10, 'Simón Alegría', 31098563, '9:00 am descanso a 12:00pm a 2:00 pm', 3),
(11, 'Alex Trujillo', 31089787, '10:00 am descanso a 1:00pm a 3:00 pm', 3),
(12, 'Dana Muñoz', 31456234, '9:00 am descanso a 1:00pm a 4:00 pm', 5),
(13, 'Zara Valdés', 30334526, '10:00 am descanso a 1:00pm a 3:00 pm', 6),
(14, 'Tomas García', 301314786, '11:00 am descanso a 1:00pm a 3:00 pm', 7),
(15, 'Marta Cubillos', 304345671, '10:00 am descanso a 1:00pm a 3:00 pm', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `Id_factura` int(11) NOT NULL,
  `Fecha_factura` date NOT NULL,
  `Total` varchar(20) NOT NULL,
  `Id_usuario` int(11) NOT NULL,
  `Id_pago` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`Id_factura`, `Fecha_factura`, `Total`, `Id_usuario`, `Id_pago`) VALUES
(1011, '2022-03-04', '15.000', 1, 1),
(1012, '2022-04-07', '500.000', 13, 3),
(1013, '2022-04-07', '15.000', 85, 4),
(1014, '2022-04-08', '20.000', 7, 2),
(1015, '2022-05-12', '25.000', 10, 5),
(1016, '2022-06-01', '28.000', 7, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `Id_horario` int(11) NOT NULL,
  `Disponibilidad` varchar(50) NOT NULL,
  `Fecha` date NOT NULL,
  `Id_usuario` int(11) NOT NULL,
  `Id_servicio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `horario`
--

INSERT INTO `horario` (`Id_horario`, `Disponibilidad`, `Fecha`, `Id_usuario`, `Id_servicio`) VALUES
(111, 'domingo a domingo de 9:00am a 4:00pm', '2022-06-01', 14, 1101),
(112, 'domingo a domingo de 10:00am a 3:00pm', '2022-06-02', 9, 1102),
(113, 'domingo a domingo de 9:00am a 4:00pm', '2022-06-03', 3, 1103),
(114, 'domingo a domingo de 11:00am a 3:00pm', '2022-06-04', 11, 1108),
(115, 'domingo a domingo de 9:00am a 4:00pm', '2022-06-05', 2, 1101),
(116, 'domingo a domingo de 9:00am a 4:00pm', '2022-06-06', 12, 1101),
(117, 'domingo a domingo de 9:00am a 4:00pm', '2022-06-08', 6, 1101),
(118, 'domingo a domingo de 10:00am a 3:00pm', '2022-06-08', 9, 1104);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `Id_pago` int(11) NOT NULL,
  `Metodo_pago` varchar(50) NOT NULL,
  `Detalle_pago` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pago`
--

INSERT INTO `pago` (`Id_pago`, `Metodo_pago`, `Detalle_pago`) VALUES
(1, 'efectivo', 'aquí se genera un cobro en efectivo.'),
(2, 'tarjeta de crédito', 'aquí se genera un cobro, responde con método crédito.'),
(3, 'tarjeta debito', 'se genera un cobro de tarjeta de debito.'),
(4, 'nequi', 'se genera un cobro por nequi.'),
(5, 'paypal', 'se genera un cobro por paypal.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `Id_pedidos` int(11) NOT NULL,
  `Cantidad` int(20) NOT NULL,
  `Id_productos` int(11) NOT NULL,
  `Id_factura` int(11) NOT NULL,
  `Id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `Id_productos` int(11) NOT NULL,
  `Nombre_p` varchar(50) NOT NULL,
  `Precio_p` int(20) NOT NULL,
  `Descripcion_p` varchar(100) NOT NULL,
  `Id_categorias_p` int(11) NOT NULL,
  `Id_factura` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`Id_productos`, `Nombre_p`, `Precio_p`, `Descripcion_p`, `Id_categorias_p`, `Id_factura`) VALUES
(1, 'keratinas small', 25, 'una keratina que sin duda te dejará un cabello lacio y sin necesidad de plancha.', 7, 1015),
(2, 'shampoo h&s', 28, 'un shampoo head and shoulders anti caspa.', 1, 1016);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `Id_servicios` int(11) NOT NULL,
  `Tipo_de_servicio` varchar(200) NOT NULL,
  `Precios_servicio` int(20) NOT NULL,
  `Id_Empleados` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`Id_servicios`, `Tipo_de_servicio`, `Precios_servicio`, `Id_Empleados`) VALUES
(1101, 'servicio enfocado al estilo y corte de cabello.', 15, 4),
(1102, 'servicio enfocado al arreglo y detallado de uñas de las manos.', 20, 5),
(1103, 'servicio enfocado al estilo del cabello, basándose en la pigmentación de este.', 25, 12),
(1104, 'este servicio se enfoca en la aplicación de keratinas.', 30, 15),
(1105, 'servicio especializado en el arreglo de las uñas de los pies.', 20, 9),
(1106, 'servicio enfocado al depilado de barba.', 15, 13),
(1107, 'servicios enfocados al detallado de la piel, con pigmentos que quedan impregnados a la piel.', 50, 10),
(1108, 'servicio enfocado a las cejas de las mujeres.', 500, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id_usuario` int(11) NOT NULL,
  `Nombre_usuario` varchar(50) NOT NULL,
  `Contraseña_usuario` varchar(20) NOT NULL,
  `Email_usuario` varchar(50) NOT NULL,
  `Contacto_u` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id_usuario`, `Nombre_usuario`, `Contraseña_usuario`, `Email_usuario`, `Contacto_u`) VALUES
(1, 'Daniel Felipe', '202219', 'daniel2002@gmail.com', 345261785),
(2, 'Carlos Pereira', '10098', 'carrl@gmail.com', 301320456),
(3, 'Miles Morales', '232420', 'milesmmr@gmail.com', 321456783),
(4, 'Tom Cruz', '46755', 'tomasc@gmail.com', 324567126),
(5, 'Ricardo Jhonson', '11200', 'richarddf@gmail.com', 304562342),
(6, 'Jonas Dunquerque', '54532', 'jonasdd@gmail.com', 301864828),
(7, 'Elle Faning', '77768', 'ellfnng@gmail.com', 33065431),
(8, 'Samuel Gutierrez', '0008021', 'samuelgtrs@gmail.com', 34567123),
(9, 'Sandra Muñoz', '388876', 'sandmunoz@gmail.com', 32561234),
(10, 'Mariela Trujillo', '23908070', 'marell@gmail.com', 30456821),
(11, 'Diana Cortez', '44445', 'dinnna@gmail.com', 3097212),
(12, 'Rodolfo Hernandez', '818765', 'rrdolfo@gmail.com', 32654334),
(13, 'Gloria Garcia', '332322', 'grgloria@gmail.com', 32908765),
(14, 'Albert hast', '454321', 'albertt@gmail.com', 32159090),
(85, 'edgar tr', '34521', 'edgr@barber.com', 324567890);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `area`
--
ALTER TABLE `area`
  ADD PRIMARY KEY (`Id_area`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`Id_categoria`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`Id_comentario`),
  ADD KEY `Id_usuario` (`Id_usuario`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`ID_Empleados`),
  ADD KEY `Id_area` (`Id_area`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`Id_factura`),
  ADD KEY `Id_usuario` (`Id_usuario`),
  ADD KEY `Id_pago` (`Id_pago`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD PRIMARY KEY (`Id_horario`),
  ADD KEY `Id_usuario` (`Id_usuario`),
  ADD KEY `Id_servicio` (`Id_servicio`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`Id_pago`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`Id_pedidos`),
  ADD KEY `Id_productos` (`Id_productos`),
  ADD KEY `Id_factura` (`Id_factura`),
  ADD KEY `Id_usuario` (`Id_usuario`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`Id_productos`),
  ADD KEY `Id_categorias_p` (`Id_categorias_p`),
  ADD KEY `Id_factura` (`Id_factura`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`Id_servicios`),
  ADD KEY `Id_Empleados` (`Id_Empleados`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_usuario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id_usuario`);

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `empleados_ibfk_2` FOREIGN KEY (`Id_area`) REFERENCES `area` (`Id_area`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id_usuario`),
  ADD CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`Id_pago`) REFERENCES `pago` (`Id_pago`);

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id_usuario`),
  ADD CONSTRAINT `horario_ibfk_2` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id_usuario`),
  ADD CONSTRAINT `horario_ibfk_3` FOREIGN KEY (`Id_servicio`) REFERENCES `servicios` (`Id_servicios`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`Id_productos`) REFERENCES `productos` (`Id_productos`),
  ADD CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`Id_factura`) REFERENCES `factura` (`Id_factura`),
  ADD CONSTRAINT `pedidos_ibfk_3` FOREIGN KEY (`Id_usuario`) REFERENCES `usuario` (`Id_usuario`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`Id_categorias_p`) REFERENCES `categoria` (`Id_categoria`),
  ADD CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`Id_factura`) REFERENCES `factura` (`Id_factura`);

--
-- Filtros para la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD CONSTRAINT `servicios_ibfk_1` FOREIGN KEY (`Id_Empleados`) REFERENCES `empleados` (`ID_Empleados`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
