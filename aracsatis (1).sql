-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2018 at 09:44 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aracsatis`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_araba`
--

CREATE TABLE `tbl_araba` (
  `ArabaID` int(10) NOT NULL,
  `Araba_Marka` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `Araba_Model` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `Araba_VitesTuruID` int(10) NOT NULL,
  `Araba_YakitTuruID` int(10) NOT NULL,
  `Araba_RenkID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `tbl_araba`
--

INSERT INTO `tbl_araba` (`ArabaID`, `Araba_Marka`, `Araba_Model`, `Araba_VitesTuruID`, `Araba_YakitTuruID`, `Araba_RenkID`) VALUES
(1, 'Fiat', 'Palio', 1, 1, 1),
(2, 'Audi', 'A3', 2, 2, 2),
(3, 'Audi', 'A3', 1, 1, 9),
(4, 'Audi', 'A3', 2, 3, 3),
(5, 'Fiat', 'Palio', 1, 2, 5),
(6, 'Ferrari', 'F1', 1, 3, 2),
(7, 'Dacia', 'Duster', 2, 3, 3),
(8, 'Dacia', 'Logan', 2, 3, 3),
(9, 'Hyundai', 'i20', 2, 2, 10),
(10, 'Hyundai', 'i20', 1, 1, 1),
(11, 'Hyundai', 'i20', 1, 1, 6),
(12, 'Citroen', 'C3', 2, 1, 5),
(13, 'Citroen', 'C3', 1, 3, 7),
(14, 'Hyundai', 'i30', 1, 3, 7),
(15, 'Hyundai', 'i30', 2, 3, 2),
(16, 'Honda', 'Civic', 2, 3, 2),
(17, 'Honda', 'Civic', 1, 1, 6),
(18, 'Tofas', 'Kartal', 2, 3, 1),
(19, 'Tofas', 'Kartal', 2, 2, 10),
(20, 'Tofas', 'Dogan SLX', 1, 1, 10),
(21, 'Tofas', 'Dogan SLX', 2, 3, 3),
(22, 'Tofas', 'Kartal SLX', 2, 3, 3),
(23, 'Ford', 'Transit', 2, 3, 3),
(24, 'Ford', 'Transit', 1, 1, 4),
(25, 'Ford', 'Connect', 1, 1, 4),
(26, 'Ford', 'Connect', 2, 3, 6),
(27, 'Opel', 'Insignia', 2, 3, 6),
(28, 'Tesla', 'Model S', 1, 1, 2),
(29, 'Tesla', 'Model S', 1, 1, 4),
(30, 'Tesla', 'Model S', 2, 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ilan`
--

CREATE TABLE `tbl_ilan` (
  `IlanID` int(10) NOT NULL,
  `Ilan_Adi` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `Ilan_Fiyat` int(10) UNSIGNED NOT NULL,
  `Ilan_Km` int(10) NOT NULL,
  `Ilan_Tarih` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Ilan_ArabaID` int(10) NOT NULL,
  `Ilan_SehirID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `tbl_ilan`
--

INSERT INTO `tbl_ilan` (`IlanID`, `Ilan_Adi`, `Ilan_Fiyat`, `Ilan_Km`, `Ilan_Tarih`, `Ilan_ArabaID`, `Ilan_SehirID`) VALUES
(1, 'Elon Musk\'tan', 1000, 0, '2018-05-19 22:24:07', 20, 2),
(2, 'ACIL', 1, 1111, '2018-05-19 22:24:43', 28, 7),
(3, 'ACIL', 2500, 15000, '2018-05-19 22:26:07', 10, 3),
(4, 'DOKTORDAN ACIL', 555, 12000, '2018-05-19 22:26:31', 12, 1),
(5, 'Esenalp Galeri\'den', 4000, 0, '2018-05-19 22:26:52', 1, 1),
(6, 'ACIL', 1000, 5000, '2018-05-19 22:27:32', 22, 1),
(7, 'Ahmet Manga\'dan', 100, 200, '2018-05-19 22:27:51', 29, 4),
(8, 'Mafyadan Düsük KM', 4000, 100, '2018-05-19 22:28:12', 23, 10),
(9, 'Esenalp Galeri\'den', 500, 2050, '2018-05-19 22:29:01', 7, 6),
(10, 'ACIL', 4500, 2300, '2018-05-19 22:29:20', 11, 2),
(11, 'Manga Galeri\'den', 4000, 10, '2018-05-19 22:32:50', 6, 3),
(12, 'ÖGRETMENDEN', 40, 120, '2018-05-19 22:33:36', 8, 9),
(13, 'UCUZA F1', 1, 45, '2018-05-19 22:33:56', 6, 8),
(14, 'ÇOK UCUZ', 5, 540, '2018-05-19 22:34:24', 24, 6),
(15, 'ACIL', 44, 5445, '2018-05-19 22:35:53', 17, 2),
(16, 'Elon Musk\'tan', 405, 60, '2018-05-19 22:36:10', 21, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_renk`
--

CREATE TABLE `tbl_renk` (
  `RenkID` int(10) NOT NULL,
  `Renk` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `tbl_renk`
--

INSERT INTO `tbl_renk` (`RenkID`, `Renk`) VALUES
(1, 'Siyah'),
(2, 'Beyaz'),
(3, 'Sari'),
(4, 'Lacivert'),
(5, 'Kirmizi'),
(6, 'Mor'),
(7, 'Kahverengi'),
(8, 'Bordo'),
(9, 'Mavi'),
(10, 'Yesil');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sehir`
--

CREATE TABLE `tbl_sehir` (
  `SehirID` int(10) NOT NULL,
  `Sehir` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `tbl_sehir`
--

INSERT INTO `tbl_sehir` (`SehirID`, `Sehir`) VALUES
(1, 'Denizli'),
(2, 'Kocaeli'),
(3, 'Izmir'),
(4, 'Istanbul'),
(5, 'Ankara'),
(6, 'Aydin'),
(7, 'Los Angeles'),
(8, 'Igdir'),
(9, 'Yozgat'),
(10, 'Paris');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_vitesturu`
--

CREATE TABLE `tbl_vitesturu` (
  `VitesTuruID` int(10) NOT NULL,
  `Vites_Turu` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `tbl_vitesturu`
--

INSERT INTO `tbl_vitesturu` (`VitesTuruID`, `Vites_Turu`) VALUES
(1, 'Manuel'),
(2, 'Otomatik');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_yakitturu`
--

CREATE TABLE `tbl_yakitturu` (
  `YakitTuruID` int(10) NOT NULL,
  `Yakit_Turu` varchar(50) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `tbl_yakitturu`
--

INSERT INTO `tbl_yakitturu` (`YakitTuruID`, `Yakit_Turu`) VALUES
(1, 'Benzinli'),
(2, 'Dizel'),
(3, 'LPG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_araba`
--
ALTER TABLE `tbl_araba`
  ADD PRIMARY KEY (`ArabaID`),
  ADD KEY `Araba_RenkID` (`Araba_RenkID`),
  ADD KEY `Araba_VitesTuruID` (`Araba_VitesTuruID`),
  ADD KEY `Araba_YakitTuruID` (`Araba_YakitTuruID`);

--
-- Indexes for table `tbl_ilan`
--
ALTER TABLE `tbl_ilan`
  ADD PRIMARY KEY (`IlanID`),
  ADD KEY `Ilan_ArabaID` (`Ilan_ArabaID`),
  ADD KEY `Ilan_SehirID` (`Ilan_SehirID`);

--
-- Indexes for table `tbl_renk`
--
ALTER TABLE `tbl_renk`
  ADD PRIMARY KEY (`RenkID`);

--
-- Indexes for table `tbl_sehir`
--
ALTER TABLE `tbl_sehir`
  ADD PRIMARY KEY (`SehirID`);

--
-- Indexes for table `tbl_vitesturu`
--
ALTER TABLE `tbl_vitesturu`
  ADD PRIMARY KEY (`VitesTuruID`);

--
-- Indexes for table `tbl_yakitturu`
--
ALTER TABLE `tbl_yakitturu`
  ADD PRIMARY KEY (`YakitTuruID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_araba`
--
ALTER TABLE `tbl_araba`
  MODIFY `ArabaID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_ilan`
--
ALTER TABLE `tbl_ilan`
  MODIFY `IlanID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_renk`
--
ALTER TABLE `tbl_renk`
  MODIFY `RenkID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_sehir`
--
ALTER TABLE `tbl_sehir`
  MODIFY `SehirID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_vitesturu`
--
ALTER TABLE `tbl_vitesturu`
  MODIFY `VitesTuruID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_yakitturu`
--
ALTER TABLE `tbl_yakitturu`
  MODIFY `YakitTuruID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_araba`
--
ALTER TABLE `tbl_araba`
  ADD CONSTRAINT `tbl_araba_ibfk_1` FOREIGN KEY (`Araba_RenkID`) REFERENCES `tbl_renk` (`RenkID`),
  ADD CONSTRAINT `tbl_araba_ibfk_2` FOREIGN KEY (`Araba_VitesTuruID`) REFERENCES `tbl_vitesturu` (`VitesTuruID`),
  ADD CONSTRAINT `tbl_araba_ibfk_3` FOREIGN KEY (`Araba_YakitTuruID`) REFERENCES `tbl_yakitturu` (`YakitTuruID`);

--
-- Constraints for table `tbl_ilan`
--
ALTER TABLE `tbl_ilan`
  ADD CONSTRAINT `tbl_ilan_ibfk_1` FOREIGN KEY (`Ilan_ArabaID`) REFERENCES `tbl_araba` (`ArabaID`),
  ADD CONSTRAINT `tbl_ilan_ibfk_2` FOREIGN KEY (`Ilan_SehirID`) REFERENCES `tbl_sehir` (`SehirID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
