-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Nov-2020 às 03:58
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dashboard`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_clientes`
--

CREATE TABLE `tb_clientes` (
  `id` int(11) NOT NULL,
  `cliente_ativo` tinyint(1) DEFAULT 1,
  `data_cliente` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tb_clientes`
--

INSERT INTO `tb_clientes` (`id`, `cliente_ativo`, `data_cliente`) VALUES
(1, 1, '2018-11-15 21:51:39'),
(2, 1, '2018-10-05 21:51:39'),
(3, 1, '2018-09-06 21:51:39'),
(4, 0, '2018-11-29 21:51:39'),
(5, 1, '2018-08-11 21:51:39'),
(6, 1, '2018-08-16 21:51:39'),
(7, 1, '2018-09-03 21:51:39'),
(8, 1, '2018-09-27 21:51:39'),
(9, 1, '2018-11-03 21:51:39'),
(10, 0, '2018-08-21 21:51:39'),
(11, 0, '2018-10-13 21:51:39'),
(12, 1, '2018-10-01 21:51:39'),
(13, 1, '2018-11-26 21:51:39'),
(14, 0, '2018-08-19 21:51:39'),
(15, 1, '2018-09-28 21:51:39'),
(16, 1, '2018-08-12 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_contatos`
--

CREATE TABLE `tb_contatos` (
  `id` int(11) NOT NULL,
  `tipo_contato` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tb_contatos`
--

INSERT INTO `tb_contatos` (`id`, `tipo_contato`) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 1),
(5, 3),
(6, 2),
(7, 1),
(8, 1),
(9, 3),
(10, 3),
(11, 3),
(12, 1),
(13, 2),
(14, 2),
(15, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_despesas`
--

CREATE TABLE `tb_despesas` (
  `id` int(11) NOT NULL,
  `data_despesa` datetime DEFAULT current_timestamp(),
  `total` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tb_despesas`
--

INSERT INTO `tb_despesas` (`id`, `data_despesa`, `total`) VALUES
(1, '2018-08-20 00:00:00', 93.47),
(2, '2018-09-01 00:00:00', 350.27),
(3, '2018-09-04 00:00:00', 108.12),
(4, '2018-09-20 00:00:00', 15.66),
(5, '2018-10-03 00:00:00', 83.55);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_feedback`
--

CREATE TABLE `tb_feedback` (
  `id` int(11) NOT NULL,
  `reclamacoes` tinyint(1) NOT NULL,
  `elogios` tinyint(1) NOT NULL,
  `sugestoes` tinyint(1) NOT NULL,
  `data_venda` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tb_feedback`
--

INSERT INTO `tb_feedback` (`id`, `reclamacoes`, `elogios`, `sugestoes`, `data_venda`) VALUES
(1, 1, 0, 0, '2018-08-16 19:59:59'),
(2, 0, 1, 1, '2018-09-26 19:59:11'),
(3, 1, 0, 1, '2018-09-07 19:59:11'),
(4, 1, 1, 0, '2018-11-16 19:59:11'),
(5, 0, 1, 1, '2018-10-05 20:02:01'),
(6, 0, 1, 0, '2018-09-28 19:59:11'),
(7, 0, 1, 0, '2018-10-04 20:03:26'),
(8, 0, 1, 0, '2018-10-11 19:59:11'),
(9, 0, 1, 1, '2018-09-25 19:59:11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_vendas`
--

CREATE TABLE `tb_vendas` (
  `id` int(11) NOT NULL,
  `data_venda` datetime DEFAULT current_timestamp(),
  `total` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `tb_vendas`
--

INSERT INTO `tb_vendas` (`id`, `data_venda`, `total`) VALUES
(1, '2018-08-15 00:00:00', 150.20),
(2, '2018-08-16 00:00:00', 255.36),
(3, '2018-08-18 00:00:00', 70.95),
(4, '2018-09-01 00:00:00', 35.00),
(5, '2018-09-11 00:00:00', 2047.12),
(6, '2018-09-19 00:00:00', 122.85),
(7, '2018-09-23 00:00:00', 957.14),
(8, '2018-10-01 00:00:00', 333.55),
(9, '2018-10-02 00:00:00', 100.33),
(10, '2018-10-03 00:00:00', 1853.12),
(11, '2018-10-04 00:00:00', 47.47);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_clientes`
--
ALTER TABLE `tb_clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_contatos`
--
ALTER TABLE `tb_contatos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_despesas`
--
ALTER TABLE `tb_despesas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_feedback`
--
ALTER TABLE `tb_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_vendas`
--
ALTER TABLE `tb_vendas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_clientes`
--
ALTER TABLE `tb_clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `tb_contatos`
--
ALTER TABLE `tb_contatos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `tb_despesas`
--
ALTER TABLE `tb_despesas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tb_feedback`
--
ALTER TABLE `tb_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `tb_vendas`
--
ALTER TABLE `tb_vendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
