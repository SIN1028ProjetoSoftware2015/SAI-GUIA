-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Tempo de geração: 26/08/2015 às 02:29
-- Versão do servidor: 5.6.20
-- Versão do PHP: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de dados: `SAI`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `curso`
--

CREATE TABLE IF NOT EXISTS `curso` (
  `id_curso` int(11) NOT NULL,
  `nome_curso` varchar(30) NOT NULL,
  `id_unidade_ensino` int(11) NOT NULL,
  `id_endereço` int(11) NOT NULL,
  `descrição` text NOT NULL,
  `id_idioma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `endereco`
--

CREATE TABLE IF NOT EXISTS `endereco` (
  `id_endereco` int(11) NOT NULL,
  `nome_rua` varchar(30) NOT NULL,
  `numero_rua` varchar(30) NOT NULL,
  `cidade` varchar(30) NOT NULL,
  `cep` varchar(30) NOT NULL,
  `latitude` varchar(30) NOT NULL,
  `longitude` varchar(30) NOT NULL,
  `bairro` varchar(30) NOT NULL,
  `Estado` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura para tabela `idiomas`
--

CREATE TABLE IF NOT EXISTS `idiomas` (
`id_idioma` int(11) NOT NULL,
  `nome_idioma` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `unidade_de_ensino`
--

CREATE TABLE IF NOT EXISTS `unidade_de_ensino` (
`id_unidade` int(11) NOT NULL,
  `nome_unidade` varchar(30) NOT NULL,
  `id_endereço` int(11) NOT NULL,
  `id_localização_mapa` int(11) NOT NULL,
  `id_idioma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `curso`
--
ALTER TABLE `curso`
 ADD PRIMARY KEY (`id_curso`);

--
-- Índices de tabela `endereco`
--
ALTER TABLE `endereco`
 ADD PRIMARY KEY (`id_endereco`);

--
-- Índices de tabela `idiomas`
--
ALTER TABLE `idiomas`
 ADD PRIMARY KEY (`id_idioma`);

--
-- Índices de tabela `unidade_de_ensino`
--
ALTER TABLE `unidade_de_ensino`
 ADD PRIMARY KEY (`id_unidade`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `idiomas`
--
ALTER TABLE `idiomas`
MODIFY `id_idioma` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `unidade_de_ensino`
--
ALTER TABLE `unidade_de_ensino`
MODIFY `id_unidade` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
