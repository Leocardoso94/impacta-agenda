-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 18-Abr-2017 às 01:25
-- Versão do servidor: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `impacta`
--
CREATE DATABASE IF NOT EXISTS `impacta` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `impacta`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contatos`
--

CREATE TABLE `contatos` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `dataNascimento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `contatos`
--

INSERT INTO `contatos` (`id`, `nome`, `email`, `endereco`, `dataNascimento`) VALUES
(2, 'Felipe', '', 'rua123456', '1989-01-19'),
(4, 'Alberto', '123@gmail.com', 'Av. 123', '2015-03-09'),
(5, 'Jose', 'leonardo@uol.com', 'Av. 123', '2001-06-01'),
(7, 'Leonardo Cardoso', 'leonardo@uol.com', 'Av Rudge', '1994-10-04'),
(9, 'Joao', 'AdicionaLogic@caelum', 'Av Rudge', '1830-10-20'),
(12, 'Teste', 'leonardo@uol.com', 'Av Morumbi', '2016-04-13'),
(13, 'Leonardo Cardoso', 'leonardo@uol.com', 'Av Rudge', '1900-04-24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contatos`
--
ALTER TABLE `contatos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contatos`
--
ALTER TABLE `contatos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
