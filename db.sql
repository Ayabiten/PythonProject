'*********************************** Requete sql pour Base de Donnée (Pas modifié)  ********************************************'
La table Admin :
Cette table est responsable du stockage des données concernant les membres d’administration du
site, on stocke l’email comme une clé primaire et le hash du mot de passe pour des raisons de
sécurité, ainsi que d’autres attributs comme le nom et le prénom.
Cette table peut être créée avec l’instruction SQL suivante :
CREATE TABLE `admin` (
 `email` varchar(50) NOT NULL,
 `mdp` varchar(50) NOT NULL,
 `nom` varchar(50) NOT NULL,
 `prenom` varchar(50) NOT NULL
) ;
ALTER TABLE `admin` ADD PRIMARY KEY (`email`);
• La table Professionnel :
Cette table est responsable du stockage des informations concernant les utilisateurs professionnels
(entreprises), on stocke l’email comme une clé primaire et le hash du mot de passe pour des
raisons de sécurité, ainsi que d’autres attributs comme le nom, prénom, les numéros de téléphone
mobile et fixe, adresse, logo de l’entreprise, site web s’il y en a un, ainsi que des clés étrangères
comme l’identifiant du type d’entreprise et l’identifiant du secteur d’activité et l’identifiant du
ville. Cette table peut être créée avec l’instruction SQL suivante :
CREATE TABLE `professionnel` (
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
 );
 ALTER TABLE `professionnel` ADD PRIMARY KEY (`email`);
Construction de la base de données 36
• La table Particulier :
Cette table est responsable du stockage des informations concernant les utilisateurs particuliers
(demandeurs de travail). On stocke l’email comme une clé primaire et le hash du mot de passe
pour des raisons de sécurité, ainsi que d’autres attributs comme le nom, prénom, la date de
naissance, les numéros de téléphone mobile et fixe, adresse, photo de profile, cv, ainsi que des
clés étrangères comme l’identifiant du ville. Cette table peut être créée avec l’instruction SQL
suivante :
 CREATE TABLE `particulier` (
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
 ) ;
ALTER TABLE `particulier` ADD PRIMARY KEY (`email`);
• La table message :
Cette table est responsable du stockage les message venant des utilisateurs .Pour cette raison,on
stocke l’email du l’utilisateur pour une éventuelle réponse par les administrateurs ainsi que le
sujet et le corps du message. On utilise un identifiant artificiel (id) comme une clé primaire.
Cette table peut être créée avec l’instruction SQL suivante :
 CREATE TABLE `message` (
 `id` int(11) NOT NULL,
 `emailUtilisateur` varchar(50) NOT NULL,
 `nomUtilisateur` varchar(50) NOT NULL,
 `sujet` varchar(50) NOT NULL,
 `corps` varchar(200) NOT NULL
);
ALTER TABLE `message` ADD PRIMARY KEY (`id`);
ALTER TABLE `message` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT=1;
• La table fonction :
Cette table est dédiée pour le stockage des fonctions pour être utilisée dans la description des
offres, par exemple (Hotellerie, Logistique, Production...) On utilise un identifiant artificiel (id)
comme une clé primaire, et un labelle pour décrire la fonction.
Cette table peut être créée avec l’instruction SQL suivante :
CREATE TABLE `fonction` (
 `id` int(11) NOT NULL,
 `label` varchar(100) NOT NULL
 );
 ALTER TABLE `fonction` ADD PRIMARY KEY (`id`);
Construction de la base de données 37
 ALTER TABLE `fonction` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT=1;
• La table niveau_etude :
Cette table est dédiée pour le stockage des niveaux d’études qui sont exigés généralement dans la
description des offres, par exemple (BAC+1, Terminal, Secondaire...) On utilise un identifiant
artificiel (id) comme une clé primaire, et un labelle pour décrire le niveau.
Cette table peut être créée avec l’instruction SQL suivante :
CREATE TABLE `niveau_etude` (
 `id` int(11) NOT NULL,
 `label` varchar(50) NOT NULL
 );
 ALTER TABLE `niveau_etude` ADD PRIMARY KEY (`id`);
 ALTER TABLE `niveau_etude` MODIFY `id` int(11) NOT NULL
AUTO_INCREMENT, AUTO_INCREMENT=1;
• La table offre :
Cette table est dédiée pour le stockage des informations qui concernent les offres publiées sur le
site. Un offre est décrit par un identifiant artificiel (id) comme une clé primaire, une date d’ajout,
un booléen pour décrire l’état de l’offre (estEncoreOuvert), le salaire maximal en dinars, le
nombre de postes ouverts pour cette offre, les deux bornes (supérieure et inférieure) de l’âge
exigé. Ainsi que d’autres attributs comme le nombre d’année d’expérience dans le domaine,
l’adresse et quelque détail sur l’offre, et d’autres clés étrangères comme l’identifiant de
l’utilisateur qui le publia, la fonction, le type de contrat, le niveau d’étude exigé et la ville.
Cette table peut être créée avec l’instruction SQL suivante :
CREATE TABLE `offre` (
 `id` int(11) NOT NULL,
 `date_ajout` date NOT NULL,
 `estEncoreOuvert` int(11) NOT NULL,
 `salaireMax` int(11) NOT NULL,
 `nbrePostes` int(11) NOT NULL,
 `ageMaxRequis` int(11) NOT NULL,
 `ageMinRequis` int(11) NOT NULL,
 `ExperienceMinRequis` int(11) NOT NULL,
 `Adresse` varchar(200) NOT NULL,
 `Details` varchar(500) NOT NULL,
 `id_utilisateur` varchar(50) NOT NULL,
 `id_fonction` int(11) NOT NULL,
 `id_niveau_etude` int(11) NOT NULL,
 `id_type_contrat` int(11) NOT NULL,
 `id_ville` int(11) NOT NULL
);
ALTER TABLE `offre` ADD PRIMARY KEY (`id`);
ALTER TABLE `offre` MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,
AUTO_INCREMENT=1;
• La table postuler :
Cette table est dédiée pour le stockage des informations qui répondront aux questions du genre :
quel utilisateur a postulé à quelle offre ?
Construction de la base de données 38
Elle contient des lignes chacun composée du doublet (identifiant utilisateur, identifiant offre).
Cette table peut être créée avec l’instruction SQL suivante :
CREATE TABLE `postuler` (
 `id_utilisateur` varchar(50) NOT NULL,
 `id_offre` int(11) NOT NULL
 );
ALTER TABLE `postuler` ADD PRIMARY KEY (`id_utilisateur`,`id_offre`);
• La table secteur_activite :
Cette table est dédiée pour le stockage des secteurs d’activité qui sont utilisées dans la description
des entreprises. On utilise un identifiant artificiel (id) comme une clé primaire, et un labelle pour
décrire le secteur d’activité.
Cette table peut être créée avec l’instruction SQL suivante :
CREATE TABLE `secteur_activite` (
 `id` int(11) NOT NULL,
 `label` varchar(50) NOT NULL
 );
 ALTER TABLE ` secteur_activite ` ADD PRIMARY KEY (`id`);
 ALTER TABLE ` secteur_activite ` MODIFY `id` int(11) NOT NULL
AUTO_INCREMENT, AUTO_INCREMENT=1;
• La table type_contrat :
Cette table est dédiée pour le stockage des types de contrat qui sont utilisées dans la description
des offres. On utilise un identifiant artificiel (id) comme une clé primaire, et un labelle pour
décrire le type de contrat.
Cette table peut être créée avec l’instruction SQL suivante :
CREATE TABLE `type_contrat` (
 `id` int(11) NOT NULL,
 `label` varchar(50) NOT NULL
 );
 ALTER TABLE ` type_contrat ` ADD PRIMARY KEY (`id`);
 ALTER TABLE ` type_contrat ` MODIFY `id` int(11) NOT NULL
AUTO_INCREMENT, AUTO_INCREMENT=1;
• La table type_entreprise :
Cette table est dédiée pour le stockage des types d’entreprises qui sont utilisées dans la
description des utilisateurs professionnels. On utilise un identifiant artificiel (id) comme une clé
primaire, et un labelle pour décrire le type d’entreprise.
Cette table peut être créée avec l’instruction SQL suivante :
CREATE TABLE `type_entreprise` (
 `id` int(11) NOT NULL,
 `label` varchar(50) NOT NULL
 );
 ALTER TABLE ` type_entreprise ` ADD PRIMARY KEY (`id`);
 ALTER TABLE ` type_entreprise ` MODIFY `id` int(11) NOT NULL
AUTO_INCREMENT, AUTO_INCREMENT=1;
• La table ville :
Cette table est dédiée pour le stockage les villes algériennes qui sont utilisées dans la description
Construction de la base de données 39
des utilisateurs professionnels, particuliers et les offres. On utilise un identifiant artificiel (id)
comme une clé primaire, et un labelle pour nommer la ville.
Cette table peut être créée avec l’instruction SQL suivante :
CREATE TABLE `ville` (
 `id` int(11) NOT NULL,
 `label` varchar(50) NOT NULL
 );
 ALTER TABLE ` ville ` ADD PRIMARY KEY (`id`);
 ALTER TABLE ` ville ` MODIFY `id` int(11) NOT NULL
AUTO_INCREMENT, AUTO_INCREMENT=1;
