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
-- Struktura tabeli dla tabeli `dowody`
--

CREATE TABLE `dowody` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `imie` varchar(255) NOT NULL,
  `nazwisko` varchar(255) NOT NULL,
  `pesel` varchar(11) NOT NULL,
  `adres` varchar(255) DEFAULT '',
  `birthdate` varchar(10) DEFAULT NULL,
  `plec` varchar(255) NOT NULL,
  `nazwisko_rodowe_ojca` varchar(255) NOT NULL,
  `nazwisko_rodowe_matki` varchar(255) NOT NULL,
  `miejsce_urodzenia` varchar(255) NOT NULL,
  `data_zameldowania` varchar(10) DEFAULT NULL,
  `ostatnia_aktualizacja` timestamp NOT NULL DEFAULT current_timestamp(),
  `seria_i_numer` varchar(255) NOT NULL,
  `termin_waznosci` varchar(10) DEFAULT NULL,
  `data_wydania` varchar(10) DEFAULT NULL,
  `imie_ojca` varchar(255) NOT NULL,
  `imie_matki` varchar(255) NOT NULL,
  `link_zdjecia` varchar(255) DEFAULT NULL,
  `miasto` varchar(255) NOT NULL,
  `unique_id` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Zrzut danych tabeli `dowody`
--

INSERT INTO `dowody` (`id`, `username`, `imie`, `nazwisko`, `pesel`, `adres`, `birthdate`, `plec`, `nazwisko_rodowe_ojca`, `nazwisko_rodowe_matki`, `miejsce_urodzenia`, `data_zameldowania`, `ostatnia_aktualizacja`, `seria_i_numer`, `termin_waznosci`, `data_wydania`, `imie_ojca`, `imie_matki`, `link_zdjecia`, `miasto`, `unique_id`) VALUES
(6, 'Bazyli', 'KONRAD', 'KOZŁOWSKI', '06425673811', '', '13.01.2006', 'MĘŻCZYZNA', 'KOZŁOWSKI', 'NOWAK', 'GLIWICE', '12.09.2018', '2024-09-30 14:07:48', 'CRZ657937', '24.10.2031', '24.10.2021', 'ARTUR', 'JOANNA', 'https://cdn.discordapp.com/attachments/838134018275803217/1287467704629985370/IMG_20240922_180440.jpg?ex=66fb8a7c&is=66fa38fc&hm=ad021998bc13b4acec241bb8f2497c14c689fa6b1cf1ec443a06e3b175dc1d30&', 'PREZYDENT MIASTA KATOWICE ', '66fab0b43d153'),
(4, 'Marcin', 'MICHAŁ', 'SOSNA', '05210169617', '', '21.07.2005', 'MĘŻCZYZNA', 'SOSNA', 'BORZĘCKA', 'SOSNOWIEC', '30.07.2005', '2024-09-30 11:17:46', 'FIS146294', '12.08.2033', '12.08.2023', 'JERZY', 'ANNA', 'https://media.discordapp.net/attachments/1165697798818254988/1290269980658503681/Messenger_creation_A0ABD68D-09A6-4CAF-BD1B-0F7573289622-removebg-preview.jpg?ex=66fbd90f&is=66fa878f&hm=d8e4e5f6372f95b5087c95abd2c2974b99ff017365f6b9a36ebeb342fd4939c0&', 'PREZYDENT MIASTA DĄBROWA GÓRNICZA', '66fa88da6e334'),
(5, 'Myszon', 'DAWID', 'MYSZONA', '05302900092', '', '29.10.2005', 'MĘŻCZYZNA', 'MYSZONA', 'OLEŚ', 'KATOWICE', '03.11.2005', '2024-09-30 11:20:50', 'CAS 420986', '28.09.2032', '28.09.2022', 'ARTUR', 'AGNIESZKA', 'https://media.discordapp.net/attachments/1165697798818254988/1290268809449570386/Messenger_creation_522855B6-4046-4972-BA56-C6C681152FAF.jpg?ex=66fbd7f8&is=66fa8678&hm=58d5477356caba507513df0f90f6a839c3291d79dd2bb5414bb608f0b5ddcff6&', 'BURMISTRZ MIASTA CZELADŹ ', '66fa8992f045d'),
(7, 'Captain', 'JAKUB', 'MAZUR', '06210815256', '', '08.01.2006', 'MĘŻCZYZNA', 'MAZUR', 'Nowak', 'KATOWICE', '08.01.2006', '2024-09-30 14:07:48', 'CRZ657937', '05.12.2032', '05.12.2022', 'MARCIN', 'MARTA', 'https://cdn.discordapp.com/attachments/1290667795436146802/1290667834464276512/IMG_20240930_175138.png?ex=66fd4b97&is=66fbfa17&hm=554b5c81b5116d571b6492732f2b3da0a03e25a31142cbff67d87822bfbc07f7&', 'PREZYDENT MIASTA KATOWICE ', '66fab0b43d154'),
(8, 'Myszon', 'Dawid', 'Myszona ', '05302900092', '', '29.10.2005', 'Mężczyzna', 'Myszona', 'Oleś ', 'Katowice ', '2005-11-03', '2024-10-01 05:22:42', 'FIP420986', '2032-09-28', '2022-09-28', 'Artur ', 'Agnieszka ', 'https://media.discordapp.net/attachments/1165697798818254988/1290268809449570386/Messenger_creation_522855B6-4046-4972-BA56-C6C681152FAF.jpg?ex=66fbd7f8&is=66fa8678&hm=58d5477356caba507513df0f90f6a839c3291d79dd2bb5414bb608f0b5ddcff6&', 'BURMISTRZ MIASTA CZELADŹ ', '66fb872246c88'),
(9, 'Myszon', 'Dawid', 'Myszona ', '05302900092', '', '29.10.2005', 'Mężczyzna', 'Myszona', 'Oleś ', 'Katowice', '2024-10-01', '2024-10-01 05:30:14', 'FIP420986', '2032-09-28', '2022-09-28', 'Artur', 'Agnieszka ', 'https://media.discordapp.net/attachments/839914446582841384/1288058439104462871/Messenger_creation_E37F0662-8D2C-4370-8F31-CE5241AE3085.png?ex=66f3cd66&is=66f27be6&hm=19d12e5ea9060ac7ce2f4bc83e90a948075c7cc50cd130e0e137d86e3ad3a39a&', 'BURMISTRZ MIASTA CZELADŹ ', '66fb88e6c0f68'),
(10, 'Myszon', 'Dawid', 'Myszona', '05302900092', '', '29.10.2005', 'Mężczyzna', 'Myszona ', 'Oleś ', 'Warszawa ', '2024-10-01', '2024-10-01 05:33:10', 'FIP420986', '2032-09-28', '2022-09-28', 'Artur ', 'Agnieszka ', 'https://media.discordapp.net/attachments/1165697798818254988/1290268809449570386/Messenger_creation_522855B6-4046-4972-BA56-C6C681152FAF.jpg?ex=66fbd7f8&is=66fa8678&hm=58d5477356caba507513df0f90f6a839c3291d79dd2bb5414bb608f0b5ddcff6&', 'BURMISTRZ MIASTA CZELADŹ ', '66fb89965d03b'),
(12, 'Myszon', 'Dawid', 'Myszona ', '05302900092', '', '29.10.2005', 'Mężczyzna', 'Myszona ', 'Oleś ', 'Warszawa ', '2024-10-10', '2024-10-01 12:44:04', 'FIP420986', '2032-09-28', '2022-09-28', 'Artur ', 'Agnieszka ', 'https://media.discordapp.net/attachments/1165697798818254988/1290268809449570386/Messenger_creation_522855B6-4046-4972-BA56-C6C681152FAF.jpg?ex=66fbd7f8&is=66fa8678&hm=58d5477356caba507513df0f90f6a839c3291d79dd2bb5414bb608f0b5ddcff6&', 'BURMISTRZ MIASTA CZELADŹ ', '66fbee94bbc1b'),
(13, 'Marcin', 'Michał', 'Solnik', '05210169617', '', '04.08.2005', 'Mężczyzna', 'Dębowiec', 'Heß', 'Katowice', '2005-09-09', '2024-10-01 13:31:49', 'CBG421834', '2033-10-06', '2023-10-09', 'Janusz ', 'Karolina', 'https://media.discordapp.net/attachments/1165697798818254988/1290269980658503681/Messenger_creation_A0ABD68D-09A6-4CAF-BD1B-0F7573289622-removebg-preview.jpg?ex=66fd2a8f&is=66fbd90f&hm=d2d908ae7ab3d650ebf39872e4e94ae7907b0f594b88cb8479e2e15644aef2e2&', 'PREZYDENT MIASTA DĄBROWA GÓRNICZA', '66fbf9c5e7f16'),
(14, 'Myszon', 'Dawid', 'Myszona ', '05302900092', '', '29.10.2005', 'Mężczyzna', 'Myszona', 'Oleś ', 'Warszawa ', '2024-09-10', '2024-10-02 12:55:03', 'FIP420986', '2032-09-28', '2022-09-28', 'Artur', 'Agnieszka ', 'https://media.discordapp.net/attachments/1165697798818254988/1290268809449570386/Messenger_creation_522855B6-4046-4972-BA56-C6C681152FAF.jpg?ex=66fbd7f8&is=66fa8678&hm=58d5477356caba507513df0f90f6a839c3291d79dd2bb5414bb608f0b5ddcff6&', 'BURMISTRZ MIASTA CZELADŹ ', '66fd42a781cba'),
(15, 'kaperolek', 'Kamil', 'Karkut', '06282789273', '', '27.08.2006', 'Mężczyzna', 'Karkut', 'Hula', 'Żywiec', '2006-12-03', '2024-10-03 11:39:35', 'FIP635241', '2027-11-03', '2017-11-03', 'Ferdynand', 'Anna', 'https://ibb.co/2hb9wnW', 'ŻYWIEC', '66fe8277e8121'),
(16, 'kaperolek', 'Kamil', 'Karkut', '06282789273', '', '27.08.2006', 'Mężczyzna', 'Karkut', 'Hula', 'Żywiec', '2006-12-03', '2024-10-03 11:40:33', 'FIP635241', '2027-11-03', '2017-11-03', 'Ferdynand', 'Anna', 'https://imgur.com/a/fns6HD9', 'ŻYWIEC', '66fe82b14848b'),
(17, 'kaperolek', 'Kamil', 'Karkut', '06282789273', '', '27.08.2006', 'Mężczyzna', 'Karkut', 'Hula', 'Żywiec', '2006-12-03', '2024-10-03 11:41:02', 'FIP635241', '2027-11-03', '2017-11-03', 'Ferdynand', 'Anna', 'https://i.imgur.com/loMWuGF.jpeg', 'ŻYWIEC', '66fe82ce54cd2'),
(18, 'Myszon', 'Dawid', 'Myszona', '05302900092', '', '29.10.2005', 'Mężczyzna', 'Myszona ', 'Jodełka ', 'Warszawa ', '2005-11-03', '2024-10-03 12:44:48', 'FIP420986', '2032-09-28', '2022-09-28', 'Artur', 'Marcinna', 'https://media.discordapp.net/attachments/1165697798818254988/1290268809449570386/Messenger_creation_522855B6-4046-4972-BA56-C6C681152FAF.jpg?ex=66fbd7f8&is=66fa8678&hm=58d5477356caba507513df0f90f6a839c3291d79dd2bb5414bb608f0b5ddcff6&', 'BURMISTRZ MIASTA CZELADŹ ', '66fe91c089b95'),
(19, 'Myszon', 'Dawid', 'Myszona ', '05302900092', '', '29.10.2005', 'Mężczyzna', 'Myszona', 'Oleś ', 'Warszawa ', '2005-11-03', '2024-10-03 12:48:44', 'FP42986', '2032-09-28', '2022-09-28', 'Artur', 'Agnieszka ', 'https://discord.com/channels/1058642963779043378/1058642963779043380/1291381223746306049', 'BURMISTRZ MIASTA CZELADŹ ', '66fe92ac61f15'),
(20, 'Myszon', 'DAWID', 'MYSZONA ', '05302900092', '', '29.10.2005', 'Mężczyzna', 'MYSZONA ', 'OLEŚ ', 'Warszawa', '2005-11-03', '2024-10-05 01:20:18', 'CAS420986', '2032-09-28', '2022-09-28', 'ARTUR', 'AGNIESZKA ', 'https://media.discordapp.net/attachments/839914446582841384/1288058439104462871/Messenger_creation_E37F0662-8D2C-4370-8F31-CE5241AE3085.png?ex=66f3cd66&is=66f27be6&hm=19d12e5ea9060ac7ce2f4bc83e90a948075c7cc50cd130e0e137d86e3ad3a39a&', 'BURMISTRZ MIASTA CZELADŹ ', '67009452a9e8f'),
(21, 'Myszon', 'DAWID', 'MYSZONA', '05302900092', '', '29.10.2005', 'Mężczyzna', 'MYSZONA ', 'OLEŚ ', 'Warszawa', '2005-11-03', '2024-10-05 10:28:34', 'CAS402986', '2032-09-28', '2022-09-28', 'Artur', 'Agnieszka ', 'https://cdn.discordapp.com/attachments/1058730549440675860/1287415633226764359/dziennik.png?ex=66f176bd&is=66f0253d&hm=bf41cd178e839ae7f55b396e253f2e560e32b96bd435ee16bf8ac13398f51acd&', 'BURMISTRZ MIASTA CZELADŹ ', '670114d29ac92'),
(22, 'Myszon', 'DAWID', 'MYSZONA', '05302900092', '', '29.10.2005', 'Mężczyzna', 'MYSZONA ', 'Oleś ', 'Warszawa ', '2024-10-05', '2024-10-05 11:35:52', 'CAS420986', '2032-09-28', '2022-09-28', 'Artur ', 'Agnieszka ', 'https://cdn.discordapp.com/attachments/1058730549440675860/1287415633226764359/dziennik.png?ex=6701f17d&is=67009ffd&hm=d95605eee511d32dd70cb909ad9ca0a7c434c2214eb7dca623e54163c69d32a1&', 'BURMISTRZ MIASTA CZELADŹ ', '67012498050b3'),
(23, 'Marcin', 'Mateusz', 'Sobielarski', '0412590046', '', '03.02.2004', 'Mężczyzna', 'Kiepski', 'Kowalska', 'Warszawa', '2004-10-15', '2024-10-05 16:05:41', 'CBD420699', '2033-10-05', '2022-05-04', 'Ferdynand', 'Gosia', 'https://media.discordapp.net/attachments/1165697798818254988/1290269980658503681/Messenger_creation_A0ABD68D-09A6-4CAF-BD1B-0F7573289622-removebg-preview.jpg?ex=6702708f&is=67011f0f&hm=cc38f004b85b8ce33ed61adaea15723b95de060522b9115aec6a498b113df7b7&', 'PREZYDENT MIASTA WARSZAWA', '670163d570b4a'),
(24, 'kaperolek', 'Joanna', 'Wasilowska', '06271473167', '', '26.07.2006', 'Kobieta', 'Wasilowski', 'głowańska', 'Żywiec', '2006-12-05', '2024-10-05 20:46:10', 'FIP72541', '2027-10-05', '2017-12-05', 'Hubert', 'Karolina', 'https://i.imgur.com/rXVzYSg.jpeg', 'ŻYWIEC', '6701a5923fa26'),
(25, 'kaperolek', 'Roksana', 'Gawron', '06240957847', '', '09.04.2006', 'Kobieta', 'Gawron', 'Turska', 'Bielsko-Biała', '2006-05-06', '2024-10-06 11:54:33', 'FIP73641', '2027-06-06', '2017-06-06', 'Adam', 'Paulina', 'https://i.imgur.com/rXVzYSg_d.webp?maxwidth=760&fidelity=grand', 'ŚWINNA', '67027a79f408c'),
(26, 'Marcin', 'Piotr', 'Bednarz', '05210169617', '', '03.03.2005', 'Mężczyzna', 'Kiepski', 'Kowalska', 'Dąbrowa Górnicza', '2024-10-07', '2024-10-07 12:04:11', 'CBD294349', '2033-10-25', '2024-10-01', 'Ferdynand', 'Joanna', 'https://media.discordapp.net/attachments/1165697798818254988/1290269980658503681/Messenger_creation_A0ABD68D-09A6-4CAF-BD1B-0F7573289622-removebg-preview.jpg?ex=6705138f&is=6703c20f&hm=5c82fb74b167557237df5c6884ff03f999fbc0b6fa839eb16b58cb1ebfc6eedd&', 'PREZYDENT MIASTA DĄBROWA GÓRNICZA ', '6703ce3b7cd0d'),
(27, 'Marcin', 'Piotr', 'Bednarz', '05210169617', '', '03.03.2005', 'Mężczyzna', 'Kiepski', 'Kowalska', 'Dąbrowa Górnicza', '2024-10-07', '2024-10-07 12:10:37', 'CBD294349', '2033-10-25', '2024-10-01', 'Ferdynand', 'Joanna', 'https://media.discordapp.net/attachments/1165697798818254988/1290269980658503681/Messenger_creation_A0ABD68D-09A6-4CAF-BD1B-0F7573289622-removebg-preview.jpg?ex=6705138f&is=6703c20f&hm=5c82fb74b167557237df5c6884ff03f999fbc0b6fa839eb16b58cb1ebfc6eedd&', 'PREZYDENT MIASTA DĄBROWA GÓRNICZA ', '6703cfbd1307a'),
(28, 'Myszon', 'DAWID', 'MAZURKIEWICZ ', '05302900092', '', '29.10.2005', 'Mężczyzna', 'Mazurkiewicz ', 'Myszona ', 'Warszawa ', '2024-10-08', '2024-10-08 09:10:31', 'CAS420986', '2032-09-28', '2022-09-28', 'Michał ', 'Agnieszka ', 'https://media.discordapp.net/attachments/839914446582841384/1288058439104462871/Messenger_creation_E37F0662-8D2C-4370-8F31-CE5241AE3085.png?ex=66f3cd66&is=66f27be6&hm=19d12e5ea9060ac7ce2f4bc83e90a948075c7cc50cd130e0e137d86e3ad3a39a&', 'BURMISTRZ MIASTA CZELADŹ ', '6704f7070bd73'),
(29, 'Myszon', 'DAWID ', 'MYSZONA', '08302900092', '', '29.10.2008', 'Mężczyzna', 'Sjs', 'Shsh', 'Warszawa', '2024-10-10', '2024-10-08 12:15:12', 'CAS986032', '2034-09-01', '2024-10-01', 'Arturo ', 'Agnieszka ', 'https://media.discordapp.net/attachments/1058730549440675860/1287415633226764359/dziennik.png?ex=6705e5fd&is=6704947d&hm=2eb4c17894010b9bb285258aeb04c5e28ad166be066d7e474174b6d6d5e90f29&', 'BURMISTRZ MIASTA CZELADŹ ', '6705225003b43'),
(30, 'Myszon', 'DAWID', 'MYSZONA', '05302900092', '', '29.10.2005', 'Mężczyzna', 'Myszona', 'Oleś ', 'Warszawa ', '2024-10-08', '2024-10-08 16:59:45', 'CAS491986', '2032-09-28', '2022-09-28', 'Mirosław ', 'Mirosława ', 'https://media.discordapp.net/attachments/1058642963779043380/1291381223654035466/Messenger_creation_D1142CC8-8737-4FD7-B484-816D8F89E623.png?ex=67067b7c&is=670529fc&hm=0e64deaaae9627ee5d68b6fc075616d2d32d1576979726594c1ae28f51adc174&', 'BURMISTRZ MIASTA CZELADŹ ', '6705650168516'),
(31, 'Myszon', 'DAWID', 'MYSZONA', '05302900092', '', '29.10.2005', 'Mężczyzna', 'Myszona', 'Oleś ', 'Warszawa', '2024-10-09', '2024-10-09 16:42:37', 'CAS536953', '2032-09-28', '2022-09-28', 'Artur', 'Agnieszka ', 'https://media.discordapp.net/attachments/1058642963779043380/1291381223654035466/Messenger_creation_D1142CC8-8737-4FD7-B484-816D8F89E623.png?ex=6707ccfc&is=67067b7c&hm=d3a659a2bd915bc828409265d74fc5d07e075788be0478958be48aa6669c127e&', 'BURMISTRZ MIASTA CZELADŹ ', '6706b27d7a610'),
(32, 'Myszon', 'DAWID', 'MYSZONA', '05302900092', '', '29.10.2005', 'Mężczyzna', 'MYSZONA ', 'OLEŚ ', 'Warszawa ', '2024-10-09', '2024-10-09 17:55:21', 'CAS348964', '2032-09-28', '2022-09-28', 'Artur ', 'Agnieszka ', 'https://media.discordapp.net/attachments/1058642963779043380/1291381223654035466/Messenger_creation_D1142CC8-8737-4FD7-B484-816D8F89E623.png?ex=6707ccfc&is=67067b7c&hm=d3a659a2bd915bc828409265d74fc5d07e075788be0478958be48aa6669c127e&', 'BURMISTRZ MIASTA CZELADŹ ', '6706c3891a728'),
(33, 'Myszon', 'DAWID', 'MYSZONA ', '05302900092', '', '29.10.2005', 'Mężczyzna', 'MYSZONA ', 'OLEŚ ', 'Warszawa ', '2024-10-10', '2024-10-10 16:26:52', 'CAS692986', '2032-09-28', '2022-09-28', 'Artur ', 'Agnieszka ', 'https://media.discordapp.net/attachments/1058642963779043380/1291381223654035466/Messenger_creation_D1142CC8-8737-4FD7-B484-816D8F89E623.png?ex=67091e7c&is=6707ccfc&hm=54ec447c47354272e855862932e7a4982d06edb01650ac9f878908d0a62c3715&', 'BURMISTRZ MIASTA CZELADŹ ', '6708004ccea35'),
(34, 'Myszon', 'DAWID', 'MYSZONA', '05302900092', '', '29.10.2005', 'Mężczyzna', 'MYSZONA ', 'OLEŚ ', 'Warszawa ', '2024-10-12', '2024-10-12 06:47:22', 'CIS203986', '2032-09-28', '2022-09-28', 'ARTUR ', 'AGNIESZKA', 'https://media.discordapp.net/attachments/1058642963779043380/1291381223654035466/Messenger_creation_D1142CC8-8737-4FD7-B484-816D8F89E623.png?ex=670b18bc&is=6709c73c&hm=8b51a90296a2eecdcc512b1fcc5993244198ae16275e4a434a3e1eca4840ba02&', 'BURMISTRZ MIASTA CZELADŹ ', '670a1b7ad5dae'),
(35, 'Myszon', 'DAWID', 'MYSZONA', '05302900092', '', '29.10.2005', 'Mężczyzna', 'MYSZONA ', 'Oleś ', 'Warszawa ', '2024-10-12', '2024-10-12 16:39:53', 'CAS845025', '2032-09-28', '2022-09-28', 'Zbigniew ', 'Joanna ', 'https://media.discordapp.net/attachments/1058642963779043380/1291381223654035466/Messenger_creation_D1142CC8-8737-4FD7-B484-816D8F89E623.png?ex=670bc17c&is=670a6ffc&hm=1ad32838adcde43d018975f73805ec6d33b67f5d83092e78e6c843e6b82ceeaa&', 'BURMISTRZ MIASTA CZELADŹ ', '670aa659911c8'),
(36, 'Myszon', 'DAWID', 'MYSZONA', '05302900092', '', '29.10.2005', 'Mężczyzna', 'MYSZONA ', 'OLEŚ ', 'Warszawa ', '2024-10-13', '2024-10-13 18:20:03', 'CAS274986', '2032-09-28', '2022-09-28', 'Artur ', 'Agnieszka ', 'https://media.discordapp.net/attachments/1058642963779043380/1291381223654035466/Messenger_creation_D1142CC8-8737-4FD7-B484-816D8F89E623.png?ex=670d12fc&is=670bc17c&hm=e86f93aeb37ff3da7e3b8018a4ca7787bf5e83e950879bca720b7a7085acec35&', 'BURMISTRZ MIASTA CZELADŹ ', '670c0f5380bf5'),
(37, 'Myszon', 'DAWID', 'MYSZONA ', '05302900092', '', '29.10.2005', 'Mężczyzna', 'Myszona ', 'Oleś ', 'Warszawa ', '2024-10-14', '2024-10-14 13:57:28', 'DII591730', '2024-09-28', '2024-09-28', 'Artur ', 'Agnieszka ', 'https://media.discordapp.net/attachments/1058642963779043380/1291381223654035466/Messenger_creation_D1142CC8-8737-4FD7-B484-816D8F89E623.png?ex=670e647c&is=670d12fc&hm=059240a6bd74448427fdf831af4f60ffa72e5f6e34e071af37c1f87b708dca40&', 'BURMISTRZ MIASTA CZELADŹ ', '670d234870863'),
(38, 'Myszon', 'DAWID', 'MYSZONA', '05302900092', '', '29.10.2005', 'Mężczyzna', 'Myszona ', 'Oleś ', 'Warszawa', '2024-10-14', '2024-10-14 16:02:53', 'DII841036', '2034-09-28', '2022-09-28', 'Artur', 'Agnieszka ', 'https://media.discordapp.net/attachments/1058642963779043380/1291381223654035466/Messenger_creation_D1142CC8-8737-4FD7-B484-816D8F89E623.png?ex=670e647c&is=670d12fc&hm=059240a6bd74448427fdf831af4f60ffa72e5f6e34e071af37c1f87b708dca40&', 'BURMISTRZ MIASTA CZELADŹ ', '670d40ad90c70');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dowody`
--
ALTER TABLE `dowody`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_id` (`unique_id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `dowody`
--
ALTER TABLE `dowody`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
