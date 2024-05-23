-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Maj 23, 2024 at 10:55 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dziennik`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `oceny`
--

CREATE TABLE `oceny` (
  `id` int(11) NOT NULL,
  `uczen` varchar(100) DEFAULT NULL,
  `przedmiot` varchar(100) DEFAULT NULL,
  `ocena` int(11) DEFAULT NULL,
  `data` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `oceny`
--

INSERT INTO `oceny` (`id`, `uczen`, `przedmiot`, `ocena`, `data`) VALUES
(3, 'Kowal', 'Historia', 3, '2024-05-23'),
(4, 'Janek', 'Matematyka', 6, '2024-05-23'),
(5, 'Janek', 'Aplikacje ', 3, '2024-05-23'),
(6, 'Janek', 'Aplikacje ', 3, '2024-05-23'),
(7, 'Janek', 'Aplikacje ', 5, '2024-05-23'),
(8, 'Jan', 'Aplikacje ', 6, '2024-05-23'),
(9, 'Jan', 'Aplikacje ', 6, '2024-05-23'),
(10, 'Mateusz', 'Matematyka', 3, '2024-05-23'),
(11, 'Mateusz', 'Historia', 4, '2024-05-23');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `plan`
--

CREATE TABLE `plan` (
  `id` int(11) NOT NULL,
  `dzien` varchar(50) DEFAULT NULL,
  `godzina` varchar(50) DEFAULT NULL,
  `przedmiot` varchar(100) DEFAULT NULL,
  `nauczyciel` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plan`
--

INSERT INTO `plan` (`id`, `dzien`, `godzina`, `przedmiot`, `nauczyciel`) VALUES
(6, '10', '10:35', 'Historia', 'Marek'),
(7, '10', '10:35', 'Historia', 'Marek'),
(8, '10', '10:35', 'Historia', 'Marek'),
(9, '5', '16:15', 'Aplikacje ', 'Zawadzki'),
(10, '21', '10:35', 'Historia', 'Marek'),
(11, '21', '9:45', 'Aplikacje ', 'Marek'),
(12, '4', '9:45', 'Historia', 'Zawadzki'),
(13, '4', '9:45', 'Historia', 'Zawadzki'),
(14, '5', '17:15', 'Aplikacje ', 'Zawadzki');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `oceny`
--
ALTER TABLE `oceny`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `oceny`
--
ALTER TABLE `oceny`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `plan`
--
ALTER TABLE `plan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
