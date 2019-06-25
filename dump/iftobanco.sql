-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2019 at 09:38 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iftobanco`
--

-- --------------------------------------------------------

--
-- Table structure for table `aluno`
--

CREATE TABLE `aluno` (
  `idaluno` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `sobrenome` varchar(45) NOT NULL,
  `sexo` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `n_matricula` int(11) NOT NULL,
  `aprova` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `aluno`
--

INSERT INTO `aluno` (`idaluno`, `nome`, `sobrenome`, `sexo`, `email`, `senha`, `n_matricula`, `aprova`) VALUES
(12, 'Leandro', ' Julio Fernandes', 'MASCULINO', 'fernandes@campanati.com.br', '$2y$10$408XNBftyPaEzaygxgm1ae8EuJN.MR/EI61l5p', 214748365, 0),
(13, 'Murilo', ' Márcio Cavalcanti', 'MASCULINO', 'cavalcanti@jcffactoring.com.br', '$2y$10$dRfDb10c6Yzl9hocmLnXqeuZmichx/CdHufotW', 265465465, 2),
(14, 'Lucas ', 'Samuel Freitas', 'MASCULINO', 'lucassamuelfreitas@vipsaude.com.br', '$2y$10$FuEycnmlSEgrOBgdk5hgvuwazzOY/97x9qryoY', 12215444, 0),
(15, 'Igor', 'Rosa', 'MASCULINO', 'gabriel@gmail.com', '$2y$10$6kEiHjCMH7n4LjiqorhRweB5kmoyCJcYlqu0WX', 2147483647, 2),
(16, 'Marisa', 'Rodrigues Coêlho', 'FEMININO', 'marisa@gmail.com', '$2y$10$xLnMwGo/UQE7xhSrKwze9eS8b6dXOzSkxUhRVO', 123456789, 2),
(17, 'Eric', 'Anderson', 'MASCULINO', 'eric@hotmail.com', '$2y$10$vfV1D5OtgK0debCfIplxLOju1mAK//MfDg0U2t', 854654987, 2),
(18, 'Isaac', 'Pimentel', 'MASCULINO', 'Isaac@outlook.com', '$2y$10$mc2VHIcoG0xuT/hSKSWVZ./RgP/EQK0IXdId.M', 354165432, 0),
(19, 'Marcos ', 'Dias', 'MASCULINO', 'ti.marcosdias@gmail.com', '$2y$10$SwG1BCnqR8QzrVEzE.r58uurKlG0kU5CO7GK6h', 2143570, 2);

-- --------------------------------------------------------

--
-- Table structure for table `curso`
--

CREATE TABLE `curso` (
  `cursoid` int(11) NOT NULL,
  `idaluno` int(11) NOT NULL,
  `curso` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `curso`
--

INSERT INTO `curso` (`cursoid`, `idaluno`, `curso`) VALUES
(12, 12, 'Licenciatura em Computação'),
(13, 13, 'Licenciatura em Computação'),
(14, 14, 'Técnico Agronomo'),
(15, 15, 'Licenciatura em Computação'),
(16, 16, 'Técnico em Informatica'),
(17, 17, 'Engenharia Agronomica'),
(18, 18, 'Técnico Agronomo'),
(19, 19, 'Licenciatura em Computação');

-- --------------------------------------------------------

--
-- Table structure for table `profissional`
--

CREATE TABLE `profissional` (
  `idprofissional` int(11) NOT NULL,
  `Nome` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sexo`
--

CREATE TABLE `sexo` (
  `id_sexo` int(1) NOT NULL,
  `sexo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`idaluno`);

--
-- Indexes for table `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`cursoid`),
  ADD KEY `idaluno` (`idaluno`);

--
-- Indexes for table `profissional`
--
ALTER TABLE `profissional`
  ADD PRIMARY KEY (`idprofissional`);

--
-- Indexes for table `sexo`
--
ALTER TABLE `sexo`
  ADD PRIMARY KEY (`id_sexo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aluno`
--
ALTER TABLE `aluno`
  MODIFY `idaluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `curso`
--
ALTER TABLE `curso`
  MODIFY `cursoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `profissional`
--
ALTER TABLE `profissional`
  MODIFY `idprofissional` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`idaluno`) REFERENCES `aluno` (`idaluno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
