-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 16-Set-2021 às 20:27
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `techleadlibrary`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `config`
--

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `valor` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `config`
--

INSERT INTO `config` (`id`, `name`, `valor`) VALUES
(1, 'site_title', 'site exemplo'),
(2, 'site color', 'red'),
(3, 'site template', 'default'),
(4, 'home_banner', 'livro.jpg'),
(5, 'home_welcome', 'Seja Bem Vindo(a) Techlead Library');

-- --------------------------------------------------------

--
-- Estrutura da tabela `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `url` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `menu`
--

INSERT INTO `menu` (`id`, `nome`, `url`) VALUES
(26, 'Contato', 'contato'),
(25, 'Livros', 'livros'),
(24, 'Sobre Nós', 'sobre nós'),
(23, 'Home', ' / ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `paginas`
--

DROP TABLE IF EXISTS `paginas`;
CREATE TABLE IF NOT EXISTS `paginas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `corpo` text CHARACTER SET utf8,
  `url` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `paginas`
--

INSERT INTO `paginas` (`id`, `titulo`, `corpo`, `url`) VALUES
(1, 'sobre nos', 'html da biblioteca', 'minha biblioteca'),
(2, 'livros', 'html de livros', 'meus livros'),
(3, 'contato', 'html de contato', 'contato');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `senha` varchar(32) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `senha`) VALUES
(1, 'wendegrosario@gmail.com', '202cb962ac59075b964b07152d234b70');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
