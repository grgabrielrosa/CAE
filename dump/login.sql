-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2019 at 09:39 PM
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
-- Database: `login`
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
(10, 'Alana', '  Giovana Maya Alves', 'FEMININO', 'alanagiovanamayaalves@gsw.com.br', '$2y$10$YXUK9S88p5ouIQXcjUcfxudECicG07eZlfnpjT', 146456655, 2),
(11, ' Sabrina', ' Clara Alves', 'FEMININO', 'sabrinaclaraalves-89@padrejuliano.com', '$2y$10$JuV28y94DSyNe0l0YTlAt.EBlwYxNCZ5kyr1/N', 2147483647, 0),
(12, 'Leandro', ' Julio Fernandes', 'MASCULINO', 'fernandes@campanati.com.br', '$2y$10$408XNBftyPaEzaygxgm1ae8EuJN.MR/EI61l5p', 214748365, 0),
(13, 'Murilo', ' Márcio Cavalcanti', 'MASCULINO', 'cavalcanti@jcffactoring.com.br', '$2y$10$dRfDb10c6Yzl9hocmLnXqeuZmichx/CdHufotW', 265465465, 0),
(14, 'Lucas ', 'Samuel Freitas', 'MASCULINO', 'lucassamuelfreitas@vipsaude.com.br', '$2y$10$FuEycnmlSEgrOBgdk5hgvuwazzOY/97x9qryoY', 12215444, 0);

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `usuario_id` int(11) NOT NULL,
  `usuario` varchar(200) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `data_cadastro` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`usuario_id`, `usuario`, `senha`, `nome`, `data_cadastro`) VALUES
(2, 'Gabriel', 'e10adc3949ba59abbe56e057f20f883e', 'Gabriel Rosa', '2019-06-03 07:05:57'),
(3, '', 'd41d8cd98f00b204e9800998ecf8427e', '', '2019-06-10 20:21:27'),
(4, 'mrc', 'e10adc3949ba59abbe56e057f20f883e', 'Marisa', '2019-06-10 20:24:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`idaluno`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aluno`
--
ALTER TABLE `aluno`
  MODIFY `idaluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
