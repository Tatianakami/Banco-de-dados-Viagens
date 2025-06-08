-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: mariadb-198100-db.mariadb-198100:10269
-- Tempo de geração: 08-Jun-2025 às 04:01
-- Versão do servidor: 11.1.2-MariaDB-1:11.1.2+maria~ubu2004
-- versão do PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `viagens`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `destinos`
--

CREATE TABLE `destinos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL COMMENT 'Nome do destino',
  `descricao` varchar(255) NOT NULL COMMENT 'Descricao do destino'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `destinos`
--

INSERT INTO `destinos` (`id`, `nome`, `descricao`) VALUES
(1, 'Praia do Rosa', 'Linda Praia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `reservas`
--

CREATE TABLE `reservas` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL COMMENT 'ID do usuário que fez a reserva',
  `id_destino` int(11) NOT NULL COMMENT 'ID do destino reservado',
  `data_reserva` date NOT NULL COMMENT 'Data em que a reserva foi feita',
  `status` varchar(50) NOT NULL COMMENT 'Status da reserva (ex: confirmada, cancelada)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `reservas`
--

INSERT INTO `reservas` (`id`, `id_usuario`, `id_destino`, `data_reserva`, `status`) VALUES
(1, 1, 1, '2023-11-11', 'pendente');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL COMMENT 'Nome do usuario',
  `email` varchar(100) NOT NULL COMMENT 'E-mail do usuario',
  `endereco` varchar(50) NOT NULL COMMENT 'Endereco do usuario',
  `data_nascimento` date NOT NULL COMMENT 'Data de nascimento do usuario'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`id`, `nome`, `email`, `endereco`, `data_nascimento`) VALUES
(1, 'Tatiana', 'teste@teste.com', 'Av Paulista, 100 - Bairro Bela Vista, São Paulo/SP', '1985-05-06');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `destinos`
--
ALTER TABLE `destinos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Índices para tabela `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_destino` (`id_destino`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `destinos`
--
ALTER TABLE `destinos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `reservas_ibfk_2` FOREIGN KEY (`id_destino`) REFERENCES `destinos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
