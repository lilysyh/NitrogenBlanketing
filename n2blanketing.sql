-- phpMyAdmin SQL Dump
-- version 5.2.2-dev+20230928.2a96c4b98e
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2024 at 03:51 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `n2blanketing`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `c_id` int(11) NOT NULL,
  `c_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`c_id`, `c_code`) VALUES
(1, 'FGVPM'),
(2, 'PAOC'),
(3, 'MVO'),
(4, 'FUJI'),
(5, 'K SENG'),
(6, 'KULAI'),
(7, 'BPC'),
(8, 'TFCOLEO'),
(9, 'FIOP'),
(10, 'FICA'),
(11, 'KEO'),
(12, 'LAMSOON'),
(13, 'BLODERS'),
(14, 'DOP'),
(15, 'MEWAH'),
(16, 'PCOLEO'),
(17, 'P CENT'),
(18, 'PGEO'),
(19, 'SEHCOM'),
(20, 'PALMAJU'),
(21, 'MANDATE'),
(22, 'G SMITH'),
(23, 'GEMAS'),
(24, 'AUMCOM'),
(25, 'FJB'),
(26, 'KIS'),
(27, 'KROHN'),
(28, 'PVO'),
(29, 'JIN WEI'),
(30, 'KLK'),
(31, 'NOC'),
(32, 'NAMHENG'),
(33, 'J-VINA'),
(34, 'SERVICE'),
(35, 'AVANTI'),
(36, 'PALMCO'),
(37, 'DEVON'),
(38, 'NISSHIN'),
(39, 'CAROTIN'),
(40, 'BUNGE'),
(41, 'UNITATA'),
(42, 'KWANTAS'),
(43, 'MWBEER'),
(44, 'IFFCO'),
(45, 'THAJI'),
(46, 'FVOPK'),
(47, 'WILMAR'),
(48, 'BSTEAD'),
(49, 'MAWARIA'),
(50, 'TSH'),
(51, 'ECOOIL'),
(52, 'CARGILL'),
(53, 'KUPAK'),
(54, 'S.ACIDS'),
(55, 'STOLTN'),
(56, 'THANA'),
(57, 'TROPICA'),
(58, 'NCHS'),
(59, 'FPG'),
(60, 'ASDB'),
(61, 'ITOCHU'),
(62, 'NCHM'),
(63, 'SIME'),
(64, 'DINSOYA'),
(65, 'MEGA'),
(66, 'JBS'),
(67, 'RIMPL-L'),
(68, 'RIMPO-S'),
(69, 'PTBEST'),
(70, 'WSWELL'),
(71, 'FGA'),
(72, 'AGRCOM'),
(73, 'EDF'),
(74, 'FJDSON'),
(75, 'PAOS'),
(76, 'TAITAK'),
(77, 'LODSHIP'),
(78, 'FORTIS'),
(79, 'AIKHENG'),
(80, 'NESPALM'),
(81, 'GUTH'),
(82, 'PGH'),
(83, 'BENDERA'),
(84, 'BSMIT'),
(85, 'JUSTOIL'),
(86, 'OCEANIC'),
(87, 'NVWORLD'),
(88, 'TIMURAN'),
(89, 'GTMAS'),
(90, 'BARRY'),
(91, 'K HOO'),
(92, 'TROPNET'),
(93, 'ISF'),
(94, 'ECOM'),
(95, 'GOODFCF'),
(96, 'NISSHO'),
(97, 'CLEANED'),
(98, 'MTMM'),
(99, 'CSH'),
(100, 'PLINK'),
(101, 'SUMMER'),
(102, 'ACEFORD'),
(103, 'TOEPFER'),
(104, 'SOON'),
(105, 'P CREME'),
(106, 'KPL'),
(107, 'DENALI'),
(108, 'NOBA'),
(109, 'VOI'),
(110, 'SUPER'),
(111, 'BURSA'),
(112, 'FIFSB'),
(113, 'SDFT'),
(114, 'CCPALM'),
(115, 'CBE'),
(116, 'PGEOM'),
(117, 'KLKCP'),
(118, 'CAROTEC'),
(119, 'PHKL'),
(120, 'AGRO'),
(121, 'FKP'),
(122, 'TRPNET2'),
(123, 'REGENT'),
(124, 'MITRAH'),
(125, 'MAJOR'),
(126, 'FGVT'),
(127, 'VANCE'),
(128, 'JPB'),
(129, 'SJS'),
(130, 'MOF'),
(131, 'ITCHUE'),
(132, 'P&G'),
(133, 'WESTING'),
(134, 'ABLEPFT'),
(135, 'STRONG'),
(136, 'ZALIIT'),
(137, 'IOIEO'),
(138, 'REMOVE'),
(139, 'SIMEKL'),
(140, 'KLKB'),
(141, 'ASEM'),
(142, 'PACOIL'),
(143, 'CRGILK'),
(144, 'PTSMM'),
(145, 'JARDINE'),
(146, 'IFFSEA'),
(147, 'MTS'),
(148, 'KALMART'),
(149, 'ANDRE'),
(150, 'MDJ'),
(151, 'AGRIMAL'),
(152, 'TESTING'),
(153, 'BUDI'),
(154, 'PALMO'),
(155, 'ADM'),
(156, 'MEDILUX'),
(157, 'G CHONG'),
(158, 'ASSAR'),
(159, 'SEPANG'),
(160, 'PALOIL'),
(161, 'SHHUNG'),
(162, 'BIOX'),
(163, 'JOMALNA'),
(164, 'PGEOBIO'),
(165, 'OCI'),
(166, 'ICOF'),
(167, 'SIME(B)'),
(168, 'GAMAL'),
(169, 'MARVELL'),
(170, 'FVOP'),
(171, 'NESTE'),
(172, 'TWIN'),
(173, 'AARHUS'),
(174, 'TEJANA'),
(175, 'OILSEED'),
(176, 'IOICT'),
(177, 'ASIANF'),
(178, 'MOSB'),
(179, 'MANHOLE'),
(180, 'PROMAC'),
(181, 'MISICT'),
(182, 'LANGSAT'),
(183, 'MWHCOM'),
(184, 'NIDERA'),
(185, 'AAA'),
(186, 'MARVESA'),
(187, 'NOBLE'),
(188, 'TRAFIGU'),
(189, 'TEGAP'),
(190, 'CJL'),
(191, 'SAWINDO'),
(192, 'MCAULEY'),
(193, 'NBPOL'),
(194, 'AGROAP'),
(195, 'ABLE P'),
(196, 'KENANG'),
(197, 'BLIPID'),
(198, 'G AGRI'),
(199, 'TATANAN'),
(200, 'KONGHOO'),
(201, 'AUMKAR'),
(202, 'CARGILJ'),
(203, 'YPJ'),
(204, 'UNIPLAN'),
(205, 'PT SON'),
(206, 'SAWIT S'),
(207, 'APICAL'),
(208, 'GRAND P'),
(209, 'KLKBIO'),
(210, 'TEKNIK'),
(211, 'KLS'),
(212, 'CENOKO'),
(213, 'LDCM'),
(214, 'EVYAP'),
(215, 'TOSHO'),
(216, 'RSSONS'),
(217, 'TITAN'),
(218, 'SHELL'),
(219, 'NPBT'),
(220, 'MOX'),
(221, 'C. HUAT'),
(222, 'INNHO'),
(223, 'HHMETAL'),
(224, 'ENVILAB'),
(225, 'AIKHA'),
(226, 'PANMSIA'),
(227, 'ENVICEM'),
(228, 'WANTA'),
(229, 'SWM'),
(230, 'FLMETAL'),
(231, 'BELTNIC'),
(232, 'SYMPHNC'),
(233, 'PANTECH'),
(234, 'PWOBP'),
(235, 'WAH JEE'),
(236, 'UNIGREN'),
(237, 'CHINAIK'),
(238, 'PALMTOP'),
(239, 'CLSTIAL'),
(240, 'GRAINCO'),
(241, 'W AGRO'),
(242, 'LDCA'),
(243, 'IBRIS'),
(244, 'RESB'),
(245, 'VILA'),
(246, 'MARKHAM'),
(247, 'MEWAHB'),
(248, 'P ESTER'),
(249, 'EASTERN'),
(250, 'SABER'),
(251, 'CSTRADE'),
(252, 'GENTING'),
(253, 'GENTOM'),
(254, 'MUSIMAS'),
(255, 'G AGRIM'),
(256, 'CARGILP'),
(257, 'COFCO'),
(258, 'IOI GS'),
(259, 'AVNTIBC'),
(260, 'FEDRUM'),
(261, 'HINDOLI'),
(262, 'LDMM'),
(263, 'FPI'),
(264, 'PETRI'),
(265, 'WINCORN'),
(266, 'KCHANA'),
(267, 'DIAMOND'),
(268, 'SDPL'),
(269, 'SOVERTD'),
(270, 'FVR'),
(271, 'CCM'),
(272, 'UNIFUJI'),
(273, 'PATIK'),
(274, 'FUTURE'),
(275, 'SINAR'),
(276, 'POM'),
(277, 'G ZONE'),
(278, 'SangKee'),
(279, 'SKYLAND'),
(280, 'ATLNTIC'),
(281, 'VNDELAY'),
(282, 'ECOILNS'),
(283, 'SFIELD'),
(284, 'MBF'),
(285, 'NOC-NX'),
(286, 'NOC-WR'),
(287, 'TPG'),
(288, 'ANTARAS'),
(289, 'AASTAR'),
(290, 'ECOTPIA'),
(291, 'GRNVERS'),
(292, 'BIOTECH'),
(293, 'VMCA'),
(294, 'NESTEAP'),
(295, 'AGRIOIL'),
(296, 'F.IFFCO'),
(297, 'LITRO'),
(298, 'WSA'),
(299, 'WILEE'),
(300, 'RANAMA'),
(301, 'MGE RAM'),
(302, 'FGVIFCO'),
(303, 'GLOBAL'),
(304, 'TENGYUN'),
(305, 'AAK'),
(306, 'PGEO-WR'),
(307, 'ALPSTA'),
(308, 'MSM'),
(309, 'RIKEVIT'),
(310, 'COCOA P'),
(311, 'KLAGRI'),
(312, 'NUTRA'),
(313, 'BESTDOT'),
(314, 'DITALI'),
(315, 'ACCORD'),
(316, 'PETRON'),
(317, 'INNOVAN'),
(318, 'RIARAN'),
(319, 'PRIMA'),
(320, 'FGV-IFT'),
(321, 'CLSCPOM'),
(322, 'ANTARA'),
(323, 'FGVBTEK'),
(324, 'NUTRALP'),
(325, 'MUHIBAH');

-- --------------------------------------------------------

--
-- Table structure for table `n2blanketingdata`
--

CREATE TABLE `n2blanketingdata` (
  `id` int(100) NOT NULL,
  `date` date NOT NULL,
  `tank` varchar(10) NOT NULL,
  `customer` varchar(255) NOT NULL,
  `product` varchar(255) NOT NULL,
  `tank_top` varchar(255) NOT NULL,
  `n2_percentage` varchar(255) NOT NULL,
  `reading` varchar(255) NOT NULL,
  `remarks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `n2blanketingdata`
--

INSERT INTO `n2blanketingdata` (`id`, `date`, `tank`, `customer`, `product`, `tank_top`, `n2_percentage`, `reading`, `remarks`) VALUES
(141, '2023-10-27', '1', 'FGVPM', 'HI-CPO', 'ON', '18', '12', '-'),
(152, '2023-10-27', '2', 'PAOC', 'PFAR', 'ON', '13', '9', '-'),
(153, '2023-10-27', '3', 'BARRY', 'CPO', 'ON', '3', '1.4', '-');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `p_id` int(11) NOT NULL,
  `p_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`p_id`, `p_code`) VALUES
(1, 'CPO'),
(2, 'NPO'),
(3, 'HPO'),
(4, 'IGPO'),
(5, 'RBDPO'),
(6, 'CPOLN'),
(7, 'HPOL'),
(8, 'NBDOL'),
(9, 'RBDOL'),
(10, 'CPS'),
(11, 'HRSBS'),
(12, 'RBDS'),
(13, 'HPS'),
(14, 'PMF'),
(15, 'HPMF'),
(16, 'PKO'),
(17, 'HPKO'),
(18, 'RBDPKO'),
(19, 'HPKOL'),
(20, 'RBDPKOL'),
(21, 'RBDPKS'),
(22, 'CNO'),
(23, 'HCNO'),
(24, 'RBDCNO'),
(25, 'CDSBO'),
(26, 'NBDSBO'),
(27, 'RBDSBO'),
(28, 'HRSBO'),
(29, 'CRSO'),
(30, 'HRSO'),
(31, 'RBDRSO'),
(32, 'SFO'),
(33, 'RBDSFO'),
(34, 'CORN'),
(35, 'RBDCORN'),
(36, 'PAO'),
(37, 'PFAD'),
(38, 'PFAR'),
(39, 'LAURIC'),
(40, 'PKAO'),
(41, 'PKFAD'),
(42, 'PKFAR'),
(43, 'SBAO'),
(44, 'RBDS(S)'),
(45, 'SFAO'),
(46, 'HPFAD'),
(47, 'HPSFA'),
(48, 'CGLY'),
(49, 'DPFA'),
(50, 'TPSA'),
(51, 'C-810'),
(52, 'DPKFA'),
(53, 'STEARIC'),
(54, 'PAMITIC'),
(55, 'CSFA'),
(56, 'DHCNFA'),
(57, 'MFA'),
(58, 'MYRSTIC'),
(59, 'STPKFA'),
(60, 'GLY'),
(61, 'RBDGNO'),
(62, 'CLSO'),
(63, 'MVAO'),
(64, 'SRPST'),
(65, 'SPKFA'),
(66, 'CGNO'),
(67, 'C12-18H'),
(68, 'SRPKO'),
(69, 'HPKFA'),
(70, 'RBDHCNO'),
(71, 'CNFA'),
(72, 'C1298'),
(73, 'FPOL'),
(74, 'HCPKFA'),
(75, 'CNFAD'),
(76, 'MLFA'),
(77, 'SPFA'),
(78, 'DTPKFA'),
(79, 'C12-14'),
(80, 'C12-16'),
(81, 'C1099'),
(82, 'C12-18'),
(83, 'NBDOL62'),
(84, 'CPKS'),
(85, 'NBDOL65'),
(86, 'CPKFA'),
(87, 'RLSO'),
(88, 'C1499'),
(89, 'HBSBO'),
(90, 'C1270'),
(91, 'CKFA'),
(92, 'SH20'),
(93, 'PRECUT'),
(94, 'CPKOL'),
(95, 'HPKS'),
(96, 'NSFO'),
(97, 'DCNFA'),
(98, 'C1692'),
(99, 'COT'),
(100, 'H20'),
(101, 'HSPFA'),
(102, 'SFFAD'),
(103, 'SPSFA'),
(104, 'NRSO'),
(105, 'DPOFA'),
(106, 'HSPSFA'),
(107, 'DPSA'),
(108, 'NSBO'),
(109, 'HFA'),
(110, 'CTSBO'),
(111, 'C1618U'),
(112, 'RBDLSO'),
(113, 'DLFA'),
(114, 'CNAO'),
(115, 'HSBOL'),
(116, 'C1695'),
(117, 'C1655'),
(118, 'DPKFAD'),
(119, 'IPL'),
(120, 'C1860'),
(121, 'C1895'),
(122, 'C1689'),
(123, 'ISFO'),
(124, 'C1498'),
(125, '50C18'),
(126, 'COTSO'),
(127, 'SBFA'),
(128, 'DCORN'),
(129, 'DCDSBO'),
(130, 'SUPOFA'),
(131, 'SCNFA'),
(132, 'SUPKFA'),
(133, 'STRPKFA'),
(134, 'RMVO'),
(135, 'C121416'),
(136, 'MISIT'),
(137, 'RBDIOL'),
(138, 'RBDIF34'),
(139, 'RBDIS'),
(140, 'DMFA'),
(141, 'CCFA'),
(142, 'CBUTTER'),
(143, 'C1696'),
(144, 'HDFOL'),
(145, 'NBPKS'),
(146, 'DTHCNFA'),
(147, 'C1835'),
(148, 'BCNO'),
(149, 'DHTPKFA'),
(150, 'CPAMATI'),
(151, 'RBDIF'),
(152, 'C1085'),
(153, 'PKFA'),
(154, 'C1295'),
(155, 'C1495'),
(156, 'NBIF40'),
(157, 'ISFSO'),
(158, 'HRBO'),
(159, 'IPP'),
(160, 'IPM'),
(161, 'MCT'),
(162, 'MRVO'),
(163, 'NBDPO'),
(164, 'MEO'),
(165, 'FAME'),
(166, 'C1218AL'),
(167, 'RBDSBOM'),
(168, 'PME'),
(169, 'MPFAD'),
(170, 'C1285'),
(171, 'RBDIPO'),
(172, 'SUPSFA'),
(173, 'DME'),
(174, 'NBSBO'),
(175, 'C1290'),
(176, 'C1618'),
(177, 'NBDS'),
(178, 'SCPOFA'),
(179, 'SPKOL'),
(180, 'BVO'),
(181, 'SRCOTSO'),
(182, 'PADR'),
(183, 'CO-1214'),
(184, 'C1870'),
(185, 'CDMZO'),
(186, 'FEEDCUT'),
(187, 'PAMAR'),
(188, 'HVO'),
(189, 'DTCNFA'),
(190, 'CRBO'),
(191, 'PKMAO'),
(192, 'PFADS'),
(193, 'BPO'),
(194, 'PKMF'),
(195, 'DPO'),
(196, 'COH1618'),
(197, 'C1685'),
(198, 'OLIC'),
(199, 'N CORN'),
(200, 'COH1214'),
(201, 'DPSFA'),
(202, 'FADR'),
(203, 'PAO(H)'),
(204, 'RBDS(H)'),
(205, 'PFAR(H)'),
(206, 'PFAR(S)'),
(207, 'C1699'),
(208, 'TCFA'),
(209, 'N1870'),
(210, 'ANRSO'),
(211, 'DHPKFA'),
(212, 'CGLY(T)'),
(213, 'CPMF2'),
(214, 'CPMF3'),
(215, 'PFAT45'),
(216, 'P WAX'),
(217, 'IESFO'),
(218, 'PFAT65'),
(219, 'MSCL24'),
(220, 'ME1698'),
(221, 'SBME'),
(222, 'MVO'),
(223, 'CO1650'),
(224, 'C1660'),
(225, 'PAO(S)'),
(226, 'PK1618'),
(227, 'TA1618'),
(228, 'CHISFO'),
(229, 'IEFAT'),
(230, 'NBDSFO'),
(231, 'CPO-RS'),
(232, 'RBDHPS'),
(233, 'RCOTSO'),
(234, 'ROL-RS'),
(235, 'DC1218'),
(236, 'DK1218'),
(237, 'TFHO'),
(238, 'POFA'),
(239, 'HFFAPO'),
(240, 'MONOLA'),
(241, 'TCPKFA'),
(242, '11RBDSH'),
(243, '12RBDSH'),
(244, '14RBDSH'),
(245, '17RBDSH'),
(246, 'FAME AZ'),
(247, '15RBDSH'),
(248, '35PMF'),
(249, '56ROL'),
(250, '47ROL'),
(251, '58ROL'),
(252, '60ROL'),
(253, '64ROL'),
(254, '45PMF'),
(255, '30RBDS'),
(256, '34PMF'),
(257, '37C18'),
(258, '52C18'),
(259, '98C16'),
(260, '95C16'),
(261, '40RBDS'),
(262, '35RBDS'),
(263, '61ROL'),
(264, 'ME1218'),
(265, '810-LCE'),
(266, '65C18'),
(267, 'FAMEA13'),
(268, 'BD CGLY'),
(269, '80C16'),
(270, '99C12'),
(271, '90C16'),
(272, 'FAMEA15'),
(273, 'HI-CPO'),
(274, '48C18'),
(275, '44PMF'),
(276, '55C18'),
(277, '92C18'),
(278, '43C18'),
(279, 'CPO-IS'),
(280, '38C18'),
(281, '75C16'),
(282, 'CPO-MB'),
(283, 'RPO-RS'),
(284, '45C18'),
(285, '46RBDS'),
(286, '67ROL'),
(287, '90C18'),
(288, 'IGPO-IS'),
(289, 'C16-C18'),
(290, 'RPO-MB'),
(291, 'RBDS-MB'),
(292, '66ROL'),
(293, 'HFFAOL'),
(294, 'PME1698'),
(295, 'FAME-IS'),
(296, 'PFAD(B)'),
(297, 'HPKO36'),
(298, 'HPKO34'),
(299, 'ARRSO'),
(300, 'NWSFO'),
(301, 'CPOISDE'),
(302, 'CPOISEU'),
(303, '65ROL'),
(304, 'NBDCNO'),
(305, 'NBDOLSG'),
(306, 'SBEO'),
(307, 'PME-IS'),
(308, 'DFOL-RS'),
(309, 'SBEMEIS'),
(310, 'NBCNO'),
(311, 'RPKO-RS'),
(312, 'SBEO-IS'),
(313, '62ROLRS'),
(314, 'ME1618'),
(315, 'RSPO'),
(316, 'RPO-IS'),
(317, 'RPKOSG'),
(318, 'DTPKFRS'),
(319, 'DHCNFRS'),
(320, 'HFFACB'),
(321, 'RCB'),
(322, 'R-ME'),
(323, 'PME1898'),
(324, '98C18'),
(325, 'YGLY'),
(326, 'PSOFA'),
(327, 'OLICCK'),
(328, 'PKO-SG'),
(329, 'RHPKOL'),
(330, 'RPKO-MB'),
(331, 'PMF44SG'),
(332, 'PMF-SG'),
(333, 'RPO-SG'),
(334, 'SG-PMF'),
(335, 'ROL-SG'),
(336, 'C899'),
(337, 'ME1898'),
(338, 'OLIC 2K'),
(339, 'OLIC 4K'),
(340, 'ROL-IS'),
(341, 'C1898ME'),
(342, 'ME-0899'),
(343, '40C18'),
(344, '33RBDS'),
(345, 'CSHEAS'),
(346, 'PKO-RS'),
(347, 'SPKFAMB'),
(348, 'CASTOR'),
(349, 'RSHEAOL'),
(350, 'CNO MB'),
(351, 'RKOL-MB'),
(352, 'RPKS-MB'),
(353, 'PKO-MB'),
(354, 'SPMF'),
(355, 'C8-16ME'),
(356, 'CPO-IP'),
(357, '70C16'),
(358, 'COH1699'),
(359, 'R-ME(H)'),
(360, 'C16ME98'),
(361, 'PMF43SG'),
(362, 'CSHEAOL'),
(363, '38C18MB'),
(364, 'RBDPO47'),
(365, 'BDCG-MB'),
(366, 'DHCNFMB'),
(367, 'DPHPOFA'),
(368, 'SPKFA-B'),
(369, 'D-RBDPO'),
(370, 'RWSFO'),
(371, 'COH1899'),
(372, '14RSTMB'),
(373, 'DK0818'),
(374, 'C1618MB'),
(375, '32RBDS'),
(376, 'DPSFAMB'),
(377, 'CPOISMB'),
(378, 'C1840MB'),
(379, 'DPHFAMB'),
(380, 'OLIC 5K'),
(381, 'CPO-SG'),
(382, 'TFHO-MB'),
(383, 'HRPS'),
(384, 'NBDPMF'),
(385, 'C1698SG'),
(386, 'C1865SG'),
(387, 'NBDOLRS'),
(388, 'N-PMFRS'),
(389, 'NBDPORS'),
(390, '10RBDSH'),
(391, 'RBDOLMB'),
(392, '12RSTMB'),
(393, 'SPSFAMB'),
(394, 'RGLY-MB'),
(395, 'HPKOL44'),
(396, 'RBCNOLA'),
(397, 'HDFOL36'),
(398, 'RPKS-SG'),
(399, 'CGLY-MB'),
(400, 'DPHPOMB'),
(401, 'C810MB'),
(402, 'A1618MB'),
(403, 'ME1099'),
(404, 'ME810MB'),
(405, 'ME-0810'),
(406, 'C1695MB'),
(407, 'A1699MB'),
(408, 'HRPSMB'),
(409, 'RW CORN'),
(410, '20RBDSH'),
(411, 'C1698MB'),
(412, 'FME1680'),
(413, 'REM0810'),
(414, 'A1214MB'),
(415, 'SHEA'),
(416, 'SHEAGLY'),
(417, 'MAO'),
(418, '46PMFSG'),
(419, '45PMFSG'),
(420, 'TCORN'),
(421, 'REM1618'),
(422, 'ISBEOME'),
(423, 'SPKOLFA'),
(424, '47RBDS'),
(425, '62ROL'),
(426, '35PMFSG'),
(427, '64ROLMB'),
(428, 'SPO'),
(429, 'F1680MB'),
(430, 'HPSFAMB'),
(431, 'RBDS-SG'),
(432, 'NBDPOSG'),
(433, 'CHISFOH'),
(434, 'RBDHSFO'),
(435, 'CAUSTIC'),
(436, 'C-810MB'),
(437, 'PFAD-IS'),
(438, 'CSODA-B'),
(439, 'CSHEAB'),
(440, 'CHSFO85'),
(441, 'RPO-MS'),
(442, 'PAO-IS'),
(443, '99C12ME'),
(444, 'PME1680'),
(445, '92C18MB'),
(446, 'A1216MB'),
(447, 'ME1698B'),
(448, 'SFO(B)'),
(449, 'NHOSFO'),
(450, 'HDPSFA'),
(451, 'FAL0810'),
(452, 'FAL1214'),
(453, 'FAL1216'),
(454, 'FAL1270'),
(455, 'FAL1618'),
(456, 'FAL1695'),
(457, 'FAL1697'),
(458, 'FAL1698'),
(459, 'FAL1699'),
(460, 'FAL1897'),
(461, 'FAL1898'),
(462, 'FAL1899'),
(463, 'POME'),
(464, 'ILLIPE'),
(465, 'RLLIPB'),
(466, 'FME0810'),
(467, '63ROL'),
(468, '57ROL'),
(469, '98C16SG'),
(470, 'C1895SG'),
(471, 'P1618MB'),
(472, 'C1214SG'),
(473, 'CPOLNMB'),
(474, 'POME-IS'),
(475, 'ME1680B'),
(476, 'ME1299'),
(477, 'DTCFAMB'),
(478, 'C-810R'),
(479, 'SD(S)SG'),
(480, 'REM'),
(481, '64ROLSG'),
(482, 'NGMCRSO'),
(483, 'HRPS(L)'),
(484, 'FATTY-M'),
(485, 'PFAD-F'),
(486, 'HRPS(H)'),
(487, 'F0810MB'),
(488, 'R-POME'),
(489, 'RPOMEIS'),
(490, '67ROLSG'),
(491, 'HRPSMBH'),
(492, 'HRPSHMB'),
(493, 'ROL60SG'),
(494, '60ROLSG'),
(495, '59ROL'),
(496, 'SRPOFA'),
(497, 'POLFA'),
(498, '66ROLSG'),
(499, 'FAL1099'),
(500, '65ROLMB'),
(501, 'ARSBO'),
(502, 'POLFASG'),
(503, 'DPSFASG'),
(504, '57ROLMB'),
(505, '12RSHSG'),
(506, 'DMFAMB'),
(507, '50C16'),
(508, 'RFPOSG'),
(509, 'DTHCFA(C)'),
(510, 'iEFBOME'),
(511, 'L-SUGAR'),
(512, 'REM-FA'),
(513, 'ARSFO'),
(514, 'SHEAOFA'),
(515, 'NBDOL64SG'),
(516, 'DP1605'),
(517, '99C14'),
(518, 'C16ME98MB'),
(519, 'C18ME98MB'),
(520, 'NBDS-SG'),
(521, '35RBDS-SG'),
(522, 'MAOO'),
(523, 'GTO-IS'),
(524, 'NW CORN'),
(525, 'PFAD-GMP+'),
(526, 'PKFAD-GMP+'),
(527, 'NBDOL62SG'),
(528, 'FATTY-M IS'),
(529, 'SPOPOME'),
(530, 'C1685L'),
(531, 'OGROL'),
(532, 'HRPS(L)MB'),
(533, '56ROL-OG'),
(534, 'DTHCNFA(C)'),
(535, '45PMFMB'),
(536, 'CRSO-IS'),
(537, 'EFBO-IS'),
(538, 'RBDWSFO'),
(539, 'CPO-OG'),
(540, '65ROLSG'),
(541, 'HRPO'),
(542, 'RPO-RFS'),
(543, 'GTO'),
(544, 'CPO-MMB'),
(545, '65C18MB'),
(546, 'FAL1214MB'),
(547, 'OLICCKMB'),
(548, '56ROLSG'),
(549, '50C18MB'),
(550, 'PME1680MB');

-- --------------------------------------------------------

--
-- Table structure for table `tank`
--

CREATE TABLE `tank` (
  `t_id` int(11) NOT NULL,
  `t_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tank`
--

INSERT INTO `tank` (`t_id`, `t_name`) VALUES
(1, ''),
(2, '#2'),
(3, '#3'),
(4, '#4'),
(5, '#5'),
(6, '#6'),
(7, '#7'),
(8, '#8'),
(9, '#9'),
(10, '#10'),
(11, '#11'),
(12, '#12'),
(13, '#13'),
(14, '#14'),
(15, '#15'),
(16, '#16'),
(17, '#17'),
(18, '#18'),
(19, '#19'),
(20, '#20'),
(21, '#21'),
(22, '#22'),
(23, '#23'),
(24, '#24'),
(25, '#25'),
(26, '#26'),
(27, '#27'),
(28, '#28'),
(29, '#29'),
(30, '#30'),
(31, '#31'),
(32, '#32'),
(33, '#33'),
(34, '#34'),
(35, '#35'),
(36, '#36'),
(37, '#37'),
(38, '#38'),
(39, '#39'),
(40, '#40'),
(41, '#41'),
(42, '#42'),
(43, '#43'),
(44, '#44'),
(45, '#45'),
(46, '#46'),
(47, '#47'),
(48, '#48'),
(49, '#49'),
(50, '#50'),
(51, '#51'),
(52, '#52'),
(53, '#53'),
(54, '#54'),
(55, '#55'),
(56, '#56'),
(57, '#57'),
(58, '#58'),
(59, '#59'),
(60, '#60'),
(61, '#61'),
(62, '#62'),
(63, '#63'),
(64, '#64'),
(65, '#65'),
(66, '#66'),
(67, '#67'),
(68, '#68'),
(69, '#69'),
(70, '#70'),
(71, '#71'),
(72, '#72'),
(73, '#73'),
(74, '#74'),
(75, '#75'),
(76, '#76'),
(77, '#77'),
(78, '#78'),
(79, '#79'),
(80, '#80'),
(81, '#81'),
(82, '#82'),
(83, '#83'),
(84, '#84'),
(85, '#85'),
(86, '#86'),
(87, '#87'),
(88, '#88'),
(89, '#89'),
(90, '#90'),
(91, '#91'),
(92, '#92'),
(93, '#93'),
(94, '#94'),
(95, '#95'),
(96, '#96'),
(97, '#97'),
(98, '#98'),
(99, '#99'),
(100, '#100'),
(101, '#101'),
(102, '#102'),
(103, '#103'),
(104, '#104'),
(105, '#105'),
(106, '#106'),
(107, '#107'),
(108, '#108'),
(109, '#109'),
(110, '#110'),
(111, '#111'),
(112, '#112'),
(113, '#113'),
(114, '#114'),
(115, '#115'),
(116, '#116'),
(117, '#117'),
(118, '#118'),
(119, '#119'),
(120, '#120'),
(121, '#121'),
(122, '#122'),
(123, '#123'),
(124, '#124'),
(125, '#125'),
(126, '#126'),
(127, '#127'),
(128, '#128'),
(129, '#129'),
(130, '#130'),
(131, '#131'),
(132, '#132'),
(133, '#133'),
(134, '#134'),
(135, '#135'),
(136, '#136'),
(137, '#137'),
(138, '#138'),
(139, '#139'),
(140, '#140'),
(141, '#141'),
(142, '#142'),
(143, '#143'),
(144, '#144'),
(145, '#145'),
(146, '#146'),
(147, '#147'),
(148, '#148'),
(149, '#149'),
(150, '#150'),
(151, '#151'),
(152, '#152'),
(153, '#153'),
(154, '#154'),
(155, '#155'),
(156, '#156'),
(157, '#157'),
(158, '#158'),
(159, '#159'),
(160, '#160'),
(161, '#161'),
(162, '#162'),
(163, '#163'),
(164, '#164'),
(165, '#165'),
(166, '#166'),
(167, '#167'),
(169, '#169'),
(170, '#170'),
(171, '#171'),
(172, '#172'),
(173, '#173'),
(174, '#174'),
(175, '#175'),
(176, '#176'),
(177, '#177'),
(178, '#178'),
(179, '#179'),
(180, '#180'),
(181, '#181'),
(182, '#182'),
(183, '#183'),
(184, '#184'),
(185, '#185'),
(186, '#186'),
(187, '#187'),
(188, '#188'),
(189, '#189'),
(190, '#190'),
(191, '#191'),
(192, '#192'),
(193, '#193'),
(194, '#194'),
(195, '#195'),
(196, '#196'),
(197, '#197'),
(198, '#198'),
(199, '#199'),
(200, '#200'),
(201, '#201'),
(202, '#202'),
(203, '#203'),
(204, '#204'),
(205, '#205'),
(206, '#206'),
(207, '#207'),
(208, '#208'),
(209, '#209'),
(210, '#210'),
(211, '#211'),
(212, '#212'),
(213, '#213'),
(300, '#300'),
(301, '#301'),
(302, '#302'),
(303, '#303'),
(304, '#304'),
(305, '#305'),
(306, '#306'),
(307, '#307'),
(308, '#308'),
(309, '#309'),
(310, '#310'),
(311, '#311'),
(312, '#312'),
(313, '#313'),
(314, '#314'),
(315, '#315'),
(316, '#316'),
(317, '#317'),
(318, '#318'),
(319, '#319'),
(320, '#320'),
(321, '#321'),
(322, '#322'),
(323, '#323'),
(324, '#324'),
(325, '#325'),
(326, '#326'),
(327, '#327'),
(328, '#328'),
(329, '#329'),
(330, '#330'),
(331, '#331'),
(332, '#332'),
(333, '#333'),
(334, '#334'),
(335, '#335'),
(336, '#336'),
(337, '#337'),
(338, '#338'),
(339, '#339'),
(340, '#340'),
(341, '#341'),
(342, '#342'),
(343, '#343'),
(344, '#344'),
(345, '#345'),
(346, '#346'),
(347, '#347'),
(348, '#348'),
(349, '#349'),
(401, '#401'),
(402, '#402'),
(403, '#403'),
(404, '#404'),
(405, '#405'),
(406, '#406'),
(407, '#407'),
(408, '#408'),
(409, '#409'),
(410, '#410'),
(411, '#411'),
(412, '#412'),
(413, '#413'),
(414, '#414'),
(415, '#415'),
(416, '#416'),
(417, '#417'),
(418, '#418'),
(419, '#419'),
(420, '#420'),
(421, '#421'),
(422, '#422'),
(423, '#423'),
(424, '#424'),
(501, '#501'),
(502, '#502'),
(503, '#503'),
(504, '#504'),
(505, '#505'),
(506, '#506'),
(507, '#507'),
(508, '#508'),
(509, '#509'),
(510, '#510'),
(511, '#511'),
(512, '#512'),
(513, '#513'),
(514, '#514'),
(515, '#515'),
(516, '#516'),
(517, '#517'),
(518, '#518'),
(519, '#519'),
(520, '#520'),
(521, '#521'),
(522, '#522'),
(523, '#523'),
(524, '#524'),
(525, '#525'),
(526, '#526'),
(527, '#527'),
(528, '#528'),
(529, '#529'),
(530, '#530'),
(531, '#531'),
(532, '#532'),
(533, '#533'),
(534, '#534'),
(535, '#535'),
(536, '#536'),
(537, '#537'),
(538, '#538'),
(539, '#539'),
(540, '#540'),
(545, '#545'),
(546, '#546'),
(547, '#547'),
(548, '#548'),
(549, '#549'),
(550, '#550'),
(551, '#551'),
(552, '#552'),
(553, '#553'),
(554, '#554'),
(555, '#555'),
(556, '#556'),
(557, '#557'),
(558, '#558'),
(559, '#559'),
(560, '#560');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'admin', 'admin@mail.com', '0192023a7bbd73250516f069d'),
(2, 'dalili', 'dalilisyahirah511@gmail', '3c62cb45e031f88a208c192c7'),
(3, 'syahirah', 'syahirah@gmail.com', 'd09146e7d36a1d8b564493f8a'),
(4, 'abcde', 'abcde@gmail.com', 'ab56b4d92b40713acc5af8998'),
(5, '54096', 'dalilisyahirah511@gmail.com', 'fc50ef442dfadd118632fb695'),
(6, 'Dalili', 'syahirah@gmail.com', 'fc50ef442dfadd118632fb695'),
(7, 'lily', 'lily@gmail.com', '89f288757f4d0693c99b00785'),
(8, 'abc', 'abc@gmail.com', '900150983cd24fb0d6963f7d2'),
(9, 'Dalili Syahirah', 'dalilisyahirah512@gmail.com', 'fc50ef442dfadd118632fb695'),
(10, 'azri', 'azri@gmail.com', 'e014abcca98eff5a1da7b471f'),
(11, 'NUR DALILI', 'dalili@gmail.com', 'ce024cb5b7ea032fca6ab97f8');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `n2blanketingdata`
--
ALTER TABLE `n2blanketingdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tank`
--
ALTER TABLE `tank`
  ADD PRIMARY KEY (`t_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=329;

--
-- AUTO_INCREMENT for table `n2blanketingdata`
--
ALTER TABLE `n2blanketingdata`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=554;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
