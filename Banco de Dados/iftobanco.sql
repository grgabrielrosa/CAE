-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 21-Maio-2019 às 21:08
-- Versão do servidor: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Estrutura da tabela `aluno`
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
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`idaluno`, `nome`, `sobrenome`, `sexo`, `email`, `senha`, `n_matricula`, `aprova`) VALUES
(10, 'Alana', '  Giovana Maya Alves', 'FEMININO', 'alanagiovanamayaalves@gsw.com.br', '$2y$10$YXUK9S88p5ouIQXcjUcfxudECicG07eZlfnpjT', 146456655, 2),
(11, ' Sabrina', ' Clara Alves', 'FEMININO', 'sabrinaclaraalves-89@padrejuliano.com', '$2y$10$JuV28y94DSyNe0l0YTlAt.EBlwYxNCZ5kyr1/N', 2147483647, 0),
(12, 'Leandro', ' Julio Fernandes', 'MASCULINO', 'fernandes@campanati.com.br', '$2y$10$408XNBftyPaEzaygxgm1ae8EuJN.MR/EI61l5p', 214748365, 0),
(13, 'Murilo', ' Márcio Cavalcanti', 'MASCULINO', 'cavalcanti@jcffactoring.com.br', '$2y$10$dRfDb10c6Yzl9hocmLnXqeuZmichx/CdHufotW', 265465465, 0),
(14, 'Lucas ', 'Samuel Freitas', 'MASCULINO', 'lucassamuelfreitas@vipsaude.com.br', '$2y$10$FuEycnmlSEgrOBgdk5hgvuwazzOY/97x9qryoY', 12215444, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `cursoid` int(11) NOT NULL,
  `idaluno` int(11) NOT NULL,
  `curso` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`cursoid`, `idaluno`, `curso`) VALUES
(10, 10, 'Técnico Agronomo'),
(11, 11, 'Técnico em Informatica'),
(12, 12, 'Licenciatura em Computação'),
(13, 13, 'Licenciatura em Computação'),
(14, 14, 'Técnico Agronomo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `profissional`
--


CREATE TABLE profissional (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT, -- id
    name VARCHAR(60) NOT NULL, -- nome
    email VARCHAR(80) NOT NULL, -- email
    gender ENUM('m', 'f') NOT NULL, -- gênero (masculino, feminino)
    birthdate DATE NOT NULL, -- data de nascimento
    PRIMARY KEY(id)
) COLLATE=utf8_unicode_ci;

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aluno`
--
ALTER TABLE `aluno`
  MODIFY `idaluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `curso`
--
ALTER TABLE `curso`
  MODIFY `cursoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `profissional`
--
ALTER TABLE `profissional`
  MODIFY `idprofissional` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`idaluno`) REFERENCES `aluno` (`idaluno`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
