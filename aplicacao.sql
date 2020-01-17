-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18-Jan-2020 às 00:20
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `aplicacao`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `dvds`
--

CREATE TABLE `dvds` (
  `id_dvd` int(11) NOT NULL,
  `produtoras_id` int(11) NOT NULL,
  `ano` int(11) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `sinopse` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dvds`
--

INSERT INTO `dvds` (`id_dvd`, `produtoras_id`, `ano`, `titulo`, `sinopse`) VALUES
(1, 1, 2020, 'Fronze 2', 'De volta à infância de Elsa e Anna, as duas garotas descobrem uma história do pai, quando ainda era príncipe de Arendelle. Ele conta às meninas a história de uma visita à floresta dos elementos, onde um acontecimento inesperado teria provocado a separação dos habitantes da cidade com os quatro elementos fundamentais: ar, fogo, terra e água. Esta revelação ajudará Elsa a compreender a origem de seus poderes.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dvds_legendas`
--

CREATE TABLE `dvds_legendas` (
  `dvds_id` int(11) NOT NULL,
  `legendas_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dvds_legendas`
--

INSERT INTO `dvds_legendas` (`dvds_id`, `legendas_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `legendas`
--

CREATE TABLE `legendas` (
  `id_legenda` int(11) NOT NULL,
  `lingua` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `legendas`
--

INSERT INTO `legendas` (`id_legenda`, `lingua`) VALUES
(1, 'Português'),
(2, 'Inglês'),
(3, 'Espanhol');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtoras`
--

CREATE TABLE `produtoras` (
  `id_produtora` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtoras`
--

INSERT INTO `produtoras` (`id_produtora`, `nome`) VALUES
(1, 'Disney');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `dvds`
--
ALTER TABLE `dvds`
  ADD PRIMARY KEY (`id_dvd`);

--
-- Índices para tabela `legendas`
--
ALTER TABLE `legendas`
  ADD PRIMARY KEY (`id_legenda`);

--
-- Índices para tabela `produtoras`
--
ALTER TABLE `produtoras`
  ADD PRIMARY KEY (`id_produtora`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `dvds`
--
ALTER TABLE `dvds`
  MODIFY `id_dvd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `legendas`
--
ALTER TABLE `legendas`
  MODIFY `id_legenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `produtoras`
--
ALTER TABLE `produtoras`
  MODIFY `id_produtora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
