-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 27 fév. 2020 à 22:29
-- Version du serveur :  10.4.10-MariaDB
-- Version de PHP :  7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `recrutement`
--

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add new user', 7, 'add_newuser'),
(26, 'Can change new user', 7, 'change_newuser'),
(27, 'Can delete new user', 7, 'delete_newuser'),
(28, 'Can view new user', 7, 'view_newuser'),
(29, 'Can add recruteur', 8, 'add_recruteur'),
(30, 'Can change recruteur', 8, 'change_recruteur'),
(31, 'Can delete recruteur', 8, 'delete_recruteur'),
(32, 'Can view recruteur', 8, 'view_recruteur'),
(33, 'Can add offre emploi', 9, 'add_offreemploi'),
(34, 'Can change offre emploi', 9, 'change_offreemploi'),
(35, 'Can delete offre emploi', 9, 'delete_offreemploi'),
(36, 'Can view offre emploi', 9, 'view_offreemploi'),
(37, 'Can add cv', 10, 'add_cv'),
(38, 'Can change cv', 10, 'change_cv'),
(39, 'Can delete cv', 10, 'delete_cv'),
(40, 'Can view cv', 10, 'view_cv'),
(41, 'Can add candidat', 11, 'add_candidat'),
(42, 'Can change candidat', 11, 'change_candidat'),
(43, 'Can delete candidat', 11, 'delete_candidat'),
(44, 'Can view candidat', 11, 'view_candidat'),
(45, 'Can add contactus', 12, 'add_contactus'),
(46, 'Can change contactus', 12, 'change_contactus'),
(47, 'Can delete contactus', 12, 'delete_contactus'),
(48, 'Can view contactus', 12, 'view_contactus'),
(49, 'Can add contact us', 13, 'add_contactus'),
(50, 'Can change contact us', 13, 'change_contactus'),
(51, 'Can delete contact us', 13, 'delete_contactus'),
(52, 'Can view contact us', 13, 'view_contactus'),
(53, 'Can add offre emploi', 14, 'add_offreemploi'),
(54, 'Can change offre emploi', 14, 'change_offreemploi'),
(55, 'Can delete offre emploi', 14, 'delete_offreemploi'),
(56, 'Can view offre emploi', 14, 'view_offreemploi'),
(57, 'Can add recruteur', 15, 'add_recruteur'),
(58, 'Can change recruteur', 15, 'change_recruteur'),
(59, 'Can delete recruteur', 15, 'delete_recruteur'),
(60, 'Can view recruteur', 15, 'view_recruteur'),
(61, 'Can add cv', 16, 'add_cv'),
(62, 'Can change cv', 16, 'change_cv'),
(63, 'Can delete cv', 16, 'delete_cv'),
(64, 'Can view cv', 16, 'view_cv'),
(65, 'Can add candidat', 17, 'add_candidat'),
(66, 'Can change candidat', 17, 'change_candidat'),
(67, 'Can delete candidat', 17, 'delete_candidat'),
(68, 'Can view candidat', 17, 'view_candidat'),
(69, 'Can add contactus', 18, 'add_contactus'),
(70, 'Can change contactus', 18, 'change_contactus'),
(71, 'Can delete contactus', 18, 'delete_contactus'),
(72, 'Can view contactus', 18, 'view_contactus'),
(73, 'Can add offre emploi', 19, 'add_offreemploi'),
(74, 'Can change offre emploi', 19, 'change_offreemploi'),
(75, 'Can delete offre emploi', 19, 'delete_offreemploi'),
(76, 'Can view offre emploi', 19, 'view_offreemploi'),
(77, 'Can add recruteur', 20, 'add_recruteur'),
(78, 'Can change recruteur', 20, 'change_recruteur'),
(79, 'Can delete recruteur', 20, 'delete_recruteur'),
(80, 'Can view recruteur', 20, 'view_recruteur'),
(81, 'Can add candidat', 21, 'add_candidat'),
(82, 'Can change candidat', 21, 'change_candidat'),
(83, 'Can delete candidat', 21, 'delete_candidat'),
(84, 'Can view candidat', 21, 'view_candidat'),
(85, 'Can add cv', 22, 'add_cv'),
(86, 'Can change cv', 22, 'change_cv'),
(87, 'Can delete cv', 22, 'delete_cv'),
(88, 'Can view cv', 22, 'view_cv');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$180000$vQZ9byCcJ1Ud$IBU4fx7FkoCvhTAAJ0WfGzlgblVPFHeyKMTz9M8gfdQ=', '2020-02-26 18:46:03.929104', 1, 'test', '', '', 'test@test.com', 1, 1, '2020-02-21 13:24:48.287855'),
(2, 'pbkdf2_sha256$180000$F3yFrFr7o3dY$tpTOvKjE1Oj5MWXAEbI046JFmurQ5gvJT5NLm702cOg=', NULL, 1, 'achraf', '', '', 'achraf@achraf.com', 1, 1, '2020-02-27 21:04:01.187284'),
(3, 'pbkdf2_sha256$180000$Pgh820j00NNj$b3xionj6ZA9kaxetB3WxLEEpKq92z/fInWQO6X3+tJU=', '2020-02-27 21:17:17.722377', 1, 'nihal', '', '', 'nihal@test.com', 1, 1, '2020-02-27 21:05:08.313210'),
(4, 'pbkdf2_sha256$180000$7ATHxnbCGumA$f3a5+Kt/gWZ+aDUr5eZfXeM8sdLPe8gK2+WMrCQKHek=', NULL, 1, 'zineb', '', '', 'zineb@test.com', 1, 1, '2020-02-27 21:05:38.001773');

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `candidat`
--

CREATE TABLE `candidat` (
  `id_candidat` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mdp` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `dateDeNaissance` varchar(20) DEFAULT NULL,
  `numTelPortable` varchar(10) NOT NULL,
  `numTelFixe` varchar(10) DEFAULT NULL,
  `adresse` varchar(500) DEFAULT NULL,
  `photo_de_profile` varchar(100) DEFAULT NULL,
  `cv` varchar(100) DEFAULT NULL,
  `id_ville` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-02-24 21:47:59.415353', '2', 'NewUser object (2)', 3, '', 7, 1),
(2, '2020-02-24 21:47:59.490216', '1', 'NewUser object (1)', 3, '', 7, 1),
(3, '2020-02-24 22:22:59.390195', '9', 'test', 3, '', 7, 1),
(4, '2020-02-24 22:22:59.455768', '8', 'test', 3, '', 7, 1),
(5, '2020-02-24 22:22:59.489725', '7', 'test', 3, '', 7, 1),
(6, '2020-02-24 22:22:59.589112', '6', 'test', 3, '', 7, 1),
(7, '2020-02-24 22:22:59.611161', '5', 'test', 3, '', 7, 1),
(8, '2020-02-24 22:22:59.655596', '4', 'test', 3, '', 7, 1),
(9, '2020-02-24 22:22:59.689427', '3', 'test', 3, '', 7, 1),
(10, '2020-02-24 23:10:11.601230', '1', 'ContactUs object (1)', 1, '[{\"added\": {}}]', 13, 1),
(11, '2020-02-26 18:14:34.709886', '2', 'Candidat object (2)', 3, '', 21, 1),
(12, '2020-02-26 18:14:34.800947', '1', 'Candidat object (1)', 3, '', 21, 1),
(13, '2020-02-26 18:29:05.798081', '22', 'Candidat object (22)', 3, '', 21, 1),
(14, '2020-02-26 18:29:05.853116', '21', 'Candidat object (21)', 3, '', 21, 1),
(15, '2020-02-26 18:29:05.964047', '20', 'Candidat object (20)', 3, '', 21, 1),
(16, '2020-02-26 18:29:05.998083', '19', 'Candidat object (19)', 3, '', 21, 1),
(17, '2020-02-26 18:29:06.016103', '18', 'Candidat object (18)', 3, '', 21, 1),
(18, '2020-02-26 18:29:06.052861', '17', 'Candidat object (17)', 3, '', 21, 1),
(19, '2020-02-26 18:29:06.071382', '16', 'Candidat object (16)', 3, '', 21, 1),
(20, '2020-02-26 18:29:06.097623', '15', 'Candidat object (15)', 3, '', 21, 1),
(21, '2020-02-26 18:29:06.116636', '14', 'Candidat object (14)', 3, '', 21, 1),
(22, '2020-02-26 18:29:06.141508', '13', 'Candidat object (13)', 3, '', 21, 1),
(23, '2020-02-26 18:29:06.160396', '12', 'Candidat object (12)', 3, '', 21, 1),
(24, '2020-02-26 18:29:06.186009', '11', 'Candidat object (11)', 3, '', 21, 1),
(25, '2020-02-26 18:29:06.204590', '10', 'Candidat object (10)', 3, '', 21, 1),
(26, '2020-02-26 18:29:06.230580', '9', 'Candidat object (9)', 3, '', 21, 1),
(27, '2020-02-26 18:29:06.249073', '8', 'Candidat object (8)', 3, '', 21, 1),
(28, '2020-02-26 18:29:06.275052', '7', 'Candidat object (7)', 3, '', 21, 1),
(29, '2020-02-26 18:29:06.293539', '6', 'Candidat object (6)', 3, '', 21, 1),
(30, '2020-02-26 18:29:06.318870', '5', 'Candidat object (5)', 3, '', 21, 1),
(31, '2020-02-26 18:29:06.338078', '4', 'Candidat object (4)', 3, '', 21, 1),
(32, '2020-02-26 18:29:06.363623', '3', 'Candidat object (3)', 3, '', 21, 1);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(11, 'mysite', 'candidat'),
(12, 'mysite', 'contactus'),
(10, 'mysite', 'cv'),
(7, 'mysite', 'newuser'),
(9, 'mysite', 'offreemploi'),
(8, 'mysite', 'recruteur'),
(21, 'Recrutement', 'candidat'),
(18, 'Recrutement', 'contactus'),
(22, 'Recrutement', 'cv'),
(19, 'Recrutement', 'offreemploi'),
(20, 'Recrutement', 'recruteur'),
(17, 'Recrutment', 'candidat'),
(13, 'Recrutment', 'contactus'),
(16, 'Recrutment', 'cv'),
(14, 'Recrutment', 'offreemploi'),
(15, 'Recrutment', 'recruteur'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-02-20 18:19:55.797375'),
(2, 'auth', '0001_initial', '2020-02-20 18:19:56.940876'),
(3, 'admin', '0001_initial', '2020-02-20 18:20:02.982075'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-02-20 18:20:04.408531'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-02-20 18:20:04.463638'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-02-20 18:20:05.910303'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-02-20 18:20:06.666034'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-02-20 18:20:06.873222'),
(9, 'auth', '0004_alter_user_username_opts', '2020-02-20 18:20:06.929260'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-02-20 18:20:07.805981'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-02-20 18:20:07.868400'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-02-20 18:20:07.945874'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-02-20 18:20:08.071697'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-02-20 18:20:08.193158'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-02-20 18:20:08.349880'),
(16, 'auth', '0011_update_proxy_permissions', '2020-02-20 18:20:08.414019'),
(17, 'sessions', '0001_initial', '2020-02-20 18:20:08.621842'),
(18, 'mysite', '0001_initial', '2020-02-24 21:18:00.766785'),
(19, 'mysite', '0002_candidat_cv_offreemploi_recruteur', '2020-02-24 21:22:13.283842'),
(20, 'mysite', '0003_contactus', '2020-02-24 22:16:19.965671'),
(21, 'Recrutment', '0001_initial', '2020-02-24 22:53:41.658142'),
(22, 'Recrutement', '0001_initial', '2020-02-24 23:36:14.328345'),
(23, 'Recrutement', '0002_candidat_username', '2020-02-26 18:14:07.967964'),
(24, 'Recrutement', '0003_auto_20200226_1928', '2020-02-26 18:28:09.659413'),
(25, 'Recrutement', '0004_auto_20200226_1932', '2020-02-26 18:32:31.448124'),
(26, 'Recrutement', '0005_auto_20200226_1959', '2020-02-26 18:59:26.539436'),
(27, 'Recrutement', '0006_auto_20200227_1255', '2020-02-27 11:55:42.550968');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('nfkfa552lvv88aqbj9qnhapc7jm0k29q', 'NjVlNWQyZDMyYTQwMmFhYWEzZGM0YWI4MTEyZTJmMjEzZGM5MjZjNDp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIzNDZmMjQwYjUwYzMwMTU3MWQyYjNiMGZlMTRhZDEwZTZiMmM2ZTFjIn0=', '2020-03-12 21:17:17.741534');

-- --------------------------------------------------------

--
-- Structure de la table `recrutement_candidat`
--

CREATE TABLE `recrutement_candidat` (
  `id_C` int(11) NOT NULL,
  `NomPrenom` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `ville` varchar(30) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `cv` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `recrutement_candidat`
--

INSERT INTO `recrutement_candidat` (`id_C`, `NomPrenom`, `Email`, `password`, `Address`, `ville`, `Username`, `cv`) VALUES
(23, 'zakldb', 'bfb', 'bf', 'zbfabf', 'obzfb', 'test', ''),
(24, 'zakldb', 'bfb', 'bf', 'zbfabf', 'obzfb', 'test', '');

-- --------------------------------------------------------

--
-- Structure de la table `recrutement_contactus`
--

CREATE TABLE `recrutement_contactus` (
  `id` int(11) NOT NULL,
  `Nom` varchar(30) NOT NULL,
  `Prenom` varchar(30) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `Objet` varchar(30) NOT NULL,
  `Message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `recrutement_contactus`
--

INSERT INTO `recrutement_contactus` (`id`, `Nom`, `Prenom`, `Email`, `Objet`, `Message`) VALUES
(1, 'mnpcnz', 'zefkzenf', 'knknfazknf@gmail.com', 'naflz ekfenc', 'pnpifnfzlek fklkzefkzenfkze');

-- --------------------------------------------------------

--
-- Structure de la table `recrutement_offreemploi`
--

CREATE TABLE `recrutement_offreemploi` (
  `id` int(11) NOT NULL,
  `Recruteur_id` int(11) DEFAULT NULL,
  `Email` varchar(30) NOT NULL,
  `EntDescription` longtext NOT NULL,
  `Location` varchar(30) NOT NULL,
  `NomEntreprise` varchar(30) NOT NULL,
  `PostDescription` longtext NOT NULL,
  `Region` varchar(30) NOT NULL,
  `Title` varchar(30) NOT NULL,
  `VilleEntreprise` varchar(30) NOT NULL,
  `siteweb` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `recrutement_recruteur`
--

CREATE TABLE `recrutement_recruteur` (
  `id_R` int(11) NOT NULL,
  `NomPrenom` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `Entreprise` varchar(300) NOT NULL,
  `ville` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `recruteur`
--

CREATE TABLE `recruteur` (
  `id_recruteur` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mdp` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `numTelPortable` varchar(10) NOT NULL,
  `numTelFixe` varchar(10) DEFAULT NULL,
  `adresse` varchar(100) DEFAULT NULL,
  `logo` varchar(40) DEFAULT NULL,
  `siteWeb` varchar(40) DEFAULT NULL,
  `id_type_entreprise` int(11) DEFAULT NULL,
  `id_secteur_activite` int(11) DEFAULT NULL,
  `id_ville` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `recrutment_candidat`
--

CREATE TABLE `recrutment_candidat` (
  `id_C` int(11) NOT NULL,
  `Nom` varchar(30) NOT NULL,
  `Prenom` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `ville` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `recrutment_contactus`
--

CREATE TABLE `recrutment_contactus` (
  `id` int(11) NOT NULL,
  `Nom` varchar(30) NOT NULL,
  `Prenom` varchar(30) NOT NULL,
  `Email` varchar(254) NOT NULL,
  `Objet` varchar(30) NOT NULL,
  `Message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `recrutment_contactus`
--

INSERT INTO `recrutment_contactus` (`id`, `Nom`, `Prenom`, `Email`, `Objet`, `Message`) VALUES
(1, 'lkeafakn', 'kznkznf', 'lznfk@gamai.vom', 'nzfnkznf', 'kznfkl'),
(2, 'ac', 'jbcj', 'djzfb@gam.com', 'jvbejbv', 'zjbzfjaebvja'),
(3, 'azlfabk', 'baffb', 'jzbzfbaoj@gmail.com', 'bbfao', 'bobfaobfazebgjobeozbgoaeriao');

-- --------------------------------------------------------

--
-- Structure de la table `recrutment_cv`
--

CREATE TABLE `recrutment_cv` (
  `id` int(11) NOT NULL,
  `cv` longtext NOT NULL,
  `candidat_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `recrutment_offreemploi`
--

CREATE TABLE `recrutment_offreemploi` (
  `id` int(11) NOT NULL,
  `Domaine` varchar(300) NOT NULL,
  `Offre` longtext NOT NULL,
  `DateI` date DEFAULT NULL,
  `Recruteur_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `recrutment_recruteur`
--

CREATE TABLE `recrutment_recruteur` (
  `id_R` int(11) NOT NULL,
  `Nom` varchar(30) NOT NULL,
  `Entreprise` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `candidat`
--
ALTER TABLE `candidat`
  ADD PRIMARY KEY (`id_candidat`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Index pour la table `recrutement_candidat`
--
ALTER TABLE `recrutement_candidat`
  ADD PRIMARY KEY (`id_C`);

--
-- Index pour la table `recrutement_contactus`
--
ALTER TABLE `recrutement_contactus`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `recrutement_offreemploi`
--
ALTER TABLE `recrutement_offreemploi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Recrutement_offreemp_Recruteur_id_c0862fad_fk_Recruteme` (`Recruteur_id`);

--
-- Index pour la table `recrutement_recruteur`
--
ALTER TABLE `recrutement_recruteur`
  ADD PRIMARY KEY (`id_R`);

--
-- Index pour la table `recruteur`
--
ALTER TABLE `recruteur`
  ADD PRIMARY KEY (`id_recruteur`);

--
-- Index pour la table `recrutment_candidat`
--
ALTER TABLE `recrutment_candidat`
  ADD PRIMARY KEY (`id_C`);

--
-- Index pour la table `recrutment_contactus`
--
ALTER TABLE `recrutment_contactus`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `recrutment_cv`
--
ALTER TABLE `recrutment_cv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Recrutment_cv_candidat_id_28605162_fk_Recrutment_candidat_id_C` (`candidat_id`);

--
-- Index pour la table `recrutment_offreemploi`
--
ALTER TABLE `recrutment_offreemploi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Recrutment_offreempl_Recruteur_id_6cff48a9_fk_Recrutmen` (`Recruteur_id`);

--
-- Index pour la table `recrutment_recruteur`
--
ALTER TABLE `recrutment_recruteur`
  ADD PRIMARY KEY (`id_R`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT pour la table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `candidat`
--
ALTER TABLE `candidat`
  MODIFY `id_candidat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `recrutement_candidat`
--
ALTER TABLE `recrutement_candidat`
  MODIFY `id_C` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `recrutement_contactus`
--
ALTER TABLE `recrutement_contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `recrutement_offreemploi`
--
ALTER TABLE `recrutement_offreemploi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `recrutement_recruteur`
--
ALTER TABLE `recrutement_recruteur`
  MODIFY `id_R` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `recruteur`
--
ALTER TABLE `recruteur`
  MODIFY `id_recruteur` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `recrutment_candidat`
--
ALTER TABLE `recrutment_candidat`
  MODIFY `id_C` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `recrutment_contactus`
--
ALTER TABLE `recrutment_contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `recrutment_cv`
--
ALTER TABLE `recrutment_cv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `recrutment_offreemploi`
--
ALTER TABLE `recrutment_offreemploi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `recrutment_recruteur`
--
ALTER TABLE `recrutment_recruteur`
  MODIFY `id_R` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Contraintes pour la table `recrutement_offreemploi`
--
ALTER TABLE `recrutement_offreemploi`
  ADD CONSTRAINT `Recrutement_offreemp_Recruteur_id_c0862fad_fk_Recruteme` FOREIGN KEY (`Recruteur_id`) REFERENCES `recrutement_recruteur` (`id_R`);

--
-- Contraintes pour la table `recrutment_cv`
--
ALTER TABLE `recrutment_cv`
  ADD CONSTRAINT `Recrutment_cv_candidat_id_28605162_fk_Recrutment_candidat_id_C` FOREIGN KEY (`candidat_id`) REFERENCES `recrutment_candidat` (`id_C`);

--
-- Contraintes pour la table `recrutment_offreemploi`
--
ALTER TABLE `recrutment_offreemploi`
  ADD CONSTRAINT `Recrutment_offreempl_Recruteur_id_6cff48a9_fk_Recrutmen` FOREIGN KEY (`Recruteur_id`) REFERENCES `recrutment_recruteur` (`id_R`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
