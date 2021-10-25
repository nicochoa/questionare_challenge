-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 25-10-2021 a las 04:35:28
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `challenge`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ans1`
--

CREATE TABLE `ans1` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` text NOT NULL,
  `points` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ans1`
--

INSERT INTO `ans1` (`id`, `question_id`, `answer`, `points`) VALUES
(1, 1, '1 mes', '0'),
(2, 1, '3 meses', '1'),
(3, 1, '7 meses', '0'),
(4, 1, '1 año', '0'),
(5, 2, 'China', '0'),
(6, 2, 'Rusia', '0'),
(7, 2, 'Estados unidos', '0'),
(8, 2, 'India', '1'),
(9, 3, 'Octubre 13', '0'),
(10, 3, 'Octubre 31', '1'),
(11, 3, 'Octubre 30', '0'),
(12, 3, 'Noviembre 11', '0'),
(13, 4, 'JPG', '0'),
(14, 4, 'PNG', '0'),
(15, 4, 'WAV', '1'),
(16, 4, 'GIF', '0'),
(17, 5, 'Londres', '0'),
(18, 5, 'Bristol', '0'),
(19, 5, 'Manchester', '0'),
(20, 5, 'Liverpool', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ans2`
--

CREATE TABLE `ans2` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` text NOT NULL,
  `points` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ans2`
--

INSERT INTO `ans2` (`id`, `question_id`, `answer`, `points`) VALUES
(1, 1, 'Dalí', '0'),
(2, 1, 'Van Gogh', '0'),
(3, 1, 'Picasso', '1'),
(4, 1, 'Monet', '0'),
(5, 2, 'Brasilia', '1'),
(6, 2, 'Río de Janeiro', '0'),
(7, 2, 'Sao Paulo', '0'),
(8, 2, 'Fortaleza', '0'),
(9, 3, 'Fútbol', '0'),
(10, 3, 'Hockey', '0'),
(11, 3, 'Boxeo', '0'),
(12, 3, 'Cricket', '1'),
(13, 4, 'Alfred Douglas', '0'),
(14, 4, 'George Orwell', '1'),
(15, 4, 'H. G. Wells', '0'),
(16, 4, 'Albert Camus', '0'),
(17, 5, '2010', '0'),
(18, 5, '2009', '0'),
(19, 5, '2008', '0'),
(20, 5, '2007', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ans3`
--

CREATE TABLE `ans3` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` text NOT NULL,
  `points` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ans3`
--

INSERT INTO `ans3` (`id`, `question_id`, `answer`, `points`) VALUES
(1, 1, 'Hugh Jackman', '1'),
(2, 1, 'Ryan Reynolds', '0'),
(3, 1, 'Chris Hemsworth', '0'),
(4, 1, 'Hugh Grant', '0'),
(5, 2, '18', '0'),
(6, 2, '21', '0'),
(7, 2, '23', '1'),
(8, 2, '25', '0'),
(9, 3, 'Colombia', '0'),
(10, 3, 'Brasil', '1'),
(11, 3, 'China', '0'),
(12, 3, 'Perú', '0'),
(13, 4, 'Estados Unidos', '0'),
(14, 4, 'Canadá', '0'),
(15, 4, 'Australia', '1'),
(16, 4, 'Reino Unido', '0'),
(17, 5, 'Stephenie Meyer', '0'),
(18, 5, 'Veronica Roth', '0'),
(19, 5, 'Suzanne Collins', '1'),
(20, 5, 'Jojo Moyes', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ans4`
--

CREATE TABLE `ans4` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` text NOT NULL,
  `points` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ans4`
--

INSERT INTO `ans4` (`id`, `question_id`, `answer`, `points`) VALUES
(1, 1, 'Burj Khalifa', '1'),
(2, 1, 'Torre de Shanghái', '0'),
(3, 1, 'One World Trade Center', '0'),
(4, 1, 'Abraj Al Bait', '0'),
(5, 2, '2010', '0'),
(6, 2, '2011', '1'),
(7, 2, '2012', '0'),
(8, 2, '2013', '0'),
(9, 3, 'Arizona', '0'),
(10, 3, 'Nevada', '1'),
(11, 3, 'Texas', '0'),
(12, 3, 'Oregon', '0'),
(13, 4, 'La magia', '0'),
(14, 4, 'Correr', '0'),
(15, 4, 'La gasolina', '0'),
(16, 4, 'Cocinar', '1'),
(17, 5, 'Kwanzaa', '0'),
(18, 5, 'Janucá', '0'),
(19, 5, 'Rosh Hashaná', '1'),
(20, 5, 'Yom Kipur', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ans5`
--

CREATE TABLE `ans5` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `answer` text NOT NULL,
  `points` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ans5`
--

INSERT INTO `ans5` (`id`, `question_id`, `answer`, `points`) VALUES
(1, 1, 'Cracovia', '0'),
(2, 1, 'Varsovia', '1'),
(3, 1, 'Bratislava', '0'),
(4, 1, 'Breslavia', '0'),
(5, 2, 'Lava líquida', '0'),
(6, 2, 'Gas', '1'),
(7, 2, 'Roca', '0'),
(8, 2, 'Carbón', '0'),
(9, 3, 'Rumania', '1'),
(10, 3, 'Bulgaria', '0'),
(11, 3, 'Serbia', '0'),
(12, 3, 'Croacia', '0'),
(13, 4, 'Aristóteles', '0'),
(14, 4, 'Sócrates', '0'),
(15, 4, 'Descartes', '1'),
(16, 4, 'Platón', '0'),
(17, 5, 'Electronic Arts', '0'),
(18, 5, 'Riot Games', '1'),
(19, 5, 'Activision', '0'),
(20, 5, 'Epic Games', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat1`
--

CREATE TABLE `cat1` (
  `id` int(11) NOT NULL,
  `questions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cat1`
--

INSERT INTO `cat1` (`id`, `questions`) VALUES
(1, '¿Cuál es la duración del curso?'),
(2, '¿Cuál es el segundo país más poblado?'),
(3, '¿Cuándo se celebra Halloween?'),
(4, '¿Cuál de estos no es un formato de imagen?'),
(5, '¿De qué cuidad son los Beatles?');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat2`
--

CREATE TABLE `cat2` (
  `id` int(11) NOT NULL,
  `questions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cat2`
--

INSERT INTO `cat2` (`id`, `questions`) VALUES
(1, '¿Quién pintó el \"Guernica\"?'),
(2, '¿Cuál es la capital de Brasil?'),
(3, '¿Cuál es el deporte más popular en la India?'),
(4, '¿Cuál era el seudónimo del escritor Eric Arthur Blair?'),
(5, '¿En qué año salió el primer modelo de iPhone?');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat3`
--

CREATE TABLE `cat3` (
  `id` int(11) NOT NULL,
  `questions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cat3`
--

INSERT INTO `cat3` (`id`, `questions`) VALUES
(1, '¿Qué actor interpretó a Wolverine?'),
(2, '¿Cuántos títulos de Grand Slam tiene Serena Williams?'),
(3, '¿Qué país es el mayor productor de café en el mundo?'),
(4, '¿En qué país se originó la banda AC/DC?'),
(5, '¿Quién escribió  Los Juegos del Hambre?');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat4`
--

CREATE TABLE `cat4` (
  `id` int(11) NOT NULL,
  `questions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cat4`
--

INSERT INTO `cat4` (`id`, `questions`) VALUES
(1, '¿Cuál es el edificio más alto del mundo?'),
(2, '¿En qué año murió Steve Jobs?'),
(3, '¿En qué estado se encuentra el Área 51?'),
(4, 'Mageirocofobia es el miedo a:'),
(5, '¿Cómo se llama el año nuevo Judío?');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cat5`
--

CREATE TABLE `cat5` (
  `id` int(11) NOT NULL,
  `questions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cat5`
--

INSERT INTO `cat5` (`id`, `questions`) VALUES
(1, '¿Cuál es la capital de Polonia?'),
(2, '¿De qué está compuesto principalmente el sol?'),
(3, '¿En qué país se encuentra Transilvania?'),
(4, '¿A qué filósofo se le atribuye la frase \"Pienso, luego existo?'),
(5, '¿Qué empresa desarrolló el juego League of Legends?');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ans1`
--
ALTER TABLE `ans1`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ans2`
--
ALTER TABLE `ans2`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ans3`
--
ALTER TABLE `ans3`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ans4`
--
ALTER TABLE `ans4`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ans5`
--
ALTER TABLE `ans5`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cat1`
--
ALTER TABLE `cat1`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cat2`
--
ALTER TABLE `cat2`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cat3`
--
ALTER TABLE `cat3`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cat4`
--
ALTER TABLE `cat4`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cat5`
--
ALTER TABLE `cat5`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ans1`
--
ALTER TABLE `ans1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `ans2`
--
ALTER TABLE `ans2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `ans3`
--
ALTER TABLE `ans3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `ans4`
--
ALTER TABLE `ans4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `ans5`
--
ALTER TABLE `ans5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
