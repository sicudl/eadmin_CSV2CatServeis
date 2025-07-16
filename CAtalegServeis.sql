/*
SQLyog Community Edition- MySQL GUI v8.12 
MySQL - 5.5.8 : Database - eseu_catalegserveis
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`eseu_catalegserveis` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci */;

USE `eseu_catalegserveis`;

/*Table structure for table `ambit` */

CREATE TABLE `ambit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Ambit_id` int(11) DEFAULT NULL,
  `Nom` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `Visible` tinyint(1) DEFAULT '1',
  `Ordre` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `ambit` */

insert  into `ambit`(`id`,`Ambit_id`,`Nom`,`Visible`,`Ordre`) values (1,1,'ESTUDIS I DOCÈNCIA',1,1);
insert  into `ambit`(`id`,`Ambit_id`,`Nom`,`Visible`,`Ordre`) values (2,2,'COMUNICACIÓ I RELACIONS EXTERNES',1,2);
insert  into `ambit`(`id`,`Ambit_id`,`Nom`,`Visible`,`Ordre`) values (3,3,'RECERCA I TRANSFERÈNCIA\r',1,3);
insert  into `ambit`(`id`,`Ambit_id`,`Nom`,`Visible`,`Ordre`) values (4,4,'SERVEIS A LA COMUNITAT UNIVERSITÀRIA',1,4);
insert  into `ambit`(`id`,`Ambit_id`,`Nom`,`Visible`,`Ordre`) values (5,5,'SERVEIS A LA SOCIETAT',1,5);
insert  into `ambit`(`id`,`Ambit_id`,`Nom`,`Visible`,`Ordre`) values (6,6,'BEQUES I AJUTS',1,6);
insert  into `ambit`(`id`,`Ambit_id`,`Nom`,`Visible`,`Ordre`) values (7,7,'GESTIÓ DE PERSONAL\r\n',1,7);
insert  into `ambit`(`id`,`Ambit_id`,`Nom`,`Visible`,`Ordre`) values (8,8,'TECNOLOGIES INFORMACIÓ I COMUN.\r\n',1,8);
insert  into `ambit`(`id`,`Ambit_id`,`Nom`,`Visible`,`Ordre`) values (9,9,'GESTIÓ ECONÒMICA\r\n',0,9);

/*Table structure for table `serveis` */

CREATE TABLE `serveis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Codi` int(11) DEFAULT NULL,
  `Nom` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  `PerfilPAS` tinyint(1) DEFAULT '0',
  `PerfilSOC` tinyint(1) DEFAULT '0',
  `PerfilPDI` tinyint(1) DEFAULT '0',
  `PerfilEst` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=323 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `serveis` */

insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (240,4,'Sol·licitud títol oficial',0,0,1,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (241,5,'Beques i ajuts estudi MECD',0,0,1,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (242,6,'Programes de mobilitat de l\'estudiant (out)',0,0,1,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (243,7,'Programes de mobilitat de l\'estudiant (in)',0,0,1,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (244,8,'Beques i ajuts mobilitat',1,1,1,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (245,9,'Beques per a estudiants internacionals de màster',0,0,1,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (246,10,'Informació sobre la UdL',1,1,1,1);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (247,11,'Servei d\'Informació i Atenció Universitària: Beques i ajuts',0,0,1,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (248,12,'Allotjament',1,1,1,1);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (249,13,'Borsa de treball',0,0,1,1);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (250,14,'Carnet universitari',1,1,1,1);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (251,15,'Gestió productes promocionals UdL',0,0,0,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (252,16,'Informació (Formació contínua/ Formació Prof. Universitari/ Formació Prof. No Universitari)',0,0,1,1);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (253,17,'Gestió matrícula formació prof.universitari/prof. no univ.',0,1,0,1);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (254,18,'Activitats esportives',1,1,1,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (255,19,'Disponibilitat d\'instal·lacions per a la pràctica de l\'esport',1,1,1,1);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (256,20,'Ajuts esportistes universitaris',0,0,1,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (257,21,'Cursos de llengües',1,1,1,1);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (258,22,'Acreditació de coneixements lingüístics',1,1,1,1);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (259,23,'Suport a les PAU',0,0,1,1);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (260,24,'Expedició de documents i certificats PAU',0,0,1,1);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (261,25,'Cursos Universitat d\'Estiu',1,1,1,1);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (262,26,'Gestió oferta Lliure elecció/Mat. Transv.',0,1,1,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (263,27,'Assessorament en eines per a la gestió de la qualitat',1,1,1,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (264,28,'Bústia de suggeriments/queixes',1,1,1,1);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (265,29,'Assessorament i formació pel desenvolupament professional',0,0,0,1);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (266,30,'Suport a la presentació de projectes competitius (nacional i europeus)',0,1,0,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (267,31,'Assessorament en elaboració convenis amb empreses i institucions',1,1,1,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (268,32,'Assessorament en la valorització dels resultats de la recerca',0,1,0,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (269,33,'Assessorament del serveis científicstècnics ',1,1,1,1);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (270,34,'Ajuts a per a la incorporació de personal investigador??',1,1,1,1);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (271,35,'Promoció i venda de serveis de la UdL a empreses i institucions',1,1,1,1);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (272,36,'Gestió i organització de congressos',1,1,1,1);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (273,37,'Viatges i desplaçaments ',1,1,0,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (274,38,'Gestió i informació de dades de clients, col·laboradors i proveïdors',1,1,1,1);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (275,39,'Crèdit pressupostari activitats',1,1,0,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (276,40,'Formalització Encàrrecs col·laboració',1,1,1,1);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (277,41,'Emissió factures',1,1,0,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (278,42,'Emissió de certificats econòmics',1,1,0,1);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (279,43,'Assessorament en la compra i contractació de serveis i subministres',1,1,0,1);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (280,44,'Retorn documentació exp. Contractació',0,0,0,1);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (281,45,'Gestió dades expedient personal',1,1,0,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (282,46,'Compatibilitat altres activitats',1,1,0,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (283,47,'Determinació horari laboral',1,0,0,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (284,48,'Reducció jornada laboral',1,0,0,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (285,49,'Permisos i llicències',1,1,0,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (286,50,'Vacances',1,1,0,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (287,51,'Contractació de personal',1,1,0,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (288,52,'Formació del PAS',1,0,0,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (289,53,'Certificats en matèria de personal',1,1,0,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (290,54,'Venda de productes bibliogràficas i merchandisisng de la UdL',1,1,1,1);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (291,55,'Gestionar la propietat intel·lectual i drets explotació i imatge',1,1,0,1);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (292,56,'Edició i producció de materials docents, científics i de promoció de la UdL',1,1,0,1);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (293,57,'Assessorament i gestió d\'actes protocol·laris',1,1,1,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (294,58,'Assessorament i gestió d\'activitats culturals',1,1,1,1);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (295,59,'Informació per als mitjans de comunicació',1,1,1,1);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (296,60,'Assessorament, estudis i gestió d\'activitats en perspectiva de gènere i igualtat d\'oportunitats',1,1,1,1);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (297,61,'Ajuts a projectes de cooperació',1,1,1,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (298,62,'Assessorament i prèstec de màterials en cooperació i desenvolupament??',1,1,1,1);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (299,63,'Servei de correu electrònic',1,1,1,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (300,64,'Servei de 1arxa',1,1,1,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (301,65,'Servei de Campus Virtual',1,1,1,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (302,66,'Servei de hosting web',1,1,0,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (303,67,'Telefonia',1,1,0,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (304,68,'Compra de material informàtic',1,1,0,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (305,69,'Serveis de videoconferència',1,1,0,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (306,70,'Directori electrònic',1,1,0,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (307,71,'Suport informàtic',1,1,1,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (308,72,'Adquisició o desenvolupament de solucions informàtiques',1,1,0,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (309,73,'Posada a disposició espais d\'estudi i autoaprenentatge.',0,0,0,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (310,74,'Accés a documents, recursos tecnològics i espais de treball',1,1,1,1);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (311,75,'Préstec de documents, d\'equipament tecnològic i d\'espais de treball',1,1,1,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (312,76,'Servei de Biblioteca i Documentació: Formació d\'usuaris',1,1,1,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (313,77,'Manteniment i reforma dels espais i instal·lacions',1,1,0,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (314,78,'Gestió del Mobiliari',1,1,0,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (315,79,'Assegurances',1,1,1,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (316,80,'Gestió de la imatge corporativa',1,1,1,1);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (317,81,'Transferència i custòdia dels documents',1,1,1,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (318,82,'Consulta i préstec de documents (Gestió documental i arxiu)',1,1,1,1);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (319,83,'Accés a espais restringits',1,1,1,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (320,84,'Gestió i reserva dels espais i instal·lacions',1,1,0,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (321,85,'Gestió d\'incidències de recursos de la universitat',1,1,0,0);
insert  into `serveis`(`id`,`Codi`,`Nom`,`PerfilPAS`,`PerfilSOC`,`PerfilPDI`,`PerfilEst`) values (322,86,'Punt d\'informació',1,1,0,1);

/*Table structure for table `serveis_subambits` */

CREATE TABLE `serveis_subambits` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Serveis_id` int(11) DEFAULT NULL,
  `SubAmbits_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=815 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `serveis_subambits` */

insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (630,4,1);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (631,5,1);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (632,5,15);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (633,6,1);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (634,6,15);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (635,7,1);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (636,7,15);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (637,8,1);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (638,8,15);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (639,9,1);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (640,9,15);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (641,10,1);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (642,10,3);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (643,10,11);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (644,11,1);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (645,11,4);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (646,11,15);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (647,12,5);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (648,12,11);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (649,13,5);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (650,13,11);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (651,14,3);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (652,14,5);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (653,16,2);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (654,16,11);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (655,17,2);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (656,17,10);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (657,18,7);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (658,19,7);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (659,19,9);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (660,19,10);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (661,19,14);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (662,20,7);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (663,20,15);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (664,21,2);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (665,21,7);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (666,21,10);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (667,22,2);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (668,22,7);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (669,22,10);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (670,23,1);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (671,23,7);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (672,23,10);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (673,24,1);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (674,24,7);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (675,24,10);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (676,25,2);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (677,25,7);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (678,25,10);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (679,26,1);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (680,26,2);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (681,26,5);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (682,26,11);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (683,27,6);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (684,28,3);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (685,28,11);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (686,29,2);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (687,29,11);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (688,30,4);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (689,30,15);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (690,31,4);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (691,31,12);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (692,32,4);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (693,33,4);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (694,33,6);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (695,33,9);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (696,33,12);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (697,33,14);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (698,34,4);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (699,34,15);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (700,34,17);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (701,35,3);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (702,35,12);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (703,36,4);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (704,36,5);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (705,36,11);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (706,37,16);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (707,38,16);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (708,39,16);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (709,40,16);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (710,40,17);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (711,41,12);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (712,41,16);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (713,42,12);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (714,42,16);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (715,43,6);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (716,43,16);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (717,44,12);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (718,44,16);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (719,45,17);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (720,46,17);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (721,47,17);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (722,48,17);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (723,49,17);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (724,50,17);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (725,51,16);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (726,51,17);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (727,52,2);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (728,52,17);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (729,53,17);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (730,54,3);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (731,54,8);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (732,54,9);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (733,54,13);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (734,54,14);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (735,55,6);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (736,55,8);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (737,55,12);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (738,55,13);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (739,56,4);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (740,56,6);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (741,56,8);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (742,56,12);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (743,56,13);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (744,57,3);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (745,57,6);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (746,58,3);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (747,58,7);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (748,58,10);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (749,59,3);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (750,59,11);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (751,60,7);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (752,60,10);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (753,61,3);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (754,61,15);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (755,62,3);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (756,62,8);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (757,62,10);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (758,62,13);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (759,63,18);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (760,64,6);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (761,64,18);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (762,65,18);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (763,66,18);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (764,67,18);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (765,68,18);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (766,69,14);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (767,69,18);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (768,70,18);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (769,71,6);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (770,71,18);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (771,72,6);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (772,72,18);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (773,74,2);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (774,74,7);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (775,74,8);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (776,74,9);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (777,74,13);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (778,74,14);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (779,74,18);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (780,75,6);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (781,75,7);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (782,75,8);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (783,75,9);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (784,75,13);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (785,75,14);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (786,75,18);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (787,76,2);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (788,76,8);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (789,76,13);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (790,77,6);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (791,77,9);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (792,77,14);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (793,78,9);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (794,78,14);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (795,78,18);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (796,79,5);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (797,80,3);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (798,80,11);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (799,81,6);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (800,81,8);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (801,81,13);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (802,82,8);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (803,82,12);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (804,82,13);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (805,83,9);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (806,83,14);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (807,84,9);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (808,84,14);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (809,85,6);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (810,85,9);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (811,85,12);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (812,85,14);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (813,86,3);
insert  into `serveis_subambits`(`id`,`Serveis_id`,`SubAmbits_id`) values (814,86,11);

/*Table structure for table `subambits` */

CREATE TABLE `subambits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Ambits_id` int(11) DEFAULT NULL,
  `Nom` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

/*Data for the table `subambits` */

insert  into `subambits`(`id`,`Ambits_id`,`Nom`) values (1,1,'GRAU, MÀSTER I DOCTORAT');
insert  into `subambits`(`id`,`Ambits_id`,`Nom`) values (2,1,'ALTRA FORMACIÓ: F. CONTINUA, F. ESPECÍFICA, LLENGÜES, CURSOS D\'ESTIU\r\n');
insert  into `subambits`(`id`,`Ambits_id`,`Nom`) values (3,2,'COMUNICACIÓ I RELACIONS EXTERNES\r\n');
insert  into `subambits`(`id`,`Ambits_id`,`Nom`) values (4,3,'RECERCA I TRANSF.\r\n');
insert  into `subambits`(`id`,`Ambits_id`,`Nom`) values (5,4,'SERVEIS DE SUPORT: CARNET, ALLOTJAMENT, CONGRESSOS, ASSEGURANCES\r\n');
insert  into `subambits`(`id`,`Ambits_id`,`Nom`) values (6,4,'SERVEIS TÈCNICS');
insert  into `subambits`(`id`,`Ambits_id`,`Nom`) values (7,4,'ACTIVITATS: CULTURA, ESPORT, LLENGÜES, GÈNERE');
insert  into `subambits`(`id`,`Ambits_id`,`Nom`) values (8,4,'LLIBRES, DOCUMENTS I BOTIGA');
insert  into `subambits`(`id`,`Ambits_id`,`Nom`) values (9,4,'ESPAIS I INSTAL·LACIONS');
insert  into `subambits`(`id`,`Ambits_id`,`Nom`) values (10,5,'ACTIVITATS: CULTURA, ESPORT, LLENGÜES, GÈNERE');
insert  into `subambits`(`id`,`Ambits_id`,`Nom`) values (11,5,'INFORMACIÓ: GENERAL, ALLOTJAMENT, CONGRESSOS');
insert  into `subambits`(`id`,`Ambits_id`,`Nom`) values (12,5,'ASSESSORAMENT TÈCNIC ');
insert  into `subambits`(`id`,`Ambits_id`,`Nom`) values (13,5,'LLIBRES, DOCUMENTS I BOTIGA\r\n');
insert  into `subambits`(`id`,`Ambits_id`,`Nom`) values (14,5,'ESPAIS I INSTAL·LACIONS\r\n');
insert  into `subambits`(`id`,`Ambits_id`,`Nom`) values (15,6,'BEQUES I AJUTS\r\n');
insert  into `subambits`(`id`,`Ambits_id`,`Nom`) values (16,7,'GESTIÓ ECONÒMICA');
insert  into `subambits`(`id`,`Ambits_id`,`Nom`) values (17,8,'GESTIÓ DE PERSONAL');
insert  into `subambits`(`id`,`Ambits_id`,`Nom`) values (18,9,'TECNOLOGIES INFORMACIÓ I COMUN.');
insert  into `subambits`(`id`,`Ambits_id`,`Nom`) values (111,111,'ACCÉS A LA UNIVERSITAT');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
