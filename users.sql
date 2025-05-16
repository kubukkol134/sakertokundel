-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Czas generowania: 14 Paź 2024, 21:35
-- Wersja serwera: 10.5.23-MariaDB-10.cba+deb11u1
-- Wersja PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `jabcok7345`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `created_at`) VALUES
(2, 'Captain', '$2y$10$put8jgVnKLpDWPw.j97HausHBjxVY1pP4GTWmPWGywDcJGYR7ntWi', 'admin', '2024-09-30 10:14:20'),
(4, 'kaperolek', '$2y$10$9Ci0/fcLvnC2Gq8iMLyJDefE6iqkIJtTtVGogUjSYdTsrHLr5XQju', 'user', '2024-09-30 10:24:45'),
(6, 'Bazyli', '$2y$10$L6GCJ2kaxZAhgUJZSXhT7eK3UJLcj05mMAX7lmPat9jJwtdO7oQtC', 'admin', '2024-09-30 10:40:55'),
(7, 'Pogczkodan', '$2y$10$75aEMqy25H58Uvlec8bLo.r6k4oD5QH2GwX0gM/61oMIbWFroN1Wa', 'admin', '2024-09-30 10:45:24'),
(8, 'cwelium', '$2y$10$5uaQPJot1XVAI1KylJABOeXBw29jFh4z7M0RqIlzBDkXD0cWqXRU.', 'user', '2024-09-30 10:46:39'),
(9, 'Cejot', '$2y$10$BvO20H5cCpChN2UuRFcvquOBdvZpO2Zgd1ZCF4nkYVf1oKFmYfmWe', 'user', '2024-09-30 11:02:46'),
(10, 'Marcin', '$2y$10$z26FwGZDdz9JQSmfCF6pyupud3SmskCyc2WJ/ABi2EpS8B7geQfTG', 'user', '2024-09-30 11:03:45'),
(11, 'Myszon', '$2y$10$siGaVa76Tn5CXNCkDOTzVOBFDAQe/ljpGX/OYuAl1i5C8rnmv1b7e', 'admin', '2024-09-30 11:18:01');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
