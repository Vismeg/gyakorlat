-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Már 27. 18:02
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `verseny`
--
CREATE DATABASE IF NOT EXISTS `verseny` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_hungarian_ci;
USE `verseny`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `csapat`
--

DROP TABLE IF EXISTS `csapat`;
CREATE TABLE `csapat` (
  `id` int(11) NOT NULL,
  `nev` text NOT NULL,
  `alapitva` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `csapat`
--

INSERT INTO `csapat` (`id`, `nev`, `alapitva`) VALUES
(1, 'Versenylovak', 1901),
(2, 'MintaPinty', 1948),
(3, 'Villámlás', 1967),
(4, 'SzélTiks', 1957),
(5, 'RemeteRákok', 1990),
(6, 'CsigaCsapat', 1919),
(7, 'OlajozottMénkű', 1999),
(8, 'TeljesGőz', 1934),
(9, 'Rakéták', 1982);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `korido`
--

DROP TABLE IF EXISTS `korido`;
CREATE TABLE `korido` (
  `id` int(11) NOT NULL,
  `palyaid` int(11) NOT NULL,
  `versenyzoid` int(11) NOT NULL,
  `korido` time NOT NULL,
  `kor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `korido`
--

INSERT INTO `korido` (`id`, `palyaid`, `versenyzoid`, `korido`, `kor`) VALUES
(1, 1, 1, '00:01:11', 1),
(2, 1, 2, '00:01:14', 1),
(3, 1, 3, '00:01:18', 1),
(4, 1, 4, '00:01:10', 1),
(5, 1, 5, '00:01:29', 1),
(6, 1, 6, '00:01:34', 1),
(7, 1, 7, '00:01:33', 1),
(8, 1, 8, '00:01:09', 1),
(9, 1, 9, '00:01:31', 1),
(10, 1, 10, '00:01:13', 1),
(11, 1, 11, '00:01:11', 1),
(12, 1, 12, '00:01:07', 1),
(13, 1, 13, '00:01:05', 1),
(14, 1, 14, '00:01:08', 1),
(15, 1, 15, '00:01:12', 1),
(16, 1, 16, '00:01:18', 1),
(17, 1, 17, '00:01:22', 1),
(18, 1, 18, '00:01:06', 1),
(19, 2, 1, '00:01:20', 1),
(20, 2, 2, '00:01:06', 1),
(21, 2, 3, '00:01:29', 1),
(22, 2, 4, '00:01:15', 1),
(23, 2, 5, '00:01:05', 1),
(24, 2, 6, '00:01:17', 1),
(25, 2, 7, '00:01:05', 1),
(26, 2, 8, '00:01:08', 1),
(27, 2, 9, '00:01:27', 1),
(28, 2, 10, '00:01:13', 1),
(29, 2, 11, '00:01:14', 1),
(30, 2, 12, '00:01:25', 1),
(31, 2, 13, '00:01:28', 1),
(32, 2, 14, '00:01:30', 1),
(33, 2, 15, '00:01:14', 1),
(34, 2, 16, '00:01:25', 1),
(35, 2, 17, '00:01:08', 1),
(36, 2, 18, '00:01:06', 1),
(37, 3, 1, '00:01:11', 1),
(38, 3, 2, '00:01:20', 1),
(39, 3, 3, '00:01:05', 1),
(40, 3, 4, '00:01:19', 1),
(41, 3, 5, '00:01:27', 1),
(42, 3, 6, '00:01:09', 1),
(43, 3, 7, '00:01:08', 1),
(44, 3, 8, '00:01:24', 1),
(45, 3, 9, '00:01:18', 1),
(46, 3, 10, '00:01:13', 1),
(47, 3, 11, '00:01:15', 1),
(48, 3, 12, '00:01:06', 1),
(49, 3, 13, '00:01:34', 1),
(50, 3, 14, '00:01:17', 1),
(51, 3, 15, '00:01:16', 1),
(52, 3, 16, '00:01:23', 1),
(53, 3, 17, '00:01:07', 1),
(54, 3, 18, '00:01:15', 1),
(55, 4, 1, '00:01:11', 1),
(56, 4, 2, '00:01:11', 1),
(57, 4, 3, '00:01:30', 1),
(58, 4, 4, '00:01:12', 1),
(59, 4, 5, '00:01:19', 1),
(60, 4, 6, '00:01:24', 1),
(61, 4, 7, '00:01:11', 1),
(62, 4, 8, '00:01:13', 1),
(63, 4, 9, '00:01:10', 1),
(64, 4, 10, '00:01:05', 1),
(65, 4, 11, '00:01:12', 1),
(66, 4, 12, '00:01:19', 1),
(67, 4, 13, '00:01:17', 1),
(68, 4, 14, '00:01:06', 1),
(69, 4, 15, '00:01:29', 1),
(70, 4, 16, '00:01:14', 1),
(71, 4, 17, '00:01:12', 1),
(72, 4, 18, '00:01:32', 1),
(73, 5, 1, '00:01:05', 1),
(74, 5, 2, '00:01:18', 1),
(75, 5, 3, '00:01:26', 1),
(76, 5, 4, '00:01:09', 1),
(77, 5, 5, '00:01:29', 1),
(78, 5, 6, '00:01:31', 1),
(79, 5, 7, '00:01:33', 1),
(80, 5, 8, '00:01:08', 1),
(81, 5, 9, '00:01:09', 1),
(82, 5, 10, '00:01:22', 1),
(83, 5, 11, '00:01:16', 1),
(84, 5, 12, '00:01:22', 1),
(85, 5, 13, '00:01:25', 1),
(86, 5, 14, '00:01:23', 1),
(87, 5, 15, '00:01:33', 1),
(88, 5, 16, '00:01:06', 1),
(89, 5, 17, '00:01:22', 1),
(90, 5, 18, '00:01:21', 1),
(91, 6, 1, '00:01:32', 1),
(92, 6, 2, '00:01:32', 1),
(93, 6, 3, '00:01:19', 1),
(94, 6, 4, '00:01:11', 1),
(95, 6, 5, '00:01:24', 1),
(96, 6, 6, '00:01:34', 1),
(97, 6, 7, '00:01:12', 1),
(98, 6, 8, '00:01:14', 1),
(99, 6, 9, '00:01:26', 1),
(100, 6, 10, '00:01:26', 1),
(101, 6, 11, '00:01:28', 1),
(102, 6, 12, '00:01:25', 1),
(103, 6, 13, '00:01:21', 1),
(104, 6, 14, '00:01:31', 1),
(105, 6, 15, '00:01:18', 1),
(106, 6, 16, '00:01:28', 1),
(107, 6, 17, '00:01:13', 1),
(108, 6, 18, '00:01:13', 1),
(109, 1, 1, '00:01:05', 2),
(110, 1, 2, '00:01:07', 2),
(111, 1, 3, '00:01:15', 2),
(112, 1, 4, '00:01:21', 2),
(113, 1, 5, '00:01:28', 2),
(114, 1, 6, '00:01:13', 2),
(115, 1, 7, '00:01:10', 2),
(116, 1, 8, '00:01:20', 2),
(117, 1, 9, '00:01:14', 2),
(118, 1, 10, '00:01:09', 2),
(119, 1, 11, '00:01:27', 2),
(120, 1, 12, '00:01:07', 2),
(121, 1, 13, '00:01:20', 2),
(122, 1, 14, '00:01:24', 2),
(123, 1, 15, '00:01:32', 2),
(124, 1, 16, '00:01:30', 2),
(125, 1, 17, '00:01:29', 2),
(126, 1, 18, '00:01:27', 2),
(127, 2, 1, '00:01:22', 2),
(128, 2, 2, '00:01:12', 2),
(129, 2, 3, '00:01:22', 2),
(130, 2, 4, '00:01:15', 2),
(131, 2, 5, '00:01:21', 2),
(132, 2, 6, '00:01:34', 2),
(133, 2, 7, '00:01:07', 2),
(134, 2, 8, '00:01:27', 2),
(135, 2, 9, '00:01:09', 2),
(136, 2, 10, '00:01:14', 2),
(137, 2, 11, '00:01:22', 2),
(138, 2, 12, '00:01:09', 2),
(139, 2, 13, '00:01:30', 2),
(140, 2, 14, '00:01:22', 2),
(141, 2, 15, '00:01:05', 2),
(142, 2, 16, '00:01:16', 2),
(143, 2, 17, '00:01:25', 2),
(144, 2, 18, '00:01:31', 2),
(145, 3, 1, '00:01:21', 2),
(146, 3, 2, '00:01:06', 2),
(147, 3, 3, '00:01:22', 2),
(148, 3, 4, '00:01:32', 2),
(149, 3, 5, '00:01:28', 2),
(150, 3, 6, '00:01:16', 2),
(151, 3, 7, '00:01:11', 2),
(152, 3, 8, '00:01:29', 2),
(153, 3, 9, '00:01:19', 2),
(154, 3, 10, '00:01:29', 2),
(155, 3, 11, '00:01:24', 2),
(156, 3, 12, '00:01:12', 2),
(157, 3, 13, '00:01:13', 2),
(158, 3, 14, '00:01:16', 2),
(159, 3, 15, '00:01:30', 2),
(160, 3, 16, '00:01:12', 2),
(161, 3, 17, '00:01:13', 2),
(162, 3, 18, '00:01:31', 2),
(163, 4, 1, '00:01:11', 2),
(164, 4, 2, '00:01:24', 2),
(165, 4, 3, '00:01:21', 2),
(166, 4, 4, '00:01:11', 2),
(167, 4, 5, '00:01:07', 2),
(168, 4, 6, '00:01:30', 2),
(169, 4, 7, '00:01:06', 2),
(170, 4, 8, '00:01:07', 2),
(171, 4, 9, '00:01:07', 2),
(172, 4, 10, '00:01:07', 2),
(173, 4, 11, '00:01:05', 2),
(174, 4, 12, '00:01:21', 2),
(175, 4, 13, '00:01:19', 2),
(176, 4, 14, '00:01:07', 2),
(177, 4, 15, '00:01:22', 2),
(178, 4, 16, '00:01:25', 2),
(179, 4, 17, '00:01:31', 2),
(180, 4, 18, '00:01:16', 2),
(181, 5, 1, '00:01:12', 2),
(182, 5, 2, '00:01:16', 2),
(183, 5, 3, '00:01:25', 2),
(184, 5, 4, '00:01:30', 2),
(185, 5, 5, '00:01:14', 2),
(186, 5, 6, '00:01:09', 2),
(187, 5, 7, '00:01:15', 2),
(188, 5, 8, '00:01:27', 2),
(189, 5, 9, '00:01:05', 2),
(190, 5, 10, '00:01:21', 2),
(191, 5, 11, '00:01:18', 2),
(192, 5, 12, '00:01:34', 2),
(193, 5, 13, '00:01:15', 2),
(194, 5, 14, '00:01:31', 2),
(195, 5, 15, '00:01:12', 2),
(196, 5, 16, '00:01:16', 2),
(197, 5, 17, '00:01:08', 2),
(198, 5, 18, '00:01:32', 2),
(199, 6, 1, '00:01:10', 2),
(200, 6, 2, '00:01:21', 2),
(201, 6, 3, '00:01:08', 2),
(202, 6, 4, '00:01:23', 2),
(203, 6, 5, '00:01:21', 2),
(204, 6, 6, '00:01:24', 2),
(205, 6, 7, '00:01:10', 2),
(206, 6, 8, '00:01:16', 2),
(207, 6, 9, '00:01:08', 2),
(208, 6, 10, '00:01:25', 2),
(209, 6, 11, '00:01:28', 2),
(210, 6, 12, '00:01:06', 2),
(211, 6, 13, '00:01:29', 2),
(212, 6, 14, '00:01:20', 2),
(213, 6, 15, '00:01:07', 2),
(214, 6, 16, '00:01:17', 2),
(215, 6, 17, '00:01:32', 2),
(216, 6, 18, '00:01:14', 2);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `palya`
--

DROP TABLE IF EXISTS `palya`;
CREATE TABLE `palya` (
  `id` int(11) NOT NULL,
  `nev` text NOT NULL,
  `hossz` int(11) NOT NULL,
  `orszag` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `palya`
--

INSERT INTO `palya` (`id`, `nev`, `hossz`, `orszag`) VALUES
(1, 'Gran Prix Circuit', 4, 'Anglia'),
(2, 'International Circuit', 3, 'Belgium'),
(3, 'Record Raceway', 4, 'Franciaország'),
(4, 'Red Ring', 3, 'Olaszország'),
(5, 'Autodrome', 4, 'Németország'),
(6, 'StreetRing', 4, 'Monaco');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `versenyzo`
--

DROP TABLE IF EXISTS `versenyzo`;
CREATE TABLE `versenyzo` (
  `id` int(11) NOT NULL,
  `nev` text NOT NULL,
  `eletkor` int(3) NOT NULL,
  `csapatid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `versenyzo`
--

INSERT INTO `versenyzo` (`id`, `nev`, `eletkor`, `csapatid`) VALUES
(1, 'Fürge Ferenc', 29, 1),
(2, 'Sebes Szilárd', 27, 1),
(3, 'Szapora Szervác', 19, 2),
(4, 'Rohanó Róbert', 26, 2),
(5, 'Villámgyors Vilmos', 35, 3),
(6, 'Rapid Roland', 28, 3),
(7, 'Szélsebes Szerpentínia', 27, 4),
(8, 'Rohamos Rebeka', 26, 4),
(9, 'Lendületes Levente', 27, 5),
(10, 'Száguldó Simon', 20, 5),
(11, 'Szélvész Sára', 22, 6),
(12, 'Gyors György', 29, 6),
(13, 'Égető Erik', 21, 7),
(14, 'Élénk Egon', 25, 7),
(15, 'Expressz Ernő', 30, 8),
(16, 'Heves Henrik', 29, 8),
(17, 'Nyílsebes Nóra', 20, 9),
(18, 'Postakocsi Petra', 19, 9);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `csapat`
--
ALTER TABLE `csapat`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `korido`
--
ALTER TABLE `korido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `palyaid` (`palyaid`),
  ADD KEY `versenyzoid` (`versenyzoid`);

--
-- A tábla indexei `palya`
--
ALTER TABLE `palya`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `versenyzo`
--
ALTER TABLE `versenyzo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `csapatid` (`csapatid`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `csapat`
--
ALTER TABLE `csapat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT a táblához `korido`
--
ALTER TABLE `korido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT a táblához `palya`
--
ALTER TABLE `palya`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT a táblához `versenyzo`
--
ALTER TABLE `versenyzo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `korido`
--
ALTER TABLE `korido`
  ADD CONSTRAINT `korido_ibfk_1` FOREIGN KEY (`versenyzoid`) REFERENCES `versenyzo` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `korido_ibfk_2` FOREIGN KEY (`palyaid`) REFERENCES `palya` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Megkötések a táblához `versenyzo`
--
ALTER TABLE `versenyzo`
  ADD CONSTRAINT `versenyzo_ibfk_1` FOREIGN KEY (`csapatid`) REFERENCES `csapat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
