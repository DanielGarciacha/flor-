-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2025 a las 21:28:06
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `proooooyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aspectoevaluado`
--

CREATE TABLE `aspectoevaluado` (
  `id` int(11) NOT NULL,
  `aspecto` text NOT NULL,
  `descripcion` text DEFAULT NULL,
  `nivel` enum('ASPECTO DE FONDO','SUSTENTACIÓN') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aspectoevaluado`
--

INSERT INTO `aspectoevaluado` (`id`, `aspecto`, `descripcion`, `nivel`) VALUES
(1, 'Problema complejo de ingeniería', '¿Formula un problema complejo de ingeniería? ¿Está claramente identificado el problema?', 'ASPECTO DE FONDO'),
(2, 'Objetivos', '¿Se alcanzaron los objetivos propuestos?', 'ASPECTO DE FONDO'),
(3, 'Estado del Arte', '¿El soporte bibliográfico es pertinente y actualizado?', 'ASPECTO DE FONDO'),
(4, 'Metodología', '¿La metodología es acorde con el área de conocimiento?', 'ASPECTO DE FONDO'),
(5, 'Resultados', '¿Se desarrolla la solución propuesta y se presentan resultados tangibles?', 'ASPECTO DE FONDO'),
(6, 'Dominio del Tema', 'Demuestra dominio del tema durante la sustentación', 'SUSTENTACIÓN'),
(7, 'Diseño y contenido de la presentación', 'La presentación tiene un diseño claro y buen contenido', 'SUSTENTACIÓN'),
(8, 'Habilidades comunicativas', 'Se comunica de forma efectiva', 'SUSTENTACIÓN'),
(9, 'Manejo del tiempo', 'Cumple con el tiempo de exposición', 'SUSTENTACIÓN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `autorproyecto`
--

CREATE TABLE `autorproyecto` (
  `id` int(11) NOT NULL,
  `idproyecto` int(11) NOT NULL,
  `idestudiante` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `autorproyecto`
--

INSERT INTO `autorproyecto` (`id`, `idproyecto`, `idestudiante`) VALUES
(1, 1, 6),
(2, 1, 14),
(3, 2, 1),
(4, 3, 8),
(5, 4, 7),
(6, 4, 10),
(7, 5, 18),
(8, 6, 9),
(9, 7, 6),
(10, 7, 10),
(11, 8, 4),
(12, 9, 20),
(13, 9, 15),
(14, 10, 10),
(15, 10, 7),
(17, 11, 2),
(18, 11, 3),
(19, 12, 19),
(20, 12, 20),
(21, 13, 19),
(22, 13, 20),
(23, 14, 13),
(24, 14, 12),
(25, 15, 15),
(26, 15, 1),
(27, 16, 15),
(28, 16, 1),
(29, 17, 20),
(30, 17, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `primerapellido` varchar(50) NOT NULL,
  `segundoapellido` varchar(50) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `celular` varchar(10) NOT NULL,
  `idprograma` int(11) NOT NULL,
  `contraseña` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`id`, `nombre`, `primerapellido`, `segundoapellido`, `correo`, `celular`, `idprograma`, `contraseña`) VALUES
(1, 'Felipe', 'Sánchez', 'Martínez', 'felipe.sanchez@correo.edu.co', '3188545233', 1, 'FSM318!'),
(2, 'Valentina', 'Torres', 'García', 'valentina.torres@correo.edu.co', '3959171199', 2, 'VTG395!'),
(3, 'Valentina', 'Ramírez', 'Sánchez', 'valentina.ramirez@correo.edu.co', '3814616875', 4, 'VRS381!'),
(4, 'Luis', 'García', 'Castro', 'luis.garcia@correo.edu.co', '3968386659', 3, 'LGC396!'),
(5, 'Jorge', 'Gómez', 'López', 'jorge.gomez@correo.edu.co', '3318147302', 1, 'JGL331!'),
(6, 'Luis', 'López', 'Ramírez', 'luis.lopez@correo.edu.co', '3496668336', 6, 'LLR349!'),
(7, 'Laura', 'García', 'García', 'laura.garcia@correo.edu.co', '3369491408', 1, 'LGG336!'),
(8, 'Andrés', 'Torres', 'García', 'andres.torres@correo.edu.co', '3717529675', 6, 'ATG371!'),
(9, 'Juan', 'Rodríguez', 'García', 'juan.rodriguez@correo.edu.co', '3319310458', 2, 'JRG331!'),
(10, 'María', 'Torres', 'Rodríguez', 'maria.torres@correo.edu.co', '3644790711', 5, 'MTR364!'),
(11, 'Sofía', 'López', 'Ramírez', 'sofia.lopez@correo.edu.co', '3997349785', 2, 'SLR399!'),
(12, 'Andrés', 'Rodríguez', 'Martínez', 'andres.rodriguez@correo.edu.co', '3145699112', 5, 'ARM314!'),
(13, 'Laura', 'Martínez', 'Torres', 'laura.martinez@correo.edu.co', '3399732507', 1, 'LMT339!'),
(14, 'Jorge', 'Martínez', 'Ramírez', 'jorge.martinez@correo.edu.co', '3242680064', 2, 'JMR324!'),
(15, 'Carlos', 'Gómez', 'Martínez', 'carlos.gomez@correo.edu.co', '3348239371', 3, 'CGM334!'),
(16, 'Mateo', 'Pérez', 'Martínez', 'mateo.perez@correo.edu.co', '3501358782', 5, 'MPM350!'),
(17, 'Valentina', 'Gómez', 'Martínez', 'valentina.gomez@correo.edu.co', '3698134391', 3, 'VGM369!'),
(18, 'Camila', 'Castro', 'García', 'camila.castro@correo.edu.co', '3216588375', 2, 'CCG321!'),
(19, 'Ana', 'Torres', 'Castro', 'ana.torres@correo.edu.co', '3947674200', 4, 'ATC394!'),
(20, 'Sofía', 'Gómez', 'García', 'sofia.gomez@correo.edu.co', '3117774097', 4, 'SGG311!'),
(23, 'Enrique', 'Segoviano', 'Pilacuan', 'enrique.segoviano@correo.edu.co', '', 3, 'ESP300!');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `evaluacion`
--

CREATE TABLE `evaluacion` (
  `id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `idproyecto` int(11) NOT NULL,
  `idaspectoevaluado` int(11) NOT NULL,
  `valor` decimal(2,1) DEFAULT NULL,
  `observaciones` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `evaluacion`
--

INSERT INTO `evaluacion` (`id`, `fecha`, `idproyecto`, `idaspectoevaluado`, `valor`, `observaciones`) VALUES
(1, '2025-06-20', 1, 1, 4.3, 'Resultados adecuados'),
(2, '2025-06-20', 1, 2, 3.3, 'Excelente dominio del tema'),
(3, '2025-06-20', 1, 3, 4.5, 'Buen desempeño'),
(4, '2025-06-20', 1, 4, 3.4, 'Resultados adecuados'),
(5, '2025-12-05', 1, 4, 2.8, 'Mejora mani.'),
(6, '2025-06-20', 1, 6, 4.7, 'Excelente dominio del tema'),
(7, '2025-06-20', 1, 7, 4.8, 'Metodología coherente'),
(8, '2025-06-20', 1, 8, 4.8, 'Metodología coherente'),
(9, '2025-06-20', 1, 9, 4.1, 'Resultados adecuados'),
(10, '2025-06-01', 2, 1, 5.0, 'Resultados adecuados'),
(11, '2025-12-05', 2, 4, 2.8, 'Mejora mani.'),
(12, '2025-06-01', 2, 3, 4.0, 'Resultados adecuados'),
(13, '2025-06-01', 2, 4, 3.4, 'Excelente dominio del tema'),
(14, '2025-06-01', 2, 5, 4.8, 'Buen desempeño'),
(15, '2025-06-01', 2, 6, 3.1, 'Metodología coherente'),
(16, '2025-06-01', 2, 7, 4.2, 'Metodología coherente'),
(17, '2025-06-01', 2, 8, 4.9, 'Buen desempeño'),
(18, '2025-06-01', 2, 9, 4.9, 'Excelente dominio del tema'),
(19, '2025-05-25', 3, 1, 4.9, 'Buen desempeño'),
(20, '2025-05-25', 3, 2, 4.9, 'Buen desempeño'),
(21, '2025-05-25', 3, 3, 3.4, 'Buen desempeño'),
(22, '2025-05-25', 3, 4, 4.7, 'Debe mejorar la redacción'),
(23, '2025-05-25', 3, 5, 4.0, 'Resultados adecuados'),
(24, '2025-05-25', 3, 6, 4.0, 'Excelente dominio del tema'),
(25, '2025-05-25', 3, 7, 3.9, 'Debe mejorar la redacción'),
(26, '2025-05-25', 3, 8, 5.0, 'Debe mejorar la redacción'),
(27, '2025-05-25', 3, 9, 4.7, 'Resultados adecuados'),
(28, '2025-05-15', 4, 1, 4.1, 'Excelente dominio del tema'),
(29, '2025-05-15', 4, 2, 3.1, 'Buen desempeño'),
(30, '2025-05-15', 4, 3, 4.2, 'Buen desempeño'),
(31, '2025-05-15', 4, 4, 4.5, 'Excelente dominio del tema'),
(32, '2025-05-15', 4, 5, 3.7, 'Resultados adecuados'),
(33, '2025-05-15', 4, 6, 4.5, 'Debe mejorar la redacción'),
(34, '2025-05-15', 4, 7, 3.4, 'Resultados adecuados'),
(35, '2025-05-15', 4, 8, 4.2, 'Metodología coherente'),
(36, '2025-05-15', 4, 9, 4.8, 'Resultados adecuados'),
(37, '2025-04-08', 5, 1, 3.3, 'Resultados adecuados'),
(38, '2025-04-08', 5, 2, 4.4, 'Buen desempeño'),
(39, '2025-04-08', 5, 3, 4.9, 'Debe mejorar la redacción'),
(40, '2025-04-08', 5, 4, 3.1, 'Buen desempeño'),
(41, '2025-04-08', 5, 5, 5.0, 'Metodología coherente'),
(42, '2025-04-08', 5, 6, 3.6, 'Resultados adecuados'),
(43, '2025-04-08', 5, 7, 3.7, 'Buen desempeño'),
(44, '2025-04-08', 5, 8, 4.1, 'Buen desempeño'),
(45, '2025-04-08', 5, 9, 5.0, 'Debe mejorar la redacción'),
(46, '2025-06-07', 6, 1, 3.3, 'Excelente dominio del tema'),
(47, '2025-06-07', 6, 2, 3.2, 'Debe mejorar la redacción'),
(48, '2025-06-07', 6, 3, 3.7, 'Buen desempeño'),
(49, '2025-06-07', 6, 4, 3.0, 'Debe mejorar la redacción'),
(50, '2025-06-07', 6, 5, 4.4, 'Excelente dominio del tema'),
(51, '2025-06-07', 6, 6, 4.2, 'Resultados adecuados'),
(52, '2025-06-07', 6, 7, 4.2, 'Buen desempeño'),
(53, '2025-06-07', 6, 8, 3.5, 'Buen desempeño'),
(54, '2025-06-07', 6, 9, 3.6, 'Debe mejorar la redacción'),
(55, '2025-04-02', 7, 1, 4.7, 'Excelente dominio del tema'),
(56, '2025-04-02', 7, 2, 3.4, 'Metodología coherente'),
(57, '2025-04-02', 7, 3, 4.3, 'Resultados adecuados'),
(58, '2025-04-02', 7, 4, 3.4, 'Buen desempeño'),
(59, '2025-04-02', 7, 5, 3.5, 'Resultados adecuados'),
(60, '2025-04-02', 7, 6, 5.0, 'Excelente dominio del tema'),
(61, '2025-04-02', 7, 7, 4.2, 'Buen desempeño'),
(62, '2025-04-02', 7, 8, 4.4, 'Buen desempeño'),
(63, '2025-04-02', 7, 9, 5.0, 'Metodología coherente'),
(64, '2025-07-22', 8, 1, 4.5, 'Resultados adecuados'),
(65, '2025-07-22', 8, 2, 3.8, 'Excelente dominio del tema'),
(66, '2025-07-22', 8, 3, 4.4, 'Buen desempeño'),
(67, '2025-07-22', 8, 4, 4.7, 'Resultados adecuados'),
(68, '2025-07-22', 8, 5, 3.4, 'Buen desempeño'),
(69, '2025-07-22', 8, 6, 4.9, 'Metodología coherente'),
(70, '2025-07-22', 8, 7, 4.3, 'Buen desempeño'),
(71, '2025-07-22', 8, 8, 4.1, 'Excelente dominio del tema'),
(72, '2025-07-22', 8, 9, 4.8, 'Metodología coherente'),
(73, '2025-08-26', 9, 1, 3.6, 'Buen desempeño'),
(74, '2025-08-26', 9, 2, 3.6, 'Debe mejorar la redacción'),
(75, '2025-08-26', 9, 3, 4.5, 'Debe mejorar la redacción'),
(76, '2025-08-26', 9, 4, 4.5, 'Debe mejorar la redacción'),
(77, '2025-08-26', 9, 5, 3.2, 'Excelente dominio del tema'),
(78, '2025-08-26', 9, 6, 4.2, 'Buen desempeño'),
(79, '2025-08-26', 9, 7, 4.8, 'Excelente dominio del tema'),
(80, '2025-08-26', 9, 8, 3.4, 'Resultados adecuados'),
(81, '2025-08-26', 9, 9, 3.3, 'Buen desempeño'),
(82, '2025-10-27', 10, 1, 3.8, 'Excelente dominio del tema'),
(83, '2025-10-27', 10, 2, 4.8, 'Debe mejorar la redacción'),
(84, '2025-10-27', 10, 3, 3.5, 'Buen desempeño'),
(85, '2025-10-27', 10, 4, 4.7, 'Excelente dominio del tema'),
(86, '2025-10-27', 10, 5, 3.7, 'Metodología coherente'),
(87, '2025-10-27', 10, 6, 4.4, 'Excelente dominio del tema'),
(88, '2025-10-27', 10, 7, 4.2, 'Debe mejorar la redacción'),
(89, '2025-10-27', 10, 8, 3.9, 'Metodología coherente'),
(90, '2025-10-27', 10, 9, 3.3, 'Debe mejorar la redacción'),
(102, '2025-11-23', 12, 1, 4.0, 'BIEN'),
(103, '2025-11-23', 12, 2, 5.0, 'BIEN'),
(104, '2025-11-23', 12, 3, 5.0, 'BIEN'),
(105, '2025-11-23', 12, 4, 5.0, 'BIEN'),
(106, '2025-11-23', 12, 5, 4.9, 'BIEN'),
(107, '2025-11-23', 12, 6, 4.2, 'BIEN'),
(108, '2025-11-23', 12, 7, 4.8, 'BUENO'),
(109, '2025-11-23', 12, 8, 4.9, 'BACANO'),
(110, '2025-11-23', 12, 9, 4.9, 'BIEN'),
(111, '2025-11-23', 14, 1, 4.7, 'Perfecto'),
(112, '2025-11-23', 14, 2, 4.8, 'Cumple con todos los objetivos'),
(113, '2025-11-23', 14, 3, 3.6, 'Falta mejorar redacción'),
(114, '2025-11-23', 14, 4, 5.0, 'Uso adecuado y correcto'),
(115, '2025-11-23', 14, 5, 5.0, 'Los resultados son los deseados'),
(116, '2025-11-23', 14, 6, 4.0, 'Falta mejorar'),
(117, '2025-11-23', 14, 7, 4.6, 'adecuado y correcto'),
(118, '2025-11-23', 14, 8, 4.5, 'Perfecto, sabe expresarse'),
(119, '2025-11-23', 14, 9, 3.7, 'se paso un poquito pero muy bien hecho'),
(120, '2025-11-23', 16, 1, 4.1, 'bien'),
(121, '2025-11-23', 16, 2, 3.9, 'por mejorar'),
(122, '2025-11-23', 16, 3, 3.8, 'por mejorar'),
(123, '2025-11-23', 16, 4, 4.1, 'excelente pelao'),
(124, '2025-11-23', 16, 5, 4.9, 'resultados esperados'),
(125, '2025-11-23', 16, 6, 5.0, 'domina perfectamente'),
(126, '2025-11-23', 16, 7, 4.4, 'excelente'),
(127, '2025-11-23', 16, 8, 3.8, 'por mejorar'),
(128, '2025-11-23', 16, 9, 1.7, 'se excedio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facultad`
--

CREATE TABLE `facultad` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `facultad`
--

INSERT INTO `facultad` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Ingenierías', 'Facultad de Ingenierías'),
(2, 'Ciencias Económicas y Administrativas', 'Facultad de Ciencias Económicas y Administrativas'),
(3, 'Ciencias, Educación, Artes y Humanidades', 'Facultad de Ciencias, Educación, Artes y Humanidades'),
(4, 'Salud', 'Facultad de Ciencias de la Salud');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesional`
--

CREATE TABLE `profesional` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `primerapellido` varchar(50) NOT NULL,
  `segundoapellido` varchar(50) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `celular` varchar(10) NOT NULL,
  `idrol` int(11) DEFAULT NULL,
  `contraseña` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `profesional`
--

INSERT INTO `profesional` (`id`, `nombre`, `primerapellido`, `segundoapellido`, `correo`, `celular`, `idrol`, `contraseña`) VALUES
(1, 'Felipe', 'García', 'Pérez', 'felipe.garcia@institucion.edu.co', '3608004563', 1, 'FGP360!'),
(2, 'Luis', 'Castro', 'Ramírez', 'luis.castro@institucion.edu.co', '3154975191', 1, 'LCR315!'),
(3, 'Valentina', 'Martínez', 'Torres', 'valentina.martinez@institucion.edu.co', '3197637376', 1, 'VMT319!'),
(4, 'Luis', 'García', 'Martínez', 'luis.garcia@institucion.edu.co', '3778115138', 2, 'LGM377!'),
(5, 'Jorge', 'Gómez', 'Martínez', 'jorge.gomez@institucion.edu.co', '3545924033', 2, 'JGM354!'),
(6, 'Valentina', 'López', 'Castro', 'valentina.lopez@institucion.edu.co', '3245076773', 2, 'VLC324!'),
(7, 'Laura', 'López', 'Gómez', 'laura.lopez@institucion.edu.co', '3466267216', 3, 'LLG346!'),
(8, 'Luis', 'Rodríguez', 'Castro', 'luis.rodriguez@institucion.edu.co', '3934605863', 3, 'LRC393!'),
(9, 'Ana', 'Sánchez', 'Pérez', 'ana.sanchez@institucion.edu.co', '3242657042', 3, 'ASP324!'),
(10, 'Sofía', 'Rodríguez', 'Sánchez', 'sofia.rodriguez@institucion.edu.co', '3513865801', 4, 'SRS351!'),
(11, 'Carlos', 'García', 'Gómez', 'carlos.garcia@institucion.edu.co', '3166370904', 4, 'CGG316!'),
(12, 'Mateo', 'Martínez', 'Martínez', 'mateo.martinez@institucion.edu.co', '3277125333', 4, 'MMM327!'),
(14, 'David', 'Basto', 'Rambal', 'david.basto@institucion.edu.co', '1234567890', 5, 'DBR123!'),
(15, 'Miguel', 'Polo', 'Polo', 'miguel.polo@institucion.edu.co', '12345678', 4, 'MPP123!');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesionalproyecto`
--

CREATE TABLE `profesionalproyecto` (
  `id` int(11) NOT NULL,
  `idproyecto` int(11) NOT NULL,
  `idprofesional` int(11) NOT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `profesionalproyecto`
--

INSERT INTO `profesionalproyecto` (`id`, `idproyecto`, `idprofesional`, `descripcion`) VALUES
(5, 2, 2, 'Participa como Director del proyecto'),
(6, 2, 4, 'Participa como Jurado 1 del proyecto'),
(7, 2, 9, 'Participa como Jurado 2 del proyecto'),
(8, 2, 12, 'Participa como Asesor del proyecto'),
(9, 3, 3, 'Participa como Director del proyecto'),
(10, 3, 6, 'Participa como Jurado 1 del proyecto'),
(11, 3, 8, 'Participa como Jurado 2 del proyecto'),
(12, 3, 12, 'Participa como Asesor del proyecto'),
(13, 4, 2, 'Participa como Director del proyecto'),
(14, 4, 6, 'Participa como Jurado 1 del proyecto'),
(15, 4, 7, 'Participa como Jurado 2 del proyecto'),
(16, 4, 10, 'Participa como Asesor del proyecto'),
(17, 5, 3, 'Participa como Director del proyecto'),
(18, 5, 4, 'Participa como Jurado 1 del proyecto'),
(19, 5, 9, 'Participa como Jurado 2 del proyecto'),
(20, 5, 11, 'Participa como Asesor del proyecto'),
(21, 6, 2, 'Participa como Director del proyecto'),
(22, 6, 4, 'Participa como Jurado 1 del proyecto'),
(23, 6, 9, 'Participa como Jurado 2 del proyecto'),
(24, 6, 10, 'Participa como Asesor del proyecto'),
(25, 7, 2, 'Participa como Director del proyecto'),
(26, 7, 4, 'Participa como Jurado 1 del proyecto'),
(27, 7, 8, 'Participa como Jurado 2 del proyecto'),
(28, 7, 10, 'Participa como Asesor del proyecto'),
(29, 8, 3, 'Participa como Director del proyecto'),
(30, 8, 6, 'Participa como Jurado 1 del proyecto'),
(31, 8, 8, 'Participa como Jurado 2 del proyecto'),
(32, 8, 11, 'Participa como Asesor del proyecto'),
(33, 9, 2, 'Participa como Director del proyecto'),
(34, 9, 4, 'Participa como Jurado 1 del proyecto'),
(35, 9, 9, 'Participa como Jurado 2 del proyecto'),
(36, 9, 12, 'Participa como Asesor del proyecto'),
(37, 10, 2, 'Participa como Director del proyecto'),
(38, 10, 4, 'Participa como Jurado 1 del proyecto'),
(39, 10, 8, 'Participa como Jurado 2 del proyecto'),
(40, 10, 10, 'Participa como Asesor del proyecto'),
(44, 13, 11, 'Asesor asignado desde subida'),
(45, 13, 12, 'Asesor asignado desde subida'),
(46, 1, 4, NULL),
(47, 1, 7, NULL),
(48, 12, 5, NULL),
(49, 12, 9, NULL),
(52, 14, 6, NULL),
(53, 14, 8, NULL),
(54, 15, 12, 'Asesor asignado desde subida'),
(56, 16, 4, NULL),
(57, 16, 7, NULL),
(58, 17, 12, 'Asesor asignado desde subida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programa`
--

CREATE TABLE `programa` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `idfacultad` int(11) NOT NULL,
  `nivel` enum('Tecnico Profesional','Tecnologo','Profesional') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `programa`
--

INSERT INTO `programa` (`id`, `nombre`, `descripcion`, `idfacultad`, `nivel`) VALUES
(1, 'Ingeniería Eléctrica', 'Programa de Ingeniería Eléctrica', 1, 'Profesional'),
(2, 'Ingeniería Industrial', 'Programa de Ingeniería Industrial', 1, 'Profesional'),
(3, 'Administración de Negocios Internacionales', 'Programa de Administración de Negocios Internacionales', 2, 'Profesional'),
(4, 'Inteligencia de Negocios', 'Programa de Inteligencia de Negocios', 2, 'Profesional'),
(5, 'Licenciatura en Educación Básica Primaria', 'Programa de Licenciatura en Educación Básica Primaria', 3, 'Profesional'),
(6, 'Enfermería', 'Cuidado integral de la salud humana', 4, 'Profesional'),
(21, 'Ingeniería en Seguridad y Salud en el Trabajo', 'Formación en gestión de riesgos laborales y seguridad industrial', 1, 'Profesional'),
(22, 'Ingeniería Mecatrónica', 'Diseño e integración de sistemas mecánicos y electrónicos', 1, 'Profesional'),
(23, 'Ingeniería Telemática', 'Estudio y diseño de redes, telecomunicaciones y servicios de información', 1, 'Profesional'),
(24, 'Diseño Gráfico', 'Programa de diseño visual y comunicación gráfica', 3, 'Profesional'),
(25, 'Profesional en Estadística', 'Formación en análisis estadístico y métodos cuantitativos', 3, 'Profesional'),
(26, 'Profesional en Física Computacional', 'Integración de física teórica con modelado y simulación computacional', 3, 'Profesional');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyecto`
--

CREATE TABLE `proyecto` (
  `id` int(11) NOT NULL,
  `codigo` varchar(10) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha` date DEFAULT NULL,
  `archivo` varchar(255) DEFAULT NULL,
  `publicado` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proyecto`
--

INSERT INTO `proyecto` (`id`, `codigo`, `titulo`, `descripcion`, `fecha`, `archivo`, `publicado`) VALUES
(1, 'PRJ001', 'Proyecto de Investigación 1 sobre Innovación Académica', 'Trabajo de grado orientado al desarrollo de una propuesta de mejora tecnológica o administrativa.', '2025-01-10', NULL, 1),
(2, 'PRJ002', 'Proyecto de Investigación 2 sobre Innovación Académica', 'Trabajo de grado orientado al desarrollo de una propuesta de mejora tecnológica o administrativa.', '2025-01-15', NULL, 1),
(3, 'PRJ003', 'Proyecto de Investigación 3 sobre Innovación Académica', 'Trabajo de grado orientado al desarrollo de una propuesta de mejora tecnológica o administrativa.', '2025-01-28', NULL, 1),
(4, 'PRJ004', 'Proyecto de Investigación 4 sobre Innovación Académica', 'Trabajo de grado orientado al desarrollo de una propuesta de mejora tecnológica o administrativa.', '2025-02-05', NULL, 1),
(5, 'PRJ005', 'Proyecto de Investigación 5 sobre Innovación Académica', 'Trabajo de grado orientado al desarrollo de una propuesta de mejora tecnológica o administrativa.', '2025-02-17', NULL, 1),
(6, 'PRJ006', 'Proyecto de Investigación 6 sobre Innovación Académica', 'Trabajo de grado orientado al desarrollo de una propuesta de mejora tecnológica o administrativa.', '2025-03-03', NULL, 1),
(7, 'PRJ007', 'Proyecto de Investigación 7 sobre Innovación Académica', 'Trabajo de grado orientado al desarrollo de una propuesta de mejora tecnológica o administrativa.', '2025-03-18', NULL, 1),
(8, 'PRJ008', 'Proyecto de Investigación 8 sobre Innovación Académica', 'Trabajo de grado orientado al desarrollo de una propuesta de mejora tecnológica o administrativa.', '2025-04-02', NULL, 1),
(9, 'PRJ009', 'Proyecto de Investigación 9 sobre Innovación Académica', 'Trabajo de grado orientado al desarrollo de una propuesta de mejora tecnológica o administrativa.', '2025-04-21', NULL, 1),
(10, 'PRJ010', 'Proyecto de Investigación 10 sobre Innovación Académica', 'Trabajo de grado orientado al desarrollo de una propuesta de mejora tecnológica o administrativa.', '2025-05-07', NULL, 1),
(11, 'PRJ001', 'Sistema de Evaluación de Proyectos', 'Permite registrar evaluaciones, asignar jurados y gestionar resultados.', '2025-05-23', NULL, 1),
(12, 'PRJ0012', 'Como acabar con el Chavismo', 'Maduro es gay', '2025-11-14', '20251115042815_Universidad_Politecnica_de_Madrid.docx', 0),
(13, 'PRJ0013', 'Como mejorar la economia colombiana', 'Explicamos sobre como hacer que la economia de país aumente de manera adecuada y responsable ', '2025-11-20', '20251120165248_Taller_DHCP_SolucionDB.docx', 0),
(14, 'PRJ0014', 'Creacion de prototipo de robot inteligente con la capacidad de volar', 'Buscamos juntar las cosas como volar e innovar mediante la creación de un robot volador', '2025-11-23', '20251123214943_Cuando_la_mente_se_quiebraNUEVOII.docx', 0),
(15, 'PRJ0015', 'Creacion de robot', 'Hablamos de como crear un robot', '2025-11-23', '20251124004614_ALMA_ROTA.docx', 0),
(16, 'PRJ0016', 'Creacion de androide', 'creamos un androide', '2025-11-23', '20251124005133_ALMA_ROTA.docx', 0),
(17, 'PRJ0017', 'Creacion de sensor de movimiento', 'Un proyecto de como se crea y desarrolla un sensor capaz de detectar el movimiento en una sala', '2025-11-24', '20251124161829_ACEPTACION_DE_CARGOS_TECHFIX_SASOR.pdf', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Director', 'Encargado de la orientación general del proyecto'),
(2, 'Jurado 1', 'Primer evaluador del proyecto'),
(3, 'Jurado 2', 'Segundo evaluador del proyecto'),
(4, 'Asesor', 'Apoya el desarrollo metodológico del trabajo'),
(5, 'Admin', 'administrar todo el sistema');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aspectoevaluado`
--
ALTER TABLE `aspectoevaluado`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `aspecto` (`aspecto`) USING HASH;

--
-- Indices de la tabla `autorproyecto`
--
ALTER TABLE `autorproyecto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idproyecto` (`idproyecto`),
  ADD KEY `idestudiante` (`idestudiante`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idprograma` (`idprograma`);

--
-- Indices de la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idproyecto` (`idproyecto`),
  ADD KEY `idaspectoevaluado` (`idaspectoevaluado`);

--
-- Indices de la tabla `facultad`
--
ALTER TABLE `facultad`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `profesional`
--
ALTER TABLE `profesional`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idrol` (`idrol`);

--
-- Indices de la tabla `profesionalproyecto`
--
ALTER TABLE `profesionalproyecto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idproyecto` (`idproyecto`),
  ADD KEY `idprofesional` (`idprofesional`);

--
-- Indices de la tabla `programa`
--
ALTER TABLE `programa`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`),
  ADD KEY `idfacultad` (`idfacultad`);

--
-- Indices de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aspectoevaluado`
--
ALTER TABLE `aspectoevaluado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `autorproyecto`
--
ALTER TABLE `autorproyecto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT de la tabla `facultad`
--
ALTER TABLE `facultad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `profesional`
--
ALTER TABLE `profesional`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `profesionalproyecto`
--
ALTER TABLE `profesionalproyecto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `programa`
--
ALTER TABLE `programa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `proyecto`
--
ALTER TABLE `proyecto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `autorproyecto`
--
ALTER TABLE `autorproyecto`
  ADD CONSTRAINT `autorproyecto_ibfk_1` FOREIGN KEY (`idproyecto`) REFERENCES `proyecto` (`id`),
  ADD CONSTRAINT `autorproyecto_ibfk_2` FOREIGN KEY (`idestudiante`) REFERENCES `estudiante` (`id`);

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `estudiante_ibfk_1` FOREIGN KEY (`idprograma`) REFERENCES `programa` (`id`);

--
-- Filtros para la tabla `evaluacion`
--
ALTER TABLE `evaluacion`
  ADD CONSTRAINT `evaluacion_ibfk_1` FOREIGN KEY (`idproyecto`) REFERENCES `proyecto` (`id`),
  ADD CONSTRAINT `evaluacion_ibfk_2` FOREIGN KEY (`idaspectoevaluado`) REFERENCES `aspectoevaluado` (`id`);

--
-- Filtros para la tabla `profesional`
--
ALTER TABLE `profesional`
  ADD CONSTRAINT `profesional_ibfk_1` FOREIGN KEY (`idrol`) REFERENCES `rol` (`id`);

--
-- Filtros para la tabla `profesionalproyecto`
--
ALTER TABLE `profesionalproyecto`
  ADD CONSTRAINT `profesionalproyecto_ibfk_1` FOREIGN KEY (`idproyecto`) REFERENCES `proyecto` (`id`),
  ADD CONSTRAINT `profesionalproyecto_ibfk_2` FOREIGN KEY (`idprofesional`) REFERENCES `profesional` (`id`);

--
-- Filtros para la tabla `programa`
--
ALTER TABLE `programa`
  ADD CONSTRAINT `programa_ibfk_1` FOREIGN KEY (`idfacultad`) REFERENCES `facultad` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
