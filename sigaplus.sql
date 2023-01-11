-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Jan-2023 às 19:38
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sigaplus`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `pk_cpf_aluno` varchar(11) NOT NULL,
  `fk_codigo_curso` varchar(10) DEFAULT NULL,
  `idade_aluno` int(11) DEFAULT NULL,
  `sexo_aluno` char(1) DEFAULT NULL,
  `senha_aluno` varchar(20) NOT NULL,
  `login_aluno` varchar(20) NOT NULL,
  `nome_aluno` varchar(50) NOT NULL,
  `data_entrada_aluno_curso` date DEFAULT NULL,
  `matricula_aluno` varchar(20) NOT NULL,
  `formacao_aluno` varchar(50) DEFAULT NULL,
  `status_matricula_aluno` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`pk_cpf_aluno`, `fk_codigo_curso`, `idade_aluno`, `sexo_aluno`, `senha_aluno`, `login_aluno`, `nome_aluno`, `data_entrada_aluno_curso`, `matricula_aluno`, `formacao_aluno`, `status_matricula_aluno`) VALUES
('12526987413', '66', 37, 'M', 'AhThoh3wai', 'Mandearer85', 'Matheus Dias', '2020-10-21', '2020661309', 'ENSINO MEDIO', 'ATIVA'),
('13045359472', '66', 57, 'F', 'aighe3eKai0', 'Holf1965', 'Tânia Santos', '2019-06-10', '2019664790', 'ENSINO MEDIO', 'ATIVA'),
('13953720476', '84', 79, 'M', 'quigoh7Ou', 'Ramplas', 'Daniel Alves', '2019-05-10', '2019847274', 'ENSINO MEDIO', 'ATIVA'),
('15154919215', '51', 30, 'F', 'aiwu4wa3oGah', 'Waskedst', 'Sophia Melo', '2022-01-06', '2022511886', 'ENSINO MEDIO', 'ATIVA'),
('16195138842', '69', 40, 'F', 'Euloh2beigeo', 'Sherearter', 'Julia Correia', '2020-02-19', '2020696397', 'ENSINO MEDIO', 'ATIVA'),
('16364641861', '52', 55, 'F', 'Chu2ierie', 'Camport67', 'Amanda Cavalcanti', '2022-03-30', '2022529028', 'BACHARELADO', 'ATIVA'),
('17613096457', '63', 73, 'F', 'kiZ6Phoo', 'Yought', 'Sofia Barbosa', '2019-01-14', '2019634322', 'ENSINO MEDIO', 'ATIVA'),
('18138709673', '19', 73, 'M', 'ohNio3le', 'Putdow1949', 'Enzo Costa', '2021-11-30', '2021191636', 'ENSINO MEDIO', 'ATIVA'),
('19110461287', '51', 66, 'M', 'teez0Aifah', 'Reastill', 'Carlos Costa', '2021-06-04', '2021517391', 'ENSINO MEDIO', 'ATIVA'),
('19433608180', '66', 84, 'F', 'xah9iH9oh', 'Coord1938', 'Laura Pereira', '2021-05-01', '2021664733', 'ENSINO MEDIO', 'ATIVA'),
('20443968703', '39', 33, 'M', 'ahNgie9sh', 'Fitte1989', 'Kauê Barbosa', '2021-05-31', '2021393890', 'ENSINO MEDIO', 'ATIVA'),
('21100392635', '52', 48, 'M', 'iaY6Oo1ohCh', 'Hadvals', 'José Martins', '2022-07-21', '2022526288', 'ENSINO MEDIO', 'ATIVA'),
('25007836081', '7', 56, 'F', 'eiFohm7ai', 'Hirtire', 'Manuela Correia', '2020-11-11', '202079756', 'BACHARELADO', 'ATIVA'),
('30469116477', '98', 69, 'F', 'oo5eeNguopai', 'Legiring', 'Vitoria Gomes', '2022-08-20', '2022989183', 'ENSINO MEDIO', 'ATIVA'),
('30953498877', '14', 45, 'M', 'iy9Nae1Boo6', 'Comene77', 'Igor Cardoso', '2021-12-20', '2021149485', 'BACHARELADO', 'ATIVA'),
('31423757093', '42', 54, 'M', 'aeveej8Kedae', 'Fectle', 'Danilo Araujo', '2021-09-18', '2021427299', 'ENSINO MEDIO', 'ATIVA'),
('33288785130', '63', 30, 'M', 'ET6sohch', 'Gremplanied', 'Alex Goncalves', '2020-01-02', '2020639285', 'ENSINO MEDIO', 'ATIVA'),
('33545169141', '7', 46, 'F', 'Chei3Mie2', 'Tatem1976', 'Raissa Lima', '2021-02-25', '202173941', 'ENSINO MEDIO', 'ATIVA'),
('35457562761', '84', 32, 'F', 'Aefea5ei', 'Quakfank', 'Leila Ribeiro', '2021-04-23', '2021841896', 'ENSINO MEDIO', 'ATIVA'),
('38791957857', '19', 24, 'M', 'ni0Ahh8ief', 'Theigave', 'Douglas Cavalcanti', '2021-08-15', '2021191747', 'ENSINO MEDIO', 'ATIVA'),
('39911048944', '39', 33, 'F', 'Aeceereph3b', 'Yousucabooks89', 'Melissa Pereira', '2021-08-11', '2021394877', 'ENSINO MEDIO', 'ATIVA'),
('40183164989', '57', 32, 'F', 'aejiexo7Ie', 'Womighon', 'Thaís Oliveira', '2021-11-12', '2021574800', 'ENSINO MEDIO', 'ATIVA'),
('42493222848', '7', 79, 'F', 'Ualua8cae4', 'Pudel1943', 'Marina Azevedo', '2019-04-10', '201974159', 'ENSINO MEDIO', 'ATIVA'),
('42533516988', '39', 19, 'F', 'eefeechai5I', 'Twouldes', 'Carla Almeida', '2019-03-04', '2019395701', 'ENSINO MEDIO', 'ATIVA'),
('46176017855', '36', 43, 'M', 'eeSh3sair', 'Hision', 'Luiz Pereira', '2019-12-19', '2019364920', 'ENSINO MEDIO', 'ATIVA'),
('46975821036', '14', 46, 'F', 'ahQu5ejeiNg', 'Thereve', 'Tânia Ferreira', '2019-06-16', '2019144826', 'ENSINO MEDIO', 'ATIVA'),
('47908483761', '36', 82, 'M', 'ohk4gie9Ith', 'Wilbeend', 'Antônio Cavalcanti', '2022-12-04', '2022366423', 'ENSINO MEDIO', 'ATIVA'),
('48688428894', '87', 73, 'M', 'coo2daaH8', 'Whimseeplis', 'Murilo Souza', '2019-03-07', '2019872934', 'ENSINO MEDIO', 'ATIVA'),
('49506349941', '69', 80, 'M', 'Ain1aemeeY', 'Smathe', 'Arthur Pereira', '2022-03-19', '2022698513', 'ENSINO MEDIO', 'ATIVA'),
('55129417480', '87', 52, 'M', 'aizei4Aepai', 'Thalowass', 'Carlos Rocha', '2020-09-28', '2020875080', 'ENSINO MEDIO', 'ATIVA'),
('55804467840', '66', 25, 'M', 'ieng1iYaZi', 'Bral1997', 'Luiz Araujo', '2019-06-03', '2019666686', 'ENSINO MEDIO', 'ATIVA'),
('56666439391', '57', 43, 'M', 'iwaigh8aiP', 'Hoempot', 'Leonardo Alves', '2020-06-11', '2020572014', 'ENSINO MEDIO', 'ATIVA'),
('58465332121', '14', 83, 'F', 'Lae8cho7', 'Depe1939', 'Yasmin Cunha', '2020-02-10', '2020149244', 'ENSINO MEDIO', 'ATIVA'),
('61063609222', '39', 39, 'F', 'ohahVee2su2', 'Thasion83', 'Carolina Dias', '2020-09-07', '2020394177', 'ENSINO MEDIO', 'ATIVA'),
('62755241729', '66', 64, 'M', 'pin5eij3Ah', 'Wastal', 'Samuel Pereira', '2021-02-04', '2021665813', 'ENSINO MEDIO', 'ATIVA'),
('65122154895', '50', 34, 'F', 'igah8Daedae', 'Caraten', 'Ana Rocha', '2022-06-01', '2022509034', 'ENSINO MEDIO', 'ATIVA'),
('68408839070', '36', 21, 'F', 'ahhai9ee4Koo', 'Flaved', 'Leonor Ferreira', '2020-01-15', '2020364414', 'ENSINO MEDIO', 'ATIVA'),
('69984165846', '72', 81, 'F', 'egeeYee7ei', 'Quarsion', 'Clara Barbosa', '2020-07-04', '2020726138', 'ENSINO MEDIO', 'ATIVA'),
('72451907074', '52', 49, 'M', 'og5Eiphie1', 'Cassen', 'Vinicius Goncalves', '2019-10-06', '2019529726', 'ENSINO MEDIO', 'ATIVA'),
('73812505697', '51', 58, 'F', 'yu7aeY0Zuch', 'Periond', 'Gabriela Lima', '2021-11-11', '2021519300', 'ENSINO MEDIO', 'ATIVA'),
('74171403030', '87', 79, 'M', 'oor1At8boo', 'Tomentioun', 'Gustavo Pereira', '2019-03-02', '2019872570', 'ENSINO MEDIO', 'ATIVA'),
('75234717356', '84', 47, 'M', 'cunoo6eeNg', 'Butheladich', 'Paulo Dias', '2021-03-14', '2021844390', 'ENSINO MEDIO', 'ATIVA'),
('75702067933', '69', 34, 'F', 'aivai4Ohb', 'Apind1988', 'Anna Santos', '2021-02-21', '2021696208', 'ENSINO MEDIO', 'ATIVA'),
('76900345962', '69', 45, 'F', 'OY9Hu0efei', 'Lonishe', 'Nicole Santos', '2019-10-01', '2019699884', 'ENSINO MEDIO', 'ATIVA'),
('78096638264', '36', 44, 'M', 'aejoh2Ahy', 'Whimaked', 'Marcos Gomes', '2021-08-28', '2021367097', 'ENSINO MEDIO', 'ATIVA'),
('80636883721', '63', 83, 'M', 'IyailaJ5ei', 'Dauste', 'Luis Castro', '2022-08-17', '2022635027', 'ENSINO MEDIO', 'ATIVA'),
('81575994181', '57', 77, 'F', 'Hohx8ca5l', 'Woreas', 'Tânia Cavalcanti', '2022-02-03', '2022574735', 'ENSINO MEDIO', 'ATIVA'),
('83286713532', '69', 24, 'M', 'ip5aiW9Qu', 'Besided', 'Pedro Rodrigues', '2022-02-02', '2022699718', 'ENSINO MEDIO', 'ATIVA'),
('86257568744', '72', 61, 'F', 'cai0Zaweitu', 'Verchalsold', 'Matilde Silva', '2022-09-02', '2022723515', 'ENSINO MEDIO', 'ATIVA'),
('89635388139', '84', 77, 'F', 'IeF8yoemeeyu', 'Gread1945', 'Letícia Santos', '2021-03-31', '2021848823', 'ENSINO MEDIO', 'ATIVA'),
('91184799216', '39', 85, 'M', 'LaCuF1tohbu', 'Onen1937', 'Nicolas Rodrigues', '2021-03-20', '2021399433', 'ENSINO MEDIO', 'ATIVA'),
('92919720830', '66', 65, 'M', 'ahWe0ahxee', 'Hinticitted', 'Antônio Melo', '2022-04-29', '2022669176', 'ENSINO MEDIO', 'ATIVA'),
('95281355889', '14', 56, 'M', 'Taek7Eamahgh', 'Wernionsinks', 'Diogo Sousa', '2022-12-27', '2022145217', 'BACHARELADO', 'ATIVA'),
('95553509442', '7', 43, 'M', 'Iebak2ai', 'Whoundle', 'Eduardo Cunha', '2020-02-15', '202073783', 'ENSINO MEDIO', 'ATIVA'),
('95666947353', '74', 79, 'M', 'ahf0dai6uoL', 'Tragstenk', 'Alex Oliveira', '2019-05-07', '2019748668', 'ENSINO MEDIO', 'ATIVA'),
('97020567420', '57', 28, 'F', 'boeD9Uong', 'Hattheined94', 'Julieta Araujo', '2020-06-20', '2020578096', 'ENSINO MEDIO', 'ATIVA'),
('98393556859', '51', 77, 'F', 'te6loh6Bohj', 'Forounduce', 'Carla Ferreira', '2021-07-01', '2021519488', 'ENSINO MEDIO', 'ATIVA');

--
-- Acionadores `aluno`
--
DELIMITER $$
CREATE TRIGGER `criar_historico` AFTER INSERT ON `aluno` FOR EACH ROW INSERT INTO historico (fk_cpf_aluno, IRA_historico)
VALUES (NEW.pk_cpf_aluno, 0)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno_bolsa`
--

CREATE TABLE `aluno_bolsa` (
  `pk_fk_codigo_bolsa` varchar(10) NOT NULL,
  `pk_fk_cpf_aluno` varchar(11) NOT NULL,
  `data_cadastro_aluno_bolsa` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `aluno_bolsa`
--

INSERT INTO `aluno_bolsa` (`pk_fk_codigo_bolsa`, `pk_fk_cpf_aluno`, `data_cadastro_aluno_bolsa`) VALUES
('123977', '55129417480', '2022-02-16'),
('123977', '68408839070', '2022-02-11'),
('177514', '92919720830', '2022-04-22'),
('206824', '19110461287', '2022-04-19'),
('216712', '86257568744', '2022-09-27'),
('220343', '17613096457', '2022-05-28'),
('220343', '49506349941', '2022-09-13'),
('262463', '31423757093', '2022-08-05'),
('291645', '39911048944', '2022-11-10'),
('294929', '12526987413', '2022-02-11'),
('294929', '19110461287', '2022-02-21'),
('294929', '21100392635', '2022-08-12'),
('294929', '46176017855', '2022-11-09'),
('294929', '49506349941', '2022-08-04'),
('295030', '81575994181', '2022-02-01'),
('295030', '95281355889', '2022-03-09'),
('395496', '16364641861', '2022-07-30'),
('395496', '17613096457', '2022-11-04'),
('395496', '46176017855', '2022-10-20'),
('420532', '19110461287', '2022-04-29'),
('420532', '39911048944', '2022-09-04'),
('420532', '68408839070', '2022-11-11'),
('590015', '56666439391', '2022-03-17'),
('590015', '95281355889', '2022-04-03'),
('597375', '33288785130', '2022-11-27'),
('597375', '55129417480', '2022-01-24'),
('645051', '19110461287', '2022-03-18'),
('645051', '30469116477', '2022-04-15'),
('645051', '33545169141', '2022-08-25'),
('889159', '33545169141', '2022-02-01'),
('889159', '39911048944', '2022-03-18'),
('889159', '81575994181', '2022-04-06'),
('917718', '39911048944', '2022-09-26'),
('941466', '33288785130', '2022-07-23'),
('941466', '56666439391', '2022-03-23'),
('941466', '68408839070', '2022-07-30'),
('941466', '95281355889', '2022-05-11'),
('967015', '78096638264', '2022-08-06');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno_turma`
--

CREATE TABLE `aluno_turma` (
  `pk_fk_cpf_aluno` varchar(11) NOT NULL,
  `pk_fk_codigo_turma` varchar(10) NOT NULL,
  `nota_aluno` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `aluno_turma`
--

INSERT INTO `aluno_turma` (`pk_fk_cpf_aluno`, `pk_fk_codigo_turma`, `nota_aluno`) VALUES
('12526987413', '367', 60),
('12526987413', '66', 43),
('15154919215', '317', 60),
('16364641861', '280', 76),
('16364641861', '383', 90),
('16364641861', '556', 60),
('16364641861', '983', 76),
('17613096457', '556', 76),
('17613096457', '867', 60),
('17613096457', '903', 83),
('17613096457', '964', 60),
('19110461287', '175', 60),
('19110461287', '317', 60),
('19110461287', '32', 32),
('19110461287', '481', 79),
('19110461287', '556', 60),
('21100392635', '66', 12),
('21100392635', '873', 83),
('21100392635', '997', 79),
('30469116477', '640', 60),
('31423757093', '367', 83),
('33288785130', '367', 79),
('33288785130', '383', 76),
('33288785130', '894', 60),
('33545169141', '383', 79),
('33545169141', '873', 60),
('39911048944', '32', 41),
('39911048944', '632', 76),
('39911048944', '640', 60),
('39911048944', '997', 32),
('40183164989', '367', 60),
('40183164989', '964', 76),
('40183164989', '997', 76),
('46176017855', '137', 60),
('46176017855', '280', 79),
('46176017855', '317', 79),
('46176017855', '640', 83),
('46176017855', '957', 79),
('46176017855', '980', 60),
('48688428894', '367', 76),
('49506349941', '903', 60),
('49506349941', '980', 83),
('55129417480', '32', 60),
('56666439391', '137', 60),
('56666439391', '355', 60),
('56666439391', '481', 60),
('56666439391', '632', 79),
('58465332121', '355', 79),
('58465332121', '980', 60),
('65122154895', '481', 79),
('65122154895', '640', 79),
('65122154895', '654', 76),
('65122154895', '957', 62),
('68408839070', '342', 60),
('68408839070', '632', 60),
('78096638264', '997', 60),
('80636883721', '383', 32),
('80636883721', '481', 60),
('80636883721', '556', 64),
('80636883721', '654', 80),
('81575994181', '175', 83),
('81575994181', '317', 76),
('81575994181', '481', 79),
('86257568744', '317', 83),
('86257568744', '964', 83),
('86257568744', '983', 83),
('91184799216', '556', 79),
('91184799216', '873', 23),
('95281355889', '867', 90),
('98393556859', '342', 60),
('98393556859', '640', 79),
('98393556859', '66', 12),
('98393556859', '867', 60);

--
-- Acionadores `aluno_turma`
--
DELIMITER $$
CREATE TRIGGER `atualiza_IRA` AFTER UPDATE ON `aluno_turma` FOR EACH ROW UPDATE historico 
SET IRA_historico=(SELECT AVG(nota_aluno) 
FROM aluno_turma at 
INNER JOIN aluno a 
ON (at.pk_fk_cpf_aluno=a.pk_cpf_aluno AND a.pk_cpf_aluno=OLD.pk_fk_cpf_aluno))
WHERE fk_cpf_aluno=OLD.pk_fk_cpf_aluno
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `bolsa`
--

CREATE TABLE `bolsa` (
  `pk_codigo_bolsa` varchar(10) NOT NULL,
  `fk_numero_emec_univ` varchar(10) DEFAULT NULL,
  `remuneracao_bolsa` float NOT NULL,
  `qtd_semestres_bolsa` int(11) DEFAULT NULL,
  `situacao_bolsa` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `bolsa`
--

INSERT INTO `bolsa` (`pk_codigo_bolsa`, `fk_numero_emec_univ`, `remuneracao_bolsa`, `qtd_semestres_bolsa`, `situacao_bolsa`) VALUES
('123977', '1', 300, 3, 'ATIVA'),
('177514', '1', 300, 4, 'ATIVA'),
('206824', '1', 350, 5, 'ATIVA'),
('216712', '1', 350, 6, 'ATIVA'),
('220343', '1', 200, 3, 'ATIVA'),
('220545', '1', 400, 5, 'ATIVA'),
('262463', '1', 400, 4, 'ATIVA'),
('291645', '1', 350, 5, 'ATIVA'),
('294929', '1', 400, 3, 'ATIVA'),
('295030', '1', 200, 3, 'ATIVA'),
('395496', '1', 300, 6, 'ATIVA'),
('420532', '1', 200, 2, 'ATIVA'),
('429748', '1', 350, 5, 'ATIVA'),
('590015', '1', 200, 2, 'ATIVA'),
('597375', '1', 350, 4, 'ATIVA'),
('612241', '1', 300, 4, 'ATIVA'),
('645051', '1', 200, 5, 'ATIVA'),
('692484', '1', 200, 2, 'ATIVA'),
('723293', '1', 200, 3, 'ATIVA'),
('736798', '1', 350, 3, 'ATIVA'),
('743161', '1', 300, 3, 'ATIVA'),
('826324', '1', 200, 3, 'ATIVA'),
('844561', '1', 300, 2, 'ATIVA'),
('879445', '1', 200, 4, 'ATIVA'),
('889159', '1', 300, 6, 'ATIVA'),
('917718', '1', 200, 3, 'ATIVA'),
('941466', '1', 300, 4, 'ATIVA'),
('967015', '1', 400, 6, 'ATIVA');

-- --------------------------------------------------------

--
-- Estrutura da tabela `chefe`
--

CREATE TABLE `chefe` (
  `pk_cpf_chefe` varchar(11) NOT NULL,
  `idade_chefe` int(11) DEFAULT NULL,
  `sexo_chefe` char(1) DEFAULT NULL,
  `senha_chefe` varchar(20) NOT NULL,
  `login_chefe` varchar(20) NOT NULL,
  `nome_chefe` varchar(50) NOT NULL,
  `codigo_chefe` varchar(10) NOT NULL,
  `data_entrada_dept_chefe` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `chefe`
--

INSERT INTO `chefe` (`pk_cpf_chefe`, `idade_chefe`, `sexo_chefe`, `senha_chefe`, `login_chefe`, `nome_chefe`, `codigo_chefe`, `data_entrada_dept_chefe`) VALUES
('12746338057', 59, 'F', 'xohdu0Si3', 'Whomand', 'Sophia Melo', '4580', '2014-10-26'),
('17455321131', 44, 'F', 'Iejoo5ail1ee', 'Spither', 'Emilly Oliveira', '4627', '2007-03-17'),
('20839085066', 36, 'M', 'ohWeezioh8', 'Suffigh86', 'Thiago Rodrigues', '8796', '2013-10-21'),
('22993008047', 62, 'M', 'Nuzu6wieN5', 'Aces1960', 'Renan Oliveira', '7844', '2009-12-19'),
('39992284773', 23, 'F', 'Joh8pul1ei', 'Witts1999', 'Júlia Dias', '3412', '2022-04-18'),
('43465776145', 74, 'M', 'taer1Ce4Ae', 'Yourrimed', 'Pedro Ferreira', '7637', '2016-07-23'),
('53011599591', 84, 'F', 'Oowae5oo', 'Squick', 'Maria Alves', '4245', '2015-01-14'),
('53706923152', 44, 'F', 'miu5Aiwai', 'Oulding78', 'Giovanna Rodrigues', '8367', '2006-08-11'),
('53866731570', 21, 'F', 'aiGhohw3uu1', 'Upoing', 'Carolina Pereira', '1969', '2010-12-20'),
('58745302765', 56, 'F', 'eiFohm7ai', 'Hirtire', 'Manuela Correia', '2691', '2015-11-25'),
('59236098606', 37, 'M', 'Phaifoh8Ph', 'Ards1985', 'Miguel Pereira', '5297', '2007-12-08'),
('71460858641', 47, 'M', 'Vor8aebauB9', 'Farome', 'Pedro Souza', '9656', '2009-07-21'),
('79187562000', 44, 'F', 'ahxao9Oqu', 'Coulte', 'Eduarda Melo', '6182', '2018-07-30'),
('80258787230', 34, 'M', 'fiJoo0lo2woe', 'Dasked', 'Gustavo Barros', '2434', '2010-08-25'),
('80793652915', 45, 'M', 'eisheuPh1v', 'Heack1977', 'Joao Cavalcanti', '3420', '2013-02-02'),
('80857064254', 48, 'M', 'IeTaoxaivoo8', 'Mods1974', 'Breno Rodrigues', '6741', '2019-02-14'),
('84057715735', 55, 'F', 'xee8ceiM', 'Wascame', 'Emilly Carvalho', '3981', '2011-07-31'),
('85458795108', 74, 'F', 'Chah7ohkoh', 'Monstither', 'Manuela Rodrigues', '9922', '2020-02-15'),
('92316401959', 61, 'M', 'ooPoqu9oh', 'Rothe1961', 'Gustavo Rodrigues', '9384', '2014-10-16');

-- --------------------------------------------------------

--
-- Estrutura da tabela `coordenador`
--

CREATE TABLE `coordenador` (
  `pk_cpf_coordenador` varchar(11) NOT NULL,
  `idade_coordenador` int(11) DEFAULT NULL,
  `sexo_coordenador` varchar(1) DEFAULT NULL,
  `senha_coordenador` varchar(50) NOT NULL,
  `login_coordenador` varchar(50) NOT NULL,
  `nome_coordenador` varchar(100) NOT NULL,
  `id_coordenador` varchar(10) NOT NULL,
  `data_inicio_curso_coordenador` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `coordenador`
--

INSERT INTO `coordenador` (`pk_cpf_coordenador`, `idade_coordenador`, `sexo_coordenador`, `senha_coordenador`, `login_coordenador`, `nome_coordenador`, `id_coordenador`, `data_inicio_curso_coordenador`) VALUES
('11659767240', 28, 'M', 'oph2Imeewei', 'q', 'Nicolash Silva Dias', '566', '2015-11-06'),
('21839866327', 63, 'F', 'Ai2daquoh', 'Rame1945', 'Sarah Rocha Araujo', '944', '2013-05-09'),
('22823705567', 63, 'M', 'oph2Imeewei', 'p', 'Leonardo Barros Souza', '449', '2007-10-07'),
('26964483292', 69, 'M', 'ohngie0Ai', 's', 'Kauê Gomes Barbosa', '402', '2010-03-27'),
('29325771039', 47, 'F', 'oph2Imeewei', 'l', 'Kai Azevedo Ribeiro', '370', '0000-00-00'),
('36963173290', 19, 'M', 'xeushugee9H', 'Youturicus', 'Vitór Goncalves Martins', '556', '2003-03-12'),
('44801470665', 41, 'M', 'oph2Imeewei', 'Coarestligh', 'Samuel Souza Rodrigues', '77', '2007-11-20'),
('47582994575', 55, 'F', 'Ai2daquoh', 'Thernibled', 'Bianca Carvalho Gomes', '65', '2003-05-12'),
('47923424369', 38, 'F', 'Ai2daquoh', 'Hicies', 'Sofia Almeida Pereira', '51', '2011-05-26'),
('50915202362', 23, 'F', 'ohngie0Ai', 'n', 'Leonor Araujo Barros', '101', '2015-04-22'),
('58783405243', 43, 'M', 'ohngie0Ai', 'Wasice', 'Vitor Carvalho Azevedo', '879', '2014-09-23'),
('63188150613', 23, 'M', 'xeushugee9H', 'Sibacted', 'Igor Cunha Martins', '357', '2001-06-05'),
('65485939061', 38, 'M', 'xeushugee9H', 'o', 'Felipe Cunha Azevedo', '795', '2017-08-28'),
('68066425011', 40, 'M', 'ohngie0Ai', 'Satince', 'Julian Rodrigues Castro', '686', '2007-09-29'),
('76160997983', 64, 'M', 'ohngie0Ai', 'Wituabled', 'Davi Ferreira Costa', '149', '2004-06-17'),
('79418271737', 54, 'M', 'Ai2daquoh', 'm', 'Rafael Castro Ribeiro', '453', '2017-03-30'),
('85630356164', 58, 'M', 'xeushugee9H', 'k', 'Tomás Alves Cardoso', '445', '2001-02-01'),
('85997981709', 25, 'M', 'Ai2daquoh', 'r', 'Samuel Correia Carvalho', '656', '2014-03-07'),
('88728253744', 28, 'M', 'oph2Imeewei', 'Butersomprom', 'Diogo Souza Santos', '33', '2003-07-17');

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `pk_codigo_curso` varchar(10) NOT NULL,
  `fk_codigo_dept` varchar(10) DEFAULT NULL,
  `fk_cpf_coordenador` varchar(11) DEFAULT NULL,
  `nome_curso` varchar(50) NOT NULL,
  `qtd_semestres_curso` int(11) NOT NULL,
  `turno_curso` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`pk_codigo_curso`, `fk_codigo_dept`, `fk_cpf_coordenador`, `nome_curso`, `qtd_semestres_curso`, `turno_curso`) VALUES
('14', '55', '65485939061', 'FISICA', 8, 'DIURNO'),
('19', '65', '63188150613', 'ENGENHARIA', 12, 'DIURNO'),
('36', '48', '85630356164', 'MEDICINA', 12, 'DIURNO'),
('39', '98', '47582994575', 'AGRONOMIA', 8, 'DIURNO'),
('42', '28', '85997981709', 'ECONOMIA', 8, 'DIURNO'),
('50', '28', '11659767240', 'ADMINISTRACAO', 8, 'NOTURNO'),
('51', '5', '58783405243', 'NUTRICAO', 10, 'DIURNO'),
('52', '72', '79418271737', 'LETRAS', 8, 'NOTURNO'),
('57', '1', '21839866327', 'INTERNET', 8, 'NOTURNO'),
('63', '70', '68066425011', 'DIREITO', 10, 'DIURNO'),
('66', '23', '47923424369', 'MATEMATICA', 8, 'NOTURNO'),
('69', '49', '29325771039', 'ESTATISTICA', 12, 'NOTURNO'),
('7', '63', '36963173290', 'ARTES', 8, 'DIURNO'),
('72', '21', '76160997983', 'COMPUTACAO', 9, 'NOTURNO'),
('74', '77', '22823705567', 'MEDICINA VETERINARIA', 12, 'NOTURNO'),
('76', '90', '26964483292', 'JORNALISMO', 8, 'DIURNO'),
('84', '55', '50915202362', 'QUIMICA', 8, 'DIURNO'),
('87', '74', '88728253744', 'CINEMA', 8, 'DIURNO'),
('98', '38', '44801470665', 'HISTORIA', 8, 'NOTURNO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamento`
--

CREATE TABLE `departamento` (
  `pk_codigo_dept` varchar(10) NOT NULL,
  `fk_cpf_chefe` varchar(11) DEFAULT NULL,
  `fk_codigo_instituto` varchar(10) DEFAULT NULL,
  `end_rua_dept` varchar(30) DEFAULT NULL,
  `end_numero_dept` varchar(10) DEFAULT NULL,
  `end_bairro_dept` varchar(30) DEFAULT NULL,
  `end_cidade_dept` varchar(30) DEFAULT NULL,
  `end_estado_dept` varchar(30) DEFAULT NULL,
  `end_cep_dept` varchar(8) NOT NULL,
  `nome_dept` varchar(30) NOT NULL,
  `data_fundacao_dept` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `departamento`
--

INSERT INTO `departamento` (`pk_codigo_dept`, `fk_cpf_chefe`, `fk_codigo_instituto`, `end_rua_dept`, `end_numero_dept`, `end_bairro_dept`, `end_cidade_dept`, `end_estado_dept`, `end_cep_dept`, `nome_dept`, `data_fundacao_dept`) VALUES
('1', '53011599591', '47', 'Rua Cruz e Souza', '1979', 'SAO PEDRO', 'JUIZ DE FORA', 'MG', '99052320', 'DEP INTERNET', '2010-07-31'),
('21', '79187562000', '47', 'Rua Santo Valotto', '1723', 'SAO PEDRO', 'JUIZ DE FORA', 'MG', '07135280', 'DEP COMPUTACAO', '2010-03-28'),
('23', '84057715735', '47', 'Rua Dona Emília Domagalski', '269', 'SAO PEDRO', 'JUIZ DE FORA', 'MG', '91120470', 'DEP MATEMATICA', '2008-01-12'),
('27', '20839085066', '47', 'Rua Projetada São Francisco', '145', 'SAO PEDRO', 'JUIZ DE FORA', 'MG', '56906480', 'DEP ECONOMIA', '2007-01-04'),
('28', '92316401959', '47', 'Rua Luís Rodolfo Vilena', '205', 'SAO PEDRO', 'JUIZ DE FORA', 'MG', '26042400', 'DEP ADMINISTRACAO', '2005-07-19'),
('38', '12746338057', '68', 'Rua Diamantina', '150', 'SAO PEDRO', 'JUIZ DE FORA', 'MG', '74210112', 'DEP HISTORIA', '2003-09-13'),
('48', '80857064254', '51', 'Rua Morikichi Tokumoto', '38', 'SAO PEDRO', 'JUIZ DE FORA', 'MG', '08690275', 'DEP MEDICINA', '2000-03-30'),
('49', '71460858641', '68', 'Rua Belarmino Peres', '757', 'SAO PEDRO', 'JUIZ DE FORA', 'MG', '75806070', 'DEP ESTATISTICA', '2006-04-17'),
('5', '80793652915', '51', 'Rua Labor Club', '472', 'SAO PEDRO', 'JUIZ DE FORA', 'MG', '35050130', 'DEP NUTRICAO', '2003-03-15'),
('52', '53706923152', '47', 'Rua Júlio César Arresti', '405', 'SAO PEDRO', 'JUIZ DE FORA', 'MG', '04855525', 'DEP FISICA', '2002-10-21'),
('55', '17455321131', '47', 'Rua Curruira', '1512', 'SAO PEDRO', 'JUIZ DE FORA', 'MG', '05186200', 'DEP QUIMICA', '2005-06-13'),
('63', '39992284773', '68', 'Rua Manoel Garcia', '1075', 'SAO PEDRO', 'JUIZ DE FORA', 'MG', '25253606', 'DEP ARTES', '2008-09-19'),
('65', '22993008047', '47', 'Rua Pindorama', '329', 'SAO PEDRO', 'JUIZ DE FORA', 'MG', '08694170', 'DEP ENGENHARIA', '2007-04-14'),
('70', '59236098606', '81', 'Rua Oreade', '1221', 'SAO PEDRO', 'JUIZ DE FORA', 'MG', '79065400', 'DEP DIREITO', '2007-04-02'),
('72', '80258787230', '68', 'Rua Professor Cleto', '444', 'SAO PEDRO', 'JUIZ DE FORA', 'MG', '83221670', 'DEP LETRAS', '2000-10-01'),
('74', '43465776145', '68', 'Rua Adriano Monteiro da Silva', '1575', 'SAO PEDRO', 'JUIZ DE FORA', 'MG', '09626040', 'DEP CINEMA', '2004-07-08'),
('77', '85458795108', '51', 'Rua Cristovam Lintz', '196', 'SAO PEDRO', 'JUIZ DE FORA', 'MG', '58020180', 'DEP MEDICINA VETERINARIA', '2007-03-02'),
('90', '53866731570', '68', 'Rua José Francisco de Paula Sa', '1159', 'SAO PEDRO', 'JUIZ DE FORA', 'MG', '12509410', 'DEP JORNALISMO', '2007-06-21'),
('98', '58745302765', '88', 'Rua Anita Garibaldi', '1488', 'SAO PEDRO', 'JUIZ DE FORA', 'MG', '96083500', 'DEP AGRONOMIA', '2004-04-06');

-- --------------------------------------------------------

--
-- Estrutura da tabela `diretor`
--

CREATE TABLE `diretor` (
  `pk_cpf_diretor` varchar(11) NOT NULL,
  `idade_diretor` int(11) DEFAULT NULL,
  `sexo_diretor` char(1) DEFAULT NULL,
  `senha_diretor` varchar(20) NOT NULL,
  `login_diretor` varchar(20) NOT NULL,
  `nome_diretor` varchar(50) DEFAULT NULL,
  `numero_diretor` varchar(10) NOT NULL,
  `data_inicio_instituto_diretor` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `diretor`
--

INSERT INTO `diretor` (`pk_cpf_diretor`, `idade_diretor`, `sexo_diretor`, `senha_diretor`, `login_diretor`, `nome_diretor`, `numero_diretor`, `data_inicio_instituto_diretor`) VALUES
('24708434383', 65, 'F', 'dePhai7Eeth', 'Suponeved', 'Larissa Cavalcanti', '10', '2004-05-17'),
('31045992365', 83, 'F', 'Ail2gae9Ei', 'Pegreare', 'Luana Carvalho', '8', '2021-05-07'),
('43489928616', 83, 'M', 'Lazoo9zuz', 'Youreand', 'Kauan Santos', '14', '2002-06-03'),
('54441837179', 47, 'M', 'aQueeCh6ee', 'Moroulthe1995', 'Lucas Martins', '12', '2019-04-05'),
('70709194244', 62, 'F', 'iso2aiB8iqu', 'Shat2000', 'Lara Almeida', '6', '2005-01-28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `pk_codigo_disciplina` varchar(10) NOT NULL,
  `nome_disciplina` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`pk_codigo_disciplina`, `nome_disciplina`) VALUES
('13', 'LABORATORIO DE QUIMICA'),
('14', 'ETICA'),
('20', 'DIREITO PRIVADO'),
('33', 'NUTRICAO ESPORTIVA'),
('38', 'PORTUGUES INSTRUMENTAL'),
('45', 'NUTRICAO CLINICA'),
('49', 'INTELIGENCIA ARTIFICIAL'),
('51', 'MATEMATICA FINANCEIRA'),
('54', 'HISTORIA DO DIREITO'),
('59', 'CALCULO 1'),
('62', 'MICROECONOMIA'),
('69', 'HISTORIA DO BRASIL'),
('81', 'HISTORIA MEDIEVAL'),
('82', 'ALGORITMOS'),
('89', 'MACROECONOMIA'),
('90', 'BANCO DE DADOS'),
('94', 'LABORATORIO DE FISICA'),
('95', 'PROBABILIDADE'),
('96', 'CALCULO 2'),
('97', 'ANATOMIA 1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `grade`
--

CREATE TABLE `grade` (
  `pk_codigo_grade` varchar(10) NOT NULL,
  `fk_codigo_curso` varchar(10) DEFAULT NULL,
  `ano_registro_grade` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `grade`
--

INSERT INTO `grade` (`pk_codigo_grade`, `fk_codigo_curso`, `ano_registro_grade`) VALUES
('14', '36', '2019'),
('16', '66', '2013'),
('24', '84', '2015'),
('25', '74', '2015'),
('33', '52', '2012'),
('38', '63', '2011'),
('43', '7', '2010'),
('45', '57', '2011'),
('5', '69', '2019'),
('57', '84', '2015'),
('58', '19', '2016'),
('6', '98', '2013'),
('69', '87', '2017'),
('7', '51', '2012'),
('70', '42', '2015'),
('75', '39', '2012'),
('89', '50', '2014'),
('93', '14', '2014'),
('98', '72', '2010');

-- --------------------------------------------------------

--
-- Estrutura da tabela `grade_disciplina`
--

CREATE TABLE `grade_disciplina` (
  `pk_fk_codigo_grade` varchar(10) NOT NULL,
  `pk_fk_codigo_disciplina` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `grade_disciplina`
--

INSERT INTO `grade_disciplina` (`pk_fk_codigo_grade`, `pk_fk_codigo_disciplina`) VALUES
('16', '33'),
('16', '49'),
('16', '69'),
('24', '51'),
('24', '62'),
('24', '95'),
('24', '97'),
('25', '13'),
('25', '20'),
('25', '59'),
('25', '89'),
('33', '13'),
('33', '69'),
('38', '33'),
('38', '59'),
('43', '54'),
('5', '20'),
('5', '51'),
('5', '96'),
('57', '54'),
('57', '95'),
('58', '14'),
('6', '33'),
('69', '20'),
('7', '13'),
('7', '20'),
('7', '51'),
('70', '95'),
('75', '94'),
('89', '13'),
('89', '51'),
('89', '90'),
('93', '96'),
('98', '69');

-- --------------------------------------------------------

--
-- Estrutura da tabela `historico`
--

CREATE TABLE `historico` (
  `pk_numero_historico` varchar(10) DEFAULT NULL,
  `fk_cpf_aluno` varchar(11) DEFAULT NULL,
  `IRA_historico` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `historico`
--

INSERT INTO `historico` (`pk_numero_historico`, `fk_cpf_aluno`, `IRA_historico`) VALUES
(NULL, '92919720830', 0),
(NULL, '16364641861', 0),
(NULL, '95281355889', 0),
(NULL, '68408839070', 0),
(NULL, '80636883721', 0),
(NULL, '17613096457', 0),
(NULL, '56666439391', 0),
(NULL, '30469116477', 0),
(NULL, '15154919215', 0),
(NULL, '31423757093', 0),
(NULL, '39911048944', 0),
(NULL, '55129417480', 0),
(NULL, '48688428894', 0),
(NULL, '46176017855', 0),
(NULL, '33288785130', 0),
(NULL, '81575994181', 0),
(NULL, '21100392635', 0),
(NULL, '40183164989', 0),
(NULL, '65122154895', 0),
(NULL, '33545169141', 0),
(NULL, '19110461287', 0),
(NULL, '91184799216', 0),
(NULL, '35457562761', 0),
(NULL, '12526987413', 0),
(NULL, '98393556859', 0),
(NULL, '58465332121', 0),
(NULL, '86257568744', 0),
(NULL, '49506349941', 0),
(NULL, '78096638264', 0),
(NULL, '19433608180', 0),
(NULL, '20443968703', 0),
(NULL, '74171403030', 0),
(NULL, '95553509442', 0),
(NULL, '13953720476', 0),
(NULL, '47908483761', 0),
(NULL, '62755241729', 0),
(NULL, '38791957857', 0),
(NULL, '75234717356', 0),
(NULL, '30953498877', 0),
(NULL, '46975821036', 0),
(NULL, '55804467840', 0),
(NULL, '95666947353', 0),
(NULL, '42533516988', 0),
(NULL, '76900345962', 0),
(NULL, '42493222848', 0),
(NULL, '89635388139', 0),
(NULL, '18138709673', 0),
(NULL, '69984165846', 0),
(NULL, '75702067933', 0),
(NULL, '13045359472', 0),
(NULL, '16195138842', 0),
(NULL, '97020567420', 0),
(NULL, '73812505697', 0),
(NULL, '61063609222', 0),
(NULL, '72451907074', 0),
(NULL, '83286713532', 0),
(NULL, '25007836081', 0),
('5696301', '92919720830', 81.99),
('3089951', '16364641861', 52.49),
('5688968', '95281355889', 62.11),
('3337728', '68408839070', 37.33),
('7503161', '80636883721', 32.58),
('3734887', '17613096457', 38.74),
('2859699', '56666439391', 48.64),
('5441798', '30469116477', 82.56),
('3904953', '15154919215', 91.33),
('8313278', '31423757093', 39.82),
('3922271', '39911048944', 92.66),
('1433124', '55129417480', 32.65),
('4985305', '48688428894', 88.76),
('2793832', '46176017855', 54.16),
('4277203', '33288785130', 94.03),
('1980428', '81575994181', 79.73),
('6578038', '21100392635', 88.3),
('1154446', '40183164989', 30.61),
('7353871', '65122154895', 33.55),
('6880589', '33545169141', 42.52),
('6413124', '19110461287', 41.75),
('8329066', '91184799216', 35.18),
('6320871', '35457562761', 66.06),
('3616742', '12526987413', 45.61),
('9633552', '98393556859', 44.64),
('8274456', '58465332121', 46.44),
('8238184', '86257568744', 95.95),
('9987152', '49506349941', 90.62),
('2343357', '78096638264', 83.4),
('9651305', '19433608180', 96.95),
('6438097', '20443968703', 32.33),
('8919373', '74171403030', 85.14),
('8909253', '95553509442', 66.94),
('1066976', '13953720476', 50.27),
('5846093', '47908483761', 55.83),
('4597466', '62755241729', 70.55),
('6544388', '38791957857', 82.03),
('2334800', '75234717356', 87.8),
('6481829', '30953498877', 55.21),
('6471948', '46975821036', 62.84),
('2346541', '55804467840', 74.23),
('6451683', '95666947353', 69.24),
('4475747', '42533516988', 98.4),
('8738821', '76900345962', 92.35),
('3607991', '42493222848', 55.03),
('7592426', '89635388139', 82.05),
('6616061', '18138709673', 80.69),
('1223512', '69984165846', 58.7),
('9205688', '75702067933', 30.05),
('3104426', '13045359472', 31.3),
('1914886', '16195138842', 51.35),
('6321857', '97020567420', 35.65),
('7998515', '73812505697', 63.54),
('3393660', '61063609222', 50.27),
('2441129', '72451907074', 69.46),
('4823096', '83286713532', 47.66),
('1807839', '25007836081', 61.21);

-- --------------------------------------------------------

--
-- Estrutura da tabela `instituto`
--

CREATE TABLE `instituto` (
  `pk_codigo_instituto` varchar(10) NOT NULL,
  `fk_cpf_diretor` varchar(11) DEFAULT NULL,
  `fk_numero_emec_univ` varchar(10) DEFAULT NULL,
  `nome_instituto` varchar(30) NOT NULL,
  `data_fundacao_instituto` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `instituto`
--

INSERT INTO `instituto` (`pk_codigo_instituto`, `fk_cpf_diretor`, `fk_numero_emec_univ`, `nome_instituto`, `data_fundacao_instituto`) VALUES
('47', '70709194244', '1', 'ICE', '2000-02-15'),
('51', '54441837179', '1', 'ICM', '2000-09-20'),
('68', '31045992365', '1', 'ICH', '2002-08-20'),
('81', '43489928616', '1', 'ICJ', '2001-09-28'),
('88', '24708434383', '1', 'ICB', '2002-04-10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `pk_cpf_professor` varchar(11) NOT NULL,
  `fk_codigo_dept` varchar(10) DEFAULT NULL,
  `sexo_professor` char(1) DEFAULT NULL,
  `idade_professor` int(11) DEFAULT NULL,
  `senha_professor` varchar(20) NOT NULL,
  `login_professor` varchar(20) NOT NULL,
  `nome_professor` varchar(50) NOT NULL,
  `codigo_professor` varchar(10) NOT NULL,
  `formacao_professor` varchar(50) DEFAULT NULL,
  `data_inicio_professor_departamento` date DEFAULT NULL,
  `horas_professor_departamento` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`pk_cpf_professor`, `fk_codigo_dept`, `sexo_professor`, `idade_professor`, `senha_professor`, `login_professor`, `nome_professor`, `codigo_professor`, `formacao_professor`, `data_inicio_professor_departamento`, `horas_professor_departamento`) VALUES
('12186304640', '38', 'F', 31, 'ohahVee2su2', 'Thasion83', 'Carolina Dias', '9123', 'MESTRADO', '2013-09-20', 30),
('13116525345', '55', 'F', 65, 'egeeYee7ei', 'Quarsion', 'Clara Barbosa', '5405', 'DOUTORADO', '2017-03-03', 30),
('22228140219', '70', 'M', 75, 'Iebak2ai', 'Whoundle', 'Eduardo Cunha', '4657', 'MESTRADO', '2016-10-16', 39),
('23947635006', '21', 'M', 55, 'aejoh2Ahy', 'Whimaked', 'Marcos Gomes', '4985', 'MESTRADO', '2017-02-13', 38),
('28058390169', '5', 'M', 44, 'oor1At8boo', 'Tomentioun', 'Gustavo Pereira', '3814', 'DOUTORADO', '2014-05-28', 39),
('28161993419', '63', 'F', 58, 'boeD9Uong', 'Hattheined94', 'Julieta Araujo', '7268', 'DOUTORADO', '2012-04-02', 38),
('31356147152', '63', 'M', 57, 'cunoo6eeNg', 'Butheladich', 'Paulo Dias', '1223', 'MESTRADO', '2011-09-24', 37),
('32379010742', '70', 'F', 57, 'Ualua8cae4', 'Pudel1943', 'Marina Azevedo', '5618', 'DOUTORADO', '2019-09-09', 36),
('34472127738', '27', 'M', 44, 'ahf0dai6uoL', 'Tragstenk', 'Alex Oliveira', '2539', 'DOUTORADO', '2015-04-14', 30),
('36999772948', '65', 'F', 36, 'cai0Zaweitu', 'Verchalsold', 'Matilde Silva', '2211', 'DOUTORADO', '2013-02-18', 30),
('38436188690', '49', 'F', 55, 'ahQu5ejeiNg', 'Thereve', 'Tânia Ferreira', '2751', 'DOUTORADO', '2016-09-06', 34),
('41476988435', '48', 'M', 72, 'AhThoh3wai', 'Mandearer85', 'Matheus Dias', '1543', 'DOUTORADO', '0000-00-00', 40),
('48937473997', '77', 'F', 64, 'xah9iH9oh', 'Coord1938', 'Laura Pereira', '8373', 'DOUTORADO', '2017-07-19', 38),
('52480363037', '48', 'M', 40, 'ahNgie9sh', 'Fitte1989', 'Kauê Barbosa', '8229', 'DOUTORADO', '2018-02-28', 36),
('53722123619', '5', 'F', 76, 'Euloh2beigeo', 'Sherearter', 'Julia Correia', '7188', 'DOUTORADO', '2011-11-27', 31),
('59149100405', '52', 'M', 61, 'iy9Nae1Boo6', 'Comene77', 'Igor Cardoso', '5634', 'DOUTORADO', '2018-11-01', 33),
('60544534181', '65', 'F', 30, 'yu7aeY0Zuch', 'Periond', 'Gabriela Lima', '6198', 'MESTRADO', '2013-09-22', 36),
('62681985808', '23', 'F', 30, 'OY9Hu0efei', 'Lonishe', 'Nicole Santos', '9405', 'MESTRADO', '2021-12-14', 32),
('62712520195', '72', 'M', 49, 'Ain1aemeeY', 'Smathe', 'Arthur Pereira', '4549', 'DOUTORADO', '2014-11-18', 39),
('64474098974', '49', 'M', 36, 'pin5eij3Ah', 'Wastal', 'Samuel Pereira', '4137', 'DOUTORADO', '2016-04-08', 36),
('70640409764', '27', 'F', 77, 'aivai4Ohb', 'Apind1988', 'Anna Santos', '8556', 'DOUTORADO', '2019-03-25', 31),
('73563436881', '21', 'F', 64, 'te6loh6Bohj', 'Forounduce', 'Carla Ferreira', '2140', 'DOUTORADO', '2012-07-01', 31),
('74324439305', '52', 'F', 42, 'Lae8cho7', 'Depe1939', 'Yasmin Cunha', '9846', 'DOUTORADO', '2020-10-28', 34),
('75419690179', '5', 'M', 68, 'ohNio3le', 'Putdow1949', 'Enzo Costa', '3722', 'MESTRADO', '2017-06-15', 39),
('76015186022', '21', 'F', 49, 'Aefea5ei', 'Quakfank', 'Leila Ribeiro', '7029', 'MESTRADO', '2013-10-19', 30),
('76269849876', '98', 'F', 38, 'eefeechai5I', 'Twouldes', 'Carla Almeida', '9715', 'DOUTORADO', '2016-09-24', 39),
('81159670579', '23', 'M', 65, 'quigoh7Ou', 'Ramplas', 'Daniel Alves', '9396', 'DOUTORADO', '2018-11-06', 34),
('86579112264', '21', 'M', 67, 'ni0Ahh8ief', 'Theigave', 'Douglas Cavalcanti', '3646', 'DOUTORADO', '2011-10-05', 39),
('87116572191', '98', 'M', 49, 'ieng1iYaZi', 'Bral1997', 'Luiz Araujo', '2280', 'DOUTORADO', '2014-07-09', 36),
('90206793754', '52', 'F', 72, 'IeF8yoemeeyu', 'Gread1945', 'Letícia Santos', '6973', 'DOUTORADO', '2014-04-03', 31),
('91330588382', '72', 'M', 31, 'ohk4gie9Ith', 'Wilbeend', 'Antônio Cavalcanti', '3446', 'DOUTORADO', '2015-04-27', 38),
('91612768607', '70', 'F', 30, 'aighe3eKai0', 'Holf1965', 'Tânia Santos', '1116', 'MESTRADO', '2016-03-08', 40);

-- --------------------------------------------------------

--
-- Estrutura da tabela `reitor`
--

CREATE TABLE `reitor` (
  `pk_cpf_reitor` varchar(11) NOT NULL,
  `idade_reitor` int(11) DEFAULT NULL,
  `sexo_reitor` char(1) DEFAULT NULL,
  `senha_reitor` varchar(20) NOT NULL,
  `login_reitor` varchar(20) NOT NULL,
  `nome_reitor` varchar(50) DEFAULT NULL,
  `codigo_reitor` varchar(10) NOT NULL,
  `data_entrada_reitor_universidade` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `reitor`
--

INSERT INTO `reitor` (`pk_cpf_reitor`, `idade_reitor`, `sexo_reitor`, `senha_reitor`, `login_reitor`, `nome_reitor`, `codigo_reitor`, `data_entrada_reitor_universidade`) VALUES
('69264088237', 46, 'F', 'Chei3Mie2', 'Tatem1976', 'Raissa Lima', '1483', '2014-08-07'),
('85776705446', 66, 'M', 'teez0Aifah', 'Reastill', 'Carlos Costa', '4614', '2002-04-01');

-- --------------------------------------------------------

--
-- Estrutura da tabela `secretaria`
--

CREATE TABLE `secretaria` (
  `pk_cpf_secretaria` varchar(11) NOT NULL,
  `fk_codigo_dept` varchar(10) DEFAULT NULL,
  `idade_secretaria` int(11) DEFAULT NULL,
  `sexo_secretaria` char(2) DEFAULT NULL,
  `senha_secretaria` varchar(20) NOT NULL,
  `login_secretaria` varchar(20) NOT NULL,
  `nome_secretaria` varchar(30) DEFAULT NULL,
  `registro_secretaria` varchar(10) NOT NULL,
  `setor_secretaria` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `secretaria`
--

INSERT INTO `secretaria` (`pk_cpf_secretaria`, `fk_codigo_dept`, `idade_secretaria`, `sexo_secretaria`, `senha_secretaria`, `login_secretaria`, `nome_secretaria`, `registro_secretaria`, `setor_secretaria`) VALUES
('10820198543', '21', 32, 'M', 'OhChae2dez5', 'Mosooving', 'Júlio Carvalho', '551', 'ATENDIMENTO'),
('23697966292', '72', 52, 'F', 'aeNgoo7Fae', 'Nowny1970', 'Leonor Barbosa', '536', 'ATENDIMENTO'),
('26047311863', '98', 82, 'F', 'boelis6Mah', 'Evestan', 'Bruna Sousa', '518', 'FINANCEIRO'),
('33372304871', '98', 29, 'F', 'Iav9Ana0mu', 'Platudd', 'Gabrielle Almeida', '351', 'RH'),
('35574666869', '98', 81, 'F', 'Tiec0zae', 'Weree1941', 'Raissa Dias', '879', 'ATENDIMENTO'),
('38501901174', '55', 42, 'F', 'if0saeS6Ti', 'Camease', 'Júlia Correia', '678', 'ATENDIMENTO'),
('38585287006', '65', 63, 'M', 'Thu5iequie9t', 'Thance', 'Victor Almeida', '546', 'RH'),
('47357068284', '21', 21, 'F', 'eiHou1choh', 'Compond', 'Yasmin Melo', '948', 'FINANCEIRO'),
('51655935294', '65', 38, 'M', 'Ahphoo0eim', 'Sworsed', 'Estevan Almeida', '430', 'FINANCEIRO'),
('77068042936', '55', 28, 'M', 'Thohfo2quee', 'Liker1994', 'Daniel Barbosa', '562', 'ATENDIMENTO'),
('82918510817', '55', 33, 'F', 'kuoJae8we2', 'Cied1989', 'Evelyn Almeida', '514', 'FINANCEIRO'),
('85785396667', '65', 76, 'F', 'Aew8eechae', 'Whimseeplis1946', 'Carla Ribeiro', '395', 'FINANCEIRO'),
('91560039751', '55', 71, 'M', 'moo0Tai7g', 'Thostiress', 'Lucas Souza', '287', 'RH'),
('95424960533', '72', 64, 'M', 'YaK1of9Ielu', 'Barpries58', 'Kauê Gomes', '476', 'RH');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `pk_codigo_turma` varchar(10) NOT NULL,
  `fk_cpf_professor` varchar(11) DEFAULT NULL,
  `fk_codigo_disciplina` varchar(10) DEFAULT NULL,
  `turno_turma` varchar(20) DEFAULT NULL,
  `capacidade_turma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`pk_codigo_turma`, `fk_cpf_professor`, `fk_codigo_disciplina`, `turno_turma`, `capacidade_turma`) VALUES
('137', '64474098974', '96', 'NOTURNO', 75),
('175', '34472127738', '62', 'NOTURNO', 75),
('280', '28058390169', '33', 'NOTURNO', 100),
('288', '64474098974', '95', 'NOTURNO', 100),
('317', '76015186022', '82', 'DIURNO', 75),
('32', '52480363037', '97', 'DIURNO', 100),
('342', '52480363037', '97', 'NOTURNO', 75),
('355', '12186304640', '81', 'DIURNO', 75),
('367', '28058390169', '33', 'NOTURNO', 100),
('383', '70640409764', '89', 'DIURNO', 50),
('481', '12186304640', '54', 'DIURNO', 100),
('556', '52480363037', '97', 'DIURNO', 75),
('632', '70640409764', '62', 'NOTURNO', 100),
('640', '28058390169', '13', 'NOTURNO', 50),
('654', '64474098974', '95', 'NOTURNO', 75),
('66', '41476988435', '97', 'NOTURNO', 50),
('867', '52480363037', '97', 'DIdade_cyrURNO', 100),
('873', '13116525345', '13', 'DIURNO', 50),
('894', '12186304640', '54', 'DIURNO', 100),
('903', '34472127738', '89', 'NOTURNO', 50),
('957', '34472127738', '89', 'NOTURNO', 100),
('964', '76015186022', '90', 'NOTURNO', 75),
('980', '12186304640', '14', 'DIURNO', 100),
('983', '76015186022', '49', 'DIURNO', 75),
('997', '34472127738', '62', 'NOTURNO', 100);

-- --------------------------------------------------------

--
-- Estrutura da tabela `universidade`
--

CREATE TABLE `universidade` (
  `pk_numero_emec_univ` varchar(10) NOT NULL,
  `fk_cpf_reitor` varchar(11) DEFAULT NULL,
  `end_rua_univ` varchar(30) DEFAULT NULL,
  `end_numero_univ` varchar(10) DEFAULT NULL,
  `end_bairro_univ` varchar(30) DEFAULT NULL,
  `end_cidade_univ` varchar(30) DEFAULT NULL,
  `end_estado_univ` varchar(30) DEFAULT NULL,
  `end_cep_univ` varchar(8) NOT NULL,
  `nome_univ` varchar(30) NOT NULL,
  `data_fundacao_univ` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `universidade`
--

INSERT INTO `universidade` (`pk_numero_emec_univ`, `fk_cpf_reitor`, `end_rua_univ`, `end_numero_univ`, `end_bairro_univ`, `end_cidade_univ`, `end_estado_univ`, `end_cep_univ`, `nome_univ`, `data_fundacao_univ`) VALUES
('1', '69264088237', 'Rua Lauro Vicuna', '1894', 'SAO PEDRO', 'JUIZ DE FORA', 'MG', '69080292', 'UFJF', '1990-10-12');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`pk_cpf_aluno`),
  ADD UNIQUE KEY `login_aluno` (`login_aluno`),
  ADD UNIQUE KEY `matricula_aluno` (`matricula_aluno`),
  ADD KEY `fk_codigo_curso` (`fk_codigo_curso`),
  ADD KEY `indice_aluno_matricula_ativa` (`pk_cpf_aluno`,`status_matricula_aluno`);

--
-- Índices para tabela `aluno_bolsa`
--
ALTER TABLE `aluno_bolsa`
  ADD PRIMARY KEY (`pk_fk_codigo_bolsa`,`pk_fk_cpf_aluno`),
  ADD KEY `pk_fk_cpf_aluno` (`pk_fk_cpf_aluno`);

--
-- Índices para tabela `aluno_turma`
--
ALTER TABLE `aluno_turma`
  ADD PRIMARY KEY (`pk_fk_cpf_aluno`,`pk_fk_codigo_turma`),
  ADD KEY `pk_fk_codigo_turma` (`pk_fk_codigo_turma`);

--
-- Índices para tabela `bolsa`
--
ALTER TABLE `bolsa`
  ADD PRIMARY KEY (`pk_codigo_bolsa`),
  ADD KEY `fk_numero_emec_univ` (`fk_numero_emec_univ`);

--
-- Índices para tabela `chefe`
--
ALTER TABLE `chefe`
  ADD PRIMARY KEY (`pk_cpf_chefe`),
  ADD UNIQUE KEY `login_chefe` (`login_chefe`),
  ADD UNIQUE KEY `codigo_chefe` (`codigo_chefe`);

--
-- Índices para tabela `coordenador`
--
ALTER TABLE `coordenador`
  ADD PRIMARY KEY (`pk_cpf_coordenador`),
  ADD UNIQUE KEY `login_coordenador` (`login_coordenador`),
  ADD UNIQUE KEY `id_coordenador` (`id_coordenador`);

--
-- Índices para tabela `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`pk_codigo_curso`),
  ADD KEY `fk_codigo_dept` (`fk_codigo_dept`),
  ADD KEY `fk_cpf_coordenador` (`fk_cpf_coordenador`);

--
-- Índices para tabela `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`pk_codigo_dept`),
  ADD KEY `fk_cpf_chefe` (`fk_cpf_chefe`),
  ADD KEY `fk_codigo_instituto` (`fk_codigo_instituto`);

--
-- Índices para tabela `diretor`
--
ALTER TABLE `diretor`
  ADD PRIMARY KEY (`pk_cpf_diretor`),
  ADD UNIQUE KEY `login_diretor` (`login_diretor`),
  ADD UNIQUE KEY `numero_diretor` (`numero_diretor`);

--
-- Índices para tabela `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`pk_codigo_disciplina`);

--
-- Índices para tabela `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`pk_codigo_grade`),
  ADD KEY `fk_codigo_curso` (`fk_codigo_curso`);

--
-- Índices para tabela `grade_disciplina`
--
ALTER TABLE `grade_disciplina`
  ADD PRIMARY KEY (`pk_fk_codigo_grade`,`pk_fk_codigo_disciplina`),
  ADD KEY `pk_fk_codigo_disciplina` (`pk_fk_codigo_disciplina`);

--
-- Índices para tabela `historico`
--
ALTER TABLE `historico`
  ADD KEY `fk_cpf_aluno` (`fk_cpf_aluno`);

--
-- Índices para tabela `instituto`
--
ALTER TABLE `instituto`
  ADD PRIMARY KEY (`pk_codigo_instituto`),
  ADD KEY `fk_cpf_diretor` (`fk_cpf_diretor`),
  ADD KEY `fk_numero_emec_univ` (`fk_numero_emec_univ`);

--
-- Índices para tabela `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`pk_cpf_professor`),
  ADD UNIQUE KEY `login_professor` (`login_professor`),
  ADD UNIQUE KEY `codigo_professor` (`codigo_professor`),
  ADD KEY `fk_codigo_dept` (`fk_codigo_dept`);

--
-- Índices para tabela `reitor`
--
ALTER TABLE `reitor`
  ADD PRIMARY KEY (`pk_cpf_reitor`),
  ADD UNIQUE KEY `login_reitor` (`login_reitor`),
  ADD UNIQUE KEY `codigo_reitor` (`codigo_reitor`);

--
-- Índices para tabela `secretaria`
--
ALTER TABLE `secretaria`
  ADD PRIMARY KEY (`pk_cpf_secretaria`),
  ADD UNIQUE KEY `login_secretaria` (`login_secretaria`),
  ADD UNIQUE KEY `registro_secretaria` (`registro_secretaria`),
  ADD KEY `fk_codigo_dept` (`fk_codigo_dept`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`pk_codigo_turma`),
  ADD KEY `fk_cpf_professor` (`fk_cpf_professor`),
  ADD KEY `fk_codigo_disciplina` (`fk_codigo_disciplina`);

--
-- Índices para tabela `universidade`
--
ALTER TABLE `universidade`
  ADD PRIMARY KEY (`pk_numero_emec_univ`),
  ADD KEY `fk_cpf_reitor` (`fk_cpf_reitor`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `aluno`
--
ALTER TABLE `aluno`
  ADD CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`fk_codigo_curso`) REFERENCES `curso` (`pk_codigo_curso`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Limitadores para a tabela `aluno_bolsa`
--
ALTER TABLE `aluno_bolsa`
  ADD CONSTRAINT `aluno_bolsa_ibfk_1` FOREIGN KEY (`pk_fk_codigo_bolsa`) REFERENCES `bolsa` (`pk_codigo_bolsa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `aluno_bolsa_ibfk_2` FOREIGN KEY (`pk_fk_cpf_aluno`) REFERENCES `aluno` (`pk_cpf_aluno`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `aluno_turma`
--
ALTER TABLE `aluno_turma`
  ADD CONSTRAINT `aluno_turma_ibfk_1` FOREIGN KEY (`pk_fk_cpf_aluno`) REFERENCES `aluno` (`pk_cpf_aluno`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `aluno_turma_ibfk_2` FOREIGN KEY (`pk_fk_codigo_turma`) REFERENCES `turma` (`pk_codigo_turma`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `bolsa`
--
ALTER TABLE `bolsa`
  ADD CONSTRAINT `bolsa_ibfk_1` FOREIGN KEY (`fk_numero_emec_univ`) REFERENCES `universidade` (`pk_numero_emec_univ`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `curso_ibfk_1` FOREIGN KEY (`fk_codigo_dept`) REFERENCES `departamento` (`pk_codigo_dept`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `curso_ibfk_2` FOREIGN KEY (`fk_cpf_coordenador`) REFERENCES `coordenador` (`pk_cpf_coordenador`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Limitadores para a tabela `departamento`
--
ALTER TABLE `departamento`
  ADD CONSTRAINT `departamento_ibfk_1` FOREIGN KEY (`fk_cpf_chefe`) REFERENCES `chefe` (`pk_cpf_chefe`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `departamento_ibfk_2` FOREIGN KEY (`fk_codigo_instituto`) REFERENCES `instituto` (`pk_codigo_instituto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `grade`
--
ALTER TABLE `grade`
  ADD CONSTRAINT `grade_ibfk_1` FOREIGN KEY (`fk_codigo_curso`) REFERENCES `curso` (`pk_codigo_curso`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `grade_disciplina`
--
ALTER TABLE `grade_disciplina`
  ADD CONSTRAINT `grade_disciplina_ibfk_1` FOREIGN KEY (`pk_fk_codigo_grade`) REFERENCES `grade` (`pk_codigo_grade`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `grade_disciplina_ibfk_2` FOREIGN KEY (`pk_fk_codigo_disciplina`) REFERENCES `disciplina` (`pk_codigo_disciplina`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `historico`
--
ALTER TABLE `historico`
  ADD CONSTRAINT `historico_ibfk_1` FOREIGN KEY (`fk_cpf_aluno`) REFERENCES `aluno` (`pk_cpf_aluno`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `instituto`
--
ALTER TABLE `instituto`
  ADD CONSTRAINT `instituto_ibfk_1` FOREIGN KEY (`fk_cpf_diretor`) REFERENCES `diretor` (`pk_cpf_diretor`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `instituto_ibfk_2` FOREIGN KEY (`fk_numero_emec_univ`) REFERENCES `universidade` (`pk_numero_emec_univ`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `professor`
--
ALTER TABLE `professor`
  ADD CONSTRAINT `professor_ibfk_1` FOREIGN KEY (`fk_codigo_dept`) REFERENCES `departamento` (`pk_codigo_dept`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Limitadores para a tabela `secretaria`
--
ALTER TABLE `secretaria`
  ADD CONSTRAINT `secretaria_ibfk_1` FOREIGN KEY (`fk_codigo_dept`) REFERENCES `departamento` (`pk_codigo_dept`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `turma`
--
ALTER TABLE `turma`
  ADD CONSTRAINT `turma_ibfk_1` FOREIGN KEY (`fk_cpf_professor`) REFERENCES `professor` (`pk_cpf_professor`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `turma_ibfk_2` FOREIGN KEY (`fk_codigo_disciplina`) REFERENCES `disciplina` (`pk_codigo_disciplina`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `universidade`
--
ALTER TABLE `universidade`
  ADD CONSTRAINT `universidade_ibfk_1` FOREIGN KEY (`fk_cpf_reitor`) REFERENCES `reitor` (`pk_cpf_reitor`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
