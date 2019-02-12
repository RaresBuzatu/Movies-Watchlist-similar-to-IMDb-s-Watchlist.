-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 10, 2019 at 11:31 PM
-- Server version: 8.0.13
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `watchlist`
--

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `ActorID` int(11) NOT NULL,
  `NumeA` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `PrenumeA` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Data_nasteriiA` date NOT NULL,
  `SexA` set('M','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TaraA` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Nr_premii` int(11) DEFAULT NULL,
  `Nr_nominalizari` int(11) DEFAULT NULL,
  `Nr_filmeJucate` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`ActorID`, `NumeA`, `PrenumeA`, `Data_nasteriiA`, `SexA`, `TaraA`, `Nr_premii`, `Nr_nominalizari`, `Nr_filmeJucate`) VALUES
(1, 'DiCaprio', 'Leonardo', '1974-11-11', 'M', 'USA', 98, 209, 42),
(2, 'Cruise', 'Tom', '1962-07-03', 'M', 'USA', 5, 15, 35),
(3, 'Bardem', 'Javier', '1969-03-01', 'M', 'Spania', 7, 11, 25),
(4, 'Knightley', 'Keira', '1985-03-26', 'F', 'UK', 30, 95, 57),
(5, 'Carpenter', 'Jennifer', '1979-12-07', 'F', 'USA', 5, 23, 31),
(6, 'Blanchett', 'Cate', '1969-05-15', 'F', 'Australia', 152, 185, 70),
(7, 'Depp', 'Johnny', '1963-07-09', 'M', 'USA', 79, 140, 91),
(8, 'Winslet', 'Kate', '1975-10-05', 'F', 'UK', 87, 155, 58),
(9, 'Carrey', 'Jim', '1962-01-17', 'M', 'Canada', 48, 94, 62),
(10, 'Gleeson', 'Domhnall', '1983-05-12', 'M', 'Irlanda', 5, 11, 46),
(13, 'Hathaway', 'Anne', '1982-11-12', 'F', 'USA', 65, 105, 46),
(14, 'Hanks', 'Tom', '1956-07-09', 'M', 'USA', 84, 151, 89),
(15, 'Bale', 'Christian', '1974-01-30', 'M', 'UK', 71, 108, 52),
(16, 'Eastwood', 'Clint', '1930-05-31', 'M', 'USA', 148, 158, 72),
(17, 'Pitt', 'Brad', '1963-12-18', 'M', 'USA', 67, 152, 80),
(18, 'Hopkins', 'Anthony', '1937-12-31', 'M', 'UK', 51, 63, 134),
(20, 'Spacey', 'Kevin', '1959-07-26', 'M', 'USA', 57, 85, 86),
(21, 'Lawrence', 'Jennifer', '1990-08-15', 'F', 'USA', 116, 178, 31),
(22, 'Kunis', 'Mila', '1983-08-14', 'F', 'Ukrain', 14, 55, 64),
(23, 'Aniston', 'Jeniifer', '1969-02-11', 'F', 'USA', 35, 77, 63),
(24, 'Jolie', 'Angelina', '1975-06-04', 'F', 'USA', 56, 110, 54),
(25, 'Wood', 'Elijah', '1981-01-28', 'M', 'USA', 26, 44, 105),
(26, 'Weaving', 'Hugo', '1960-04-04', 'M', 'Nigeria', 28, 30, 90),
(27, 'Ledger', 'Heath', '1979-04-04', 'M', 'Australia', 77, 56, 23);

-- --------------------------------------------------------

--
-- Table structure for table `casting`
--

CREATE TABLE `casting` (
  `ActorID` int(11) NOT NULL,
  `FilmID` int(11) NOT NULL,
  `Rol` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `casting`
--

INSERT INTO `casting` (`ActorID`, `FilmID`, `Rol`) VALUES
(1, 1, 'Principal'),
(1, 5, 'Principal'),
(1, 27, 'Principal'),
(3, 4, 'Principal'),
(4, 2, 'Principal'),
(6, 33, 'Secundar'),
(6, 34, 'Secundar'),
(6, 35, 'Secundar'),
(7, 2, 'Principal'),
(7, 32, 'Principal'),
(8, 1, 'Principal'),
(8, 5, 'Principal'),
(9, 3, 'Principal'),
(13, 29, 'Principal'),
(14, 36, 'Principal'),
(14, 37, 'Principal'),
(14, 38, 'Principal'),
(14, 39, 'Principal'),
(15, 41, 'Principal'),
(16, 40, 'Principal'),
(17, 31, 'Principal'),
(17, 43, 'Principal'),
(20, 42, 'Principal'),
(24, 31, 'Principal'),
(24, 32, 'Secundar'),
(25, 33, 'Principal'),
(25, 34, 'Principal'),
(25, 35, 'Principal'),
(27, 41, 'Principal');

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `FilmID` int(11) NOT NULL,
  `Titlu` char(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Durata` int(11) DEFAULT NULL,
  `Limba` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Tara` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Theme_songID` int(11) DEFAULT NULL,
  `Gen` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Detalii` char(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `RegizorID` int(11) NOT NULL,
  `An` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `film`
--

INSERT INTO `film` (`FilmID`, `Titlu`, `Durata`, `Limba`, `Tara`, `Theme_songID`, `Gen`, `Detalii`, `RegizorID`, `An`) VALUES
(1, 'Titanic', 194, 'Engleza', 'USA', 7, 'Drama', 'Romance', 3, 1997),
(2, 'Pirates of the Caribbean: The Curse of the Black Pearl', 143, 'Engleza', 'USA', 8, 'Actiune', 'Adventure, Fantasy', 5, 2003),
(3, 'Eternal Sunshine of the Spotless Mind', 108, 'Engleza', 'USA', 6, 'Drama', 'Romance, Sci-Fi', 4, 2004),
(4, 'Biutiful', 148, 'Spaniola', 'Spania', NULL, 'Drama', 'Romance', 2, 2010),
(5, 'Revolutionary Road', 119, 'Engleza', 'USA', NULL, 'Drama', 'Romance', 6, 2008),
(27, 'The Revenant', 156, 'Engleza', 'USA', NULL, 'Actiune', 'Drama', 2, 2015),
(29, 'One Day', 107, 'Engleza', 'USA', 9, 'Drama', 'Romance', 7, 2011),
(31, 'Mr. & Mrs. Smith', 120, 'Engleza', 'USA', NULL, 'Actiune', 'Comedie, Crima', 12, 2005),
(32, 'The Tourist', 107, 'Engleza', 'USA', 12, 'Actiune', 'Aventura,Crima', 13, 2010),
(33, 'The Lord of the Rings: The Fellowship of the Ring', 178, 'Engleza', 'New Zealand', 11, 'Aventura', 'Drama, Fantasy', 14, 2001),
(34, 'The Lord of the Rings: The Two Towers', 179, 'Engleza', 'New Zealand', 11, 'Aventura', 'Drama, Fantasy', 14, 2002),
(35, 'The Lord of the Rings: The Return of the King', 201, 'Engleza', 'New Zealand', 11, 'Actiune', 'Aventura, Drama', 14, 2003),
(36, 'The Green Mile', 189, 'Engleza', 'USA', NULL, 'Crima', 'Drama, Fantasy', 15, 1999),
(37, 'The Terminal', 128, 'Engleza', 'USA', NULL, 'Comedy', 'Drama, Romance', 16, 2004),
(38, 'Forrest Gump', 202, 'Engleza', 'USA', NULL, 'Drama', 'Romance', 18, 1994),
(39, 'Saving Private Ryan', 169, 'Engleza', 'UAS', NULL, 'Drama', 'War', 16, 1998),
(40, 'Gran Torino', 116, 'Engleza', 'USA', NULL, 'Drama', '', 17, 2008),
(41, 'The Dark Knight', 152, 'Engleza', 'USA', NULL, 'Actiune', 'Crima, Drama', 1, 2008),
(42, 'American Beauty', 122, 'Engleza', 'USA', NULL, 'Drama', '', 6, 1999),
(43, 'Inglourious Basterds', 153, 'Engleza', 'USA', NULL, 'Aventura', 'Drama, War', 19, 2009);

-- --------------------------------------------------------

--
-- Table structure for table `regizor`
--

CREATE TABLE `regizor` (
  `RegizorID` int(11) NOT NULL,
  `Nume` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Prenume` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Data_nasterii` date NOT NULL,
  `Sex` set('M','F') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `TaraR` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Nr_filmeProduse` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `regizor`
--

INSERT INTO `regizor` (`RegizorID`, `Nume`, `Prenume`, `Data_nasterii`, `Sex`, `TaraR`, `Nr_filmeProduse`) VALUES
(1, 'Nolan', 'Christopher', '1970-07-30', 'M', 'UK', 14),
(2, 'Inarritu', 'Alejandro G', '1963-08-15', 'M', 'Mexic', 15),
(3, 'Cameron', 'James', '1954-08-16', 'M', 'Canada', 24),
(4, 'Gondry', 'Michel', '1963-05-08', 'M', 'Franta', 123),
(5, 'Verbinski', 'Gore', '1964-03-16', 'M', 'USA', 12),
(6, 'Mendes', 'Sam', '1965-08-01', 'M', 'UK', 10),
(7, 'Scherfig', 'Lone', '1959-05-02', 'F', 'Danemarca', 18),
(12, 'Liman', 'Doug', '1965-07-24', 'M', 'USA', 45),
(13, 'von Donnersmarck', 'Florian Henckel', '1973-05-02', 'M', 'Germany', 7),
(14, 'Jackson', 'Peter', '1961-10-31', 'M', 'New Zealand', 25),
(15, 'Darabont', 'Frank', '1959-01-28', 'M', 'France', 11),
(16, 'Spielberg', 'Steven', '1946-12-18', 'M', 'USA', 173),
(17, 'Eastwood', 'Clint', '1930-05-31', 'M', 'USA', 45),
(18, 'Zemeckis', 'Robert', '1951-05-14', 'M', 'USA', 50),
(19, 'Tarantino', 'Quentin', '1963-03-27', 'M', 'USA', 21);

-- --------------------------------------------------------

--
-- Table structure for table `theme_song`
--

CREATE TABLE `theme_song` (
  `ThemeSongID` int(11) NOT NULL,
  `Nume` char(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Autor` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Durata` int(11) DEFAULT NULL,
  `Gen` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `An_aparitie` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `theme_song`
--

INSERT INTO `theme_song` (`ThemeSongID`, `Nume`, `Autor`, `Durata`, `Gen`, `An_aparitie`) VALUES
(6, 'Everybody`s got to', 'The Korgis', 180, 'Romance', 1984),
(7, 'My heart will go on', 'Celine Dion', 180, 'Romance', 1997),
(8, 'He`s a Pirate', 'Hans Zimmer', 120, 'pop', 2006),
(9, 'We had today', 'Rachel Portman', 223, 'Romance', 2011),
(11, 'Edge of Night', 'Celtic Angels', 300, 'Celtic', 2016),
(12, 'Bedroom Dreams', 'James Newton', 135, 'Pop', 2010);

-- --------------------------------------------------------

--
-- Table structure for table `utilizator`
--

CREATE TABLE `utilizator` (
  `UtilizatorID` int(11) NOT NULL,
  `Username` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Parola` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Email` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `utilizator`
--

INSERT INTO `utilizator` (`UtilizatorID`, `Username`, `Parola`, `Email`) VALUES
(19, 'Rares_Tudor.Buzatu', '827ccb0eea8a706c4c34a16891f84e7b', 'rarestudor_97@yahoo.com'),
(20, 'Maria', '827ccb0eea8a706c4c34a16891f84e7b', 'maria@yahoo.com'),
(21, 'Maria2', '827ccb0eea8a706c4c34a16891f84e7b', 'm@yahoo.com'),
(22, 'blabla', '827ccb0eea8a706c4c34a16891f84e7b', 'blalba@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `utilizator_film`
--

CREATE TABLE `utilizator_film` (
  `UtilizatorID` int(11) NOT NULL,
  `FilmID` int(11) NOT NULL,
  `Rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `utilizator_film`
--

INSERT INTO `utilizator_film` (`UtilizatorID`, `FilmID`, `Rating`) VALUES
(19, 1, 2),
(19, 4, 3),
(19, 27, 4),
(19, 33, 5),
(19, 36, 1),
(19, 40, 3),
(20, 1, 2),
(20, 2, 5),
(20, 3, 0),
(20, 4, 4),
(20, 5, 2),
(20, 27, 4),
(20, 33, 1),
(20, 34, 2),
(20, 36, 3),
(20, 37, 1),
(20, 40, 3),
(22, 1, 3),
(22, 3, 4),
(22, 4, 1),
(22, 5, 3),
(22, 27, 1),
(22, 31, 4),
(22, 33, 5),
(22, 34, 4),
(22, 35, 2),
(22, 36, 3),
(22, 40, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`ActorID`),
  ADD UNIQUE KEY `NumeA` (`NumeA`,`PrenumeA`);

--
-- Indexes for table `casting`
--
ALTER TABLE `casting`
  ADD PRIMARY KEY (`ActorID`,`FilmID`),
  ADD KEY `FK_Casting_Film` (`FilmID`);

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`FilmID`),
  ADD UNIQUE KEY `Titlu` (`Titlu`),
  ADD KEY `FK_Film_Regizor` (`RegizorID`),
  ADD KEY `FK_Film_Theme_song` (`Theme_songID`);

--
-- Indexes for table `regizor`
--
ALTER TABLE `regizor`
  ADD PRIMARY KEY (`RegizorID`),
  ADD UNIQUE KEY `Nume` (`Nume`,`Prenume`);

--
-- Indexes for table `theme_song`
--
ALTER TABLE `theme_song`
  ADD PRIMARY KEY (`ThemeSongID`),
  ADD UNIQUE KEY `Nume` (`Nume`);

--
-- Indexes for table `utilizator`
--
ALTER TABLE `utilizator`
  ADD PRIMARY KEY (`UtilizatorID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `utilizator_film`
--
ALTER TABLE `utilizator_film`
  ADD PRIMARY KEY (`UtilizatorID`,`FilmID`),
  ADD KEY `FK_Utilizator_Film_Film` (`FilmID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actor`
--
ALTER TABLE `actor`
  MODIFY `ActorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `FilmID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `regizor`
--
ALTER TABLE `regizor`
  MODIFY `RegizorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `theme_song`
--
ALTER TABLE `theme_song`
  MODIFY `ThemeSongID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `utilizator`
--
ALTER TABLE `utilizator`
  MODIFY `UtilizatorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `casting`
--
ALTER TABLE `casting`
  ADD CONSTRAINT `FK_Casting_Actor` FOREIGN KEY (`ActorID`) REFERENCES `actor` (`actorid`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `FK_Casting_Film` FOREIGN KEY (`FilmID`) REFERENCES `film` (`filmid`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `FK_Film_Regizor` FOREIGN KEY (`RegizorID`) REFERENCES `regizor` (`regizorid`),
  ADD CONSTRAINT `FK_Film_Theme_song` FOREIGN KEY (`Theme_songID`) REFERENCES `theme_song` (`themesongid`);

--
-- Constraints for table `utilizator_film`
--
ALTER TABLE `utilizator_film`
  ADD CONSTRAINT `FK_Utilizator_Film_Film` FOREIGN KEY (`FilmID`) REFERENCES `film` (`filmid`),
  ADD CONSTRAINT `FK_Utilizator_Film_Utilizator` FOREIGN KEY (`UtilizatorID`) REFERENCES `utilizator` (`utilizatorid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
