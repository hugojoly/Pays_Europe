
-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Dim 30 Juin 2019 à 11:56
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `europev1`
--
CREATE DATABASE IF NOT EXISTS `europev1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `europev1`;

-- --------------------------------------------------------

--
-- Structure de la table `config`
--

DROP TABLE IF EXISTS `config`;
CREATE TABLE `config` (
  `idCfg` int(10) UNSIGNED NOT NULL,
  `dossierImgDrapeaux` varchar(256) NOT NULL DEFAULT '''drapeaux/''',
  `dossierImgCartes` varchar(256) NOT NULL DEFAULT '''cartes/''',
  `racine` varchar(256) NOT NULL DEFAULT '''./'''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `config`
--

TRUNCATE TABLE `config`;
--
-- Contenu de la table `config`
--

INSERT INTO `config` (`idCfg`, `dossierImgDrapeaux`, `dossierImgCartes`, `racine`) VALUES
(1, '\'drapeaux/\'', '\'cartes/\'', '\'./\'');

-- --------------------------------------------------------

--
-- Structure de la table `drapeau`
--

DROP TABLE IF EXISTS `drapeau`;
CREATE TABLE `drapeau` (
  `idDrapeau` int(10) UNSIGNED NOT NULL,
  `imgDrapeau` varchar(100) DEFAULT NULL,
  `descriptif` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `drapeau`
--

TRUNCATE TABLE `drapeau`;
--
-- Contenu de la table `drapeau`
--

INSERT INTO `drapeau` (`idDrapeau`, `imgDrapeau`, `descriptif`) VALUES
(1, '150px-Flag_of_Austria.svg.png', 'Les drapeaux de l\'Autriche comprennent le drapeau national et marchand ainsi que le drapeau militaire de la république d\'Autriche.\r\n\r\nLeurs origines remontent au blason de la maison régnante des Babenberg, de gueules à la fasce d\'argent, adopté au XIIIe siècle. Le drapeau composé de trois bandes horizontales rouge (dessus), blanche et rouge (dessous) de largeurs égales est mentionné dans l’article 8a de la Loi constitutionnelle fédérale (Bundes-Verfassungsgesetz).'),
(2, '150px-Flag_of_Belgium.svg.png', 'Le drapeau de la Belgique est composé de trois bandes verticales ; noire, jaune et rouge.\r\n\r\nL’article 193 de la Constitution mentionne les couleurs, les armes et la devise nationale : « La Nation belge adopte les couleurs rouge, jaune et noire, et pour armes le Lion du Royaume de Belgique avec la légende : l’union fait la force ».\r\n\r\nC’est le 30 septembre 1830 que le gouvernement provisoire adopte officiellement le drapeau national, présentant initialement une disposition horizontale des couleurs. La disposition verticale et la couleur noire à la hampe seront définitivement adoptées le 12 octobre 1831.\r\n\r\nLes dimensions du drapeau ont été fixées à 2,60 m de haut pour 3 m de large, ce qui donne à l’origine la proportion des anciennes bannières, représentants les armes des armoiries du titulaire.'),
(3, '150px-Flag_of_Bulgaria.svg.png', 'Le drapeau de la Bulgarie est le pavillon marchand et le drapeau national de la République de Bulgarie. Il a été adopté en 1879, un an après la libération du pays de l\'Empire ottoman. Il se compose de trois bandes horizontales de largeur égale : blanc au-dessus, vert au milieu et rouge pour celle du bas. Le blanc symbolise la paix, le vert la fertilité des terres bulgares et le rouge le courage du peuple.'),
(4, '150px-Flag_of_Croatia.svg.png', 'Le drapeau de la Croatie est composé de trois bandes horizontales, rouge, blanche et bleue selon les couleurs panslaves, mais avec une inversion du bleu et du rouge. Au milieu est placé le blason de la Croatie.\r\n\r\nLes trois couleurs sont utilisées depuis 1848. Lorsque la Croatie faisait partie de la République fédérative socialiste de Yougoslavie, le drapeau avait une étoile rouge à cinq pointes avec un bord jaune au lieu du blason. L\'étoile a été remplacée en mai 1990, peu de temps après les premières élections multipartites. Les couleurs du blason croate traditionnel ont été inversées afin de ne pas reprendre les symboles de l\'État indépendant de Croatie qui exista de 1941 à 1945. Le drapeau actuel et le blason ont été adoptés le 21 décembre 1990, environ 10 mois après la déclaration d\'indépendance.'),
(5, '150px-Flag_of_Cyprus.svg.png', 'Le drapeau de la République de Chypre a été officialisé le 16 août 1960 sous les termes des accords de Londres et de Zurich grâce auxquels une ébauche de constitution vu le jour, ainsi que la proclamation d\'indépendance de l\'État de Chypre.\r\n\r\nCe drapeau représente la carte de l\'île placée au-dessus de deux branches d\'olivier (symbole de paix) sur un fond blanc. La carte est de couleur cuivre, symbolisant les importants minerais de cuivre présents sur l\'île (principalement sous la forme de chalcopyrite, qui est à l\'origine du nom de l\'île) dont la couleur est jaune.'),
(6, '150px-Flag_of_the_Czech_Republic.svg.png', 'L\'utilisation appropriée du drapeau et des autres emblèmes nationaux est définie par la loi 3/1993 Sb. modifiée par la loi 154/1998 Sb. et finalisée par la loi 352/2001 Sb.'),
(7, '150px-Flag_of_Denmark.svg.png', 'Le drapeau du Danemark est aussi nommé Dannebrog (« vêtement rouge » ou « vêtement danois »). C\'est un drapeau rouge avec une croix blanche étendue jusqu\'aux bords ; la croix (croix scandinave, aussi intitulée Croix de saint Olaf) est décalée du côté de la lance. La même croix se retrouve sur les drapeaux suédois, norvégien, finlandais et islandais, mais aussi de celui des îles Féroé et d’Åland. Le drapeau est certainement dérivé du drapeau utilisé lors des croisades. Encore plus que les autres drapeaux scandinaves, le Dannebrog est l\'objet d\'usages singuliers qui font de lui un acteur constitutionnel d\'une importance limitée mais réelle.'),
(8, '150px-Flag_of_Estonia.svg.png', 'Le drapeau national de l\'Estonie est composé de trois bandes horizontales égales : de haut en bas, bleu, noir et blanc. En estonien, il est souvent désigné sous le nom de « sinimustvalge », ce qui signifie littéralement bleu-noir-blanc.'),
(9, '150px-Flag_of_Finland.svg.png', 'Le drapeau de la Finlande, en finnois : Suomen lippu également appelé Siniristilippu (en français : Le Drapeau à la Croix Bleue), date de 1918 et se fonde sur le modèle du drapeau du Danemark. Il représente la croix scandinave1 bleue sur un fond blanc.\r\n\r\nLe bleu symbolise les lacs et le ciel tandis que le blanc symbolise la neige et les blanches nuits de l\'été finlandais. Le pavillon d\'État comprend en son centre les armes de la Finlande, il est par ailleurs l\'exacte réplique du drapeau civil.\r\n\r\nLe drapeau en ailes d\'hirondelle est utilisé par les militaires. Le drapeau présidentiel est identique à celui de l\'armée mais il porte aussi la Croix de la Liberté dans le coin supérieur gauche étant donné que le président de la Finlande est le Grand Maître de l\'Ordre de la Croix de la Liberté.'),
(10, '150px-Flag_of_France.svg.png', 'Le drapeau de la France, drapeau tricolore bleu, blanc, rouge, également appelé « drapeau ou pavillon tricolore », est l’emblème national de la République française. Il est le drapeau de la France sans interruption depuis 1830. Il est mentionné dans l’article 2 de la Constitution française de 1958. Ce drapeau aux proportions « 2:3 » (deux tiers, deux pour la hauteur, trois pour la longueur) est composé de trois bandes verticales bleue, blanche et rouge de largeurs et de longueurs égales2.\r\n\r\nSous la forme de pavillon de la Marine de guerre, il date du 27 pluviôse an II, soit le 15 février 1794 — dessiné selon la légende3 par Jacques-Louis David (1748-1825) à la demande de la Convention — mais ses origines sont plus anciennes et remontent aux trois couleurs de la liberté (14 juillet 1789), identiques aux trois couleurs de la Révolution américaine et à celles du drapeau des États-Unis, le bleu et le rouge auraient pour origine les couleurs de la ville de Paris, celles de la Garde nationale, couleurs qui entoureraient le blanc de la royauté, donc identiques aux trois couleurs utilisées par les différents pavillons français d\'Ancien Régime.\r\n\r\nLe drapeau tricolore est le pavillon de marine officiel de la France depuis 1794 et le drapeau officiel des armées depuis 1812, à l’exception des périodes de Restauration 1814-1815 et 1815-1830.'),
(11, '150px-Flag_of_Germany.svg.png', 'Le drapeau de l\'Allemagne est le drapeau civil, le drapeau d\'État et le pavillon marchand de la république fédérale d\'Allemagne. C\'est un drapeau tricolore composé de trois bandes horizontales égales aux couleurs nationales de l\'Allemagne : noir, rouge et or.\r\n\r\nLe drapeau tricolore apparaît au début du XIXe siècle et acquiert un rôle prépondérant au cours des révolutions de 1848. Le noir, le rouge et l\'or correspondaient aux couleurs adoptées par le Burschenschaft, camaraderie étudiante créée le 12 juillet 1815 à l\'université d\'Iéna et qui milita tout au long du XIXe siècle pour l\'unification d\'une Allemagne encore éclatée. L\'éphémère Parlement de Francfort (1848-1850) le propose comme drapeau d\'un État allemand uni et démocratique. Avec la naissance de la république de Weimar, après la Première Guerre mondiale, il est adopté comme drapeau national de l\'Allemagne. À la suite de la Seconde Guerre mondiale, il devient le drapeau des deux Allemagnes. Ce n\'est qu\'en 1959 que des symboles socialistes sont ajoutés au drapeau de l\'Allemagne de l\'Est, afin de le différencier de celui de l\'Allemagne de l\'Ouest. Le tricolore noir-rouge-or est resté le drapeau de l\'Allemagne après la réunification du pays, le 3 octobre 1990.\r\n\r\nLe drapeau allemand n\'a pas toujours utilisé les couleurs noir, rouge et or. Après la guerre austro-prussienne de 1866, la Confédération de l\'Allemagne du Nord, dominée par la Prusse, adopte un drapeau tricolore noir-blanc-rouge, qui devient le drapeau de l\'Empire allemand après l\'achèvement de l\'unité allemande en 1871. Ce drapeau reste en usage jusqu\'en 1918. Les couleurs noir-blanc-rouge sont réintroduites avec la fondation du Troisième Reich en 1933.\r\n\r\nLes couleurs noir-rouge-or et noir-blanc-rouge ont joué un rôle important dans l\'histoire de l\'Allemagne, et possèdent plusieurs significations. Les couleurs du drapeau actuel sont associées à la démocratie républicaine née après la Seconde Guerre mondiale, et représentent l\'unité allemande et la liberté – pas seulement la liberté de l\'Allemagne, mais aussi la liberté personnelle du peuple allemand.'),
(12, '150px-Flag_of_Greece.svg.png', 'L\'actuel drapeau de la Grèce est composé de neuf bandes bleues et blanches, avec un carré bleu à croix blanche sur le canton.\r\n\r\nIl a été adopté pour la première fois au cours de l\'Assemblée nationale d\'Épidaure, et fixé par décret en mars 1822 : celui des forces terrestres consistait en une croix blanche sur fond bleu, celui de la marine militaire étant similaire au drapeau actuel. Les raisons et la symbolique de ce choix ne sont pas connues précisément, et font l\'objet de nombreuses théories populaires.'),
(13, '150px-Flag_of_Hungary.svg.png', 'Le drapeau de la Hongrie est le drapeau civil, le drapeau d\'État, le pavillon marchand et le pavillon d\'État de la Hongrie. Il est composé de trois bandes horizontales rouge (dessus), blanche et verte.\r\n\r\nLe drapeau fit sa première apparition en 1848 (mouvements révolutionnaires), mais ne s\'imposa au sein de l\'Autriche-Hongrie bicéphale qu\'en 1867. Jusqu\'en 1945, il était frappé d\'une couronne royale en son centre. La forme actuelle du drapeau a été adoptée en 1957 et est restée inchangée depuis, en dernier lieu aux termes de la Loi fondamentale de 20121. C\'est un rectangle de proportions 1:2.'),
(14, '150px-Flag_of_Ireland.svg.png', 'Le drapeau national de l\'Irlande (en irlandais : An Bhratach Náisiúnta), également connu sous le nom de tricolore irlandais, est le drapeau national de l\'État d\'Irlande. Le drapeau fut d\'abord adopté en tant que drapeau national de l\'État libre d\'Irlande à partir de sa création en 1922. Il est confirmé comme drapeau officiel dans la constitution de décembre 1937.\r\nL\'usage des trois couleurs est attesté depuis 1830, quand des patriotes irlandais fêtent le retour au drapeau tricolore en France après les Trois Glorieuses. Le drapeau dans sa disposition actuelle est déployé pour la première fois en 1848 par le mouvement Jeune Irlande. Il flotte sur la Poste centrale de Dublin et sur les positions tenues par les troupes républicaines lors du soulèvement de Pâques 1916. Il reste le drapeau officiel quand l\'Irlande devient une république en 1949.\r\n\r\nIl a été longtemps interdit dans les six comtés du Nord, sous souveraineté britannique. Le tricolore est vu par bien des nationalistes comme le drapeau national de toute l\'Irlande. Il est donc utilisé (avec controverse) par beaucoup de nationalistes en Irlande du Nord.\r\n\r\nLe tricolore, avec ses trois bandes verticales égales de vert (côté du mât), blanc et orange, est inspiré du tricolore français et il serait lui-même à l\'origine du tricolore terre-neuvien.\r\n\r\nCes trois couleurs symbolisent respectivement :\r\n\r\nVert : couleur emblématique de mouvement catholique de libération nationale, est associée traditionnellement à l\'Irlande (The Emerald Isle)2,\r\nBlanc : symbole de paix entre les deux communautés,\r\nOrange : commémore pour les protestants la victoire décisive du roi d\'Angleterre Guillaume III (issu de la Maison d\'Orange-Nassau) que celui-ci remporta le 30 juillet 1690 à la Boyne sur les partisans catholiques de Jacques II.'),
(15, '150px-Flag_of_Italy.svg.png', 'Le drapeau actuel de l\'Italie fut d\'abord adopté par la République cispadane à Reggio d\'Émilie le 7 janvier 1797 quand le parlement de la République, sur proposition du député Giuseppe Compagnoni (it), décréta que « l\'on rende universel l\'étendard ou drapeau cispadan des trois couleurs, vert, blanc, rouge et que ces trois couleurs soient également utilisées dans la cocarde cispadane, laquelle doit être portée de tous ».\r\n\r\nLe drapeau tricolore italien est célébré chaque année le 7 janvier lors de la Fête du drapeau (Festa del Tricolore)'),
(16, '150px-Flag_of_Latvia.svg.png', 'Le drapeau de la Lettonie représente un champ rouge grenat, de proportions 1:2, traversé en son centre par une laize horizontale blanche.'),
(17, '150px-Flag_of_Lithuania.svg.png', 'Le drapeau de la Lituanie se compose de trois bandes horizontales : celle du haut est jaune, celle du milieu verte et celle du bas rouge. Il a été adopté le 20 mars 1989, près de deux ans avant que la Lituanie ne retrouve son indépendance par la chute de l\'Union soviétique. Avant cela, ce drapeau avait été utilisé, avec des couleurs plus claires, de 1918 à 1940, de la première indépendance du pays à son annexion par l\'Union soviétique. De 1945 à 1989, la RSS de Lituanie utilisa successivement deux drapeaux : jusqu\'en 1953, le drapeau de l\'URSS avec le nom de la république, puis, à partir de 1953, le même drapeau rouge avec deux bandes horizontales blanche et verte en bas. La dernière modification du drapeau lituanien remonte à 2004, lorsque ses proportions passèrent de 1:2 à 3:5.'),
(18, '150px-Flag_of_Luxembourg.svg.png', 'Le drapeau du Luxembourg est constitué de 10 bandes égales blanche et bleu ciel (alternant blanc et bleu ciel) disposées horizontalement, avec un lion rouge présent au milieu. Il est présent sur le sol luxembourgeois mais pas dans le monde. Celui présent dans le monde est le drapeau horizontal Rouge, Blanc et Bleu ciel (à trois bandes horizontales rouge, blanc et bleu ciel).\r\n\r\nOfficiellement le drapeau n\'a été adopté qu\'en 2007, avec la loi du 6 juillet.'),
(19, '150px-Flag_of_Malta.svg.png', 'L\'État de Malte possède plusieurs drapeaux, pavillons ou fanions officiels : le drapeau national, celui du président de la république, les fanions du commandant des forces armées ou de la police, le pavillon de la marine marchande.'),
(20, '150px-Flag_of_the_Netherlands.svg.png', 'Le drapeau des Pays-Bas est un drapeau à trois bandes horizontales rouge, blanc, bleu. Il est dérivé du premier drapeau choisi comme emblème national, le Prinsenvlag ou « bannière des princes », dès avant la création officielle du pays, pendant la révolte qui devait libérer le territoire alors occupé par les espagnols. Il reprend l\'organisation et les couleurs, sauf le rouge, d\'un drapeau non officiel plus ancien qui est finalement redevenu le drapeau national néerlandais.'),
(21, '150px-Flag_of_Poland.svg.png', 'Le drapeau de la Pologne est l\'un des symboles nationaux de la République de Pologne. Conformément à la loi du 31 janvier 1980 relative au blason, aux couleurs et à l\'hymne de la République de la Pologne et aux sceaux nationaux, il s\'agit d\'un tissu rectangulaire paré des couleurs nationales arrangées en deux bandes horizontales de surface égale, la première blanche et la seconde rouge. Ces deux couleurs sont définies dans la Constitution polonaise comme les couleurs nationales. Deux versions du drapeau existent, avec ou sans les armoiries de la Pologne au milieu de la bande blanche. La version défacée[à définir], avec les armoiries, est réservée par la loi aux usages officiels à l\'étranger ou en mer. L\'enseigne navale est quant à elle un drapeau similaire avec une échancrure au milieu à l\'extrémité droite.\r\n\r\nLes couleurs nationales ont une origine héraldique dérivant des couleurs des armoiries de la Pologne et de la Lituanie. Elles furent officiellement adoptées en 1831. Le drapeau fut pour sa part adopté officiellement en 1919. Depuis 2004, il est fêté le 2 mai.'),
(22, '150px-Flag_of_Portugal.svg.png', 'Le drapeau du Portugal (en portugais bandeira de Portugal) est actuellement de couleurs verte et rouge sur la séparation desquelles se trouvent une sphère armillaire et les armoiries du pays. Le drapeau actuel est le drapeau républicain qui a succédé en 1911 à l\'ancien drapeau bleu et blanc. C\'est un des nombreux drapeaux au dessin décentré vers la hampe.'),
(23, '150px-Flag_of_Romania.svg.png', 'Le drapeau de la Roumanie est le pavillon national, le drapeau civil et le drapeau d\'État de la Roumanie. Il est composé de trois couleurs : bleu, jaune et rouge. Il ressemble au drapeau du Tchad sauf que les teintes de bleu sont différentes entre ces deux drapeaux. Selon une légende très répandue aujourd\'hui en Roumanie, ces couleurs symboliseraient les trois pays historiques unifiés entre 1859 et 1918 : la Transylvanie, la Valachie et la Moldavie. Ce drapeau, dans sa forme actuelle, remonte à la période 1867-1948 : il a été ré-adopté en 1989 par simple suppression des armoiries du régime communiste.'),
(24, '150px-Flag_of_Slovakia.svg.png', 'Le drapeau de la Slovaquie (en slovaque : vlajka Slovenska) a été adopté le 3 septembre 1992. C\'est un drapeau tricolore composé de trois bandes horizontales reprenant les couleurs panslaves : la bande supérieure est blanche, l\'intermédiaire bleue et l\'inférieure rouge. L\'écu national, de type néogothique, est placé sur le drapeau pour le distinguer des autres drapeaux slaves : décalé du côté de la hampe, il empiète sur les bandes supérieure et inférieure du drapeau. Les proportions du drapeau sont 2:3. Ce drapeau aux dimensions d\'1,5 m × 1 m est également le pavillon de la marine marchande slovaque. C\'est l\'un des quatre symboles officiels de la République slovaque.\r\n\r\nDepuis le 1er mai 2004, le drapeau européen est hissé à côté du drapeau slovaque, les deux drapeaux forment ensemble la présentation des couleurs de la République slovaque'),
(25, '150px-Flag_of_Slovenia.svg.png', 'Le drapeau de la Slovénie est composé des trois couleurs panslaves rouge, bleu et blanc, héritées du drapeau de la Yougoslavie dont la Slovénie est issue.\r\n\r\nL\'écu, qui est également le blason du pays, est placé du côté de la hampe du drapeau, à cheval sur les bandes blanche et bleue. Celui-ci représente, en blanc, les trois sommets d\'une montagne sur fond azur, le mont Triglav et les deux faces ondulées bleues en pointe de l\'écu représentent la façade maritime et les rivières du pays. Les trois étoiles d\'or à six rais placées au-dessus du mont Triglav rappellent les armes de la famille des comtes de Celje qui a dominé la Slovénie à partir de 1130 environ. L\'écu est bordé de rouge. Sur le drapeau, la hauteur du blason est égale à celle d\'une bande et le centre est placé à un quart de la largeur totale tandis qu\'il est en hauteur sur la frontière des deux bandes du haut\r\n\r\nSans son écu, le drapeau de la Slovénie est identique à celui de la Russie, bien que les proportions soient différentes. Il est aussi très similaire à celui de la Slovaquie, bien que l\'écu soit différent et dans une position différente aussi.\r\n\r\nUne réglementation adoptée le 10 novembre 1995 a défini comme pavillon de beaupré le blason de la Slovénie centré sur un champ bleu. On trouve également le pavillon sous un ratio de 2/3. Ce pavillon est remplacé l\'année suivante pour un pavillon blanc bleu et jaune, reprenant les couleurs du blason national.'),
(26, '150px-Flag_of_Spain.svg.png', 'Le drapeau national espagnol, selon l\'article 4.1 de la Constitution espagnole de 1978, est formé de trois bandes horizontales, rouge, jaune et rouge, la bande jaune étant deux fois plus large que chacune des deux bandes rouges. Sur la bande jaune, décalées vers la hampe, figurent les armoiries de l\'Espagne.\r\n\r\nLe drapeau actuel est basé sur le même étendard adopté en 1785 comme pavillon national de l’Espagne et dans lequel seules les armoiries représentées ont été modifiés, à l’exception du dessin adopté entre 1931 et 1939 au cours de la Deuxième république.'),
(27, '150px-Flag_of_Sweden.svg.png', 'Sur le drapeau de la Suède, se présentent les couleurs des armes de la Suède au XIVe siècle – trois couronnes d\'or sur champ d\'azur – adaptées à la forme de la croix scandinave. Cette croix scandinave représente le christianisme. Il est dit que le design et les couleurs du drapeau suédois viennent des armoiries de la Suède datant de 1442, qui sont divisées en quatre par une croix pattée doré sur fond bleu, et que le drapeau danois a aussi servi de modèle. Les couleurs bleu et jaune sont utilisées pour représenter la Suède au moins depuis les armoiries du roi Magnus III de Suède, en 1275.'),
(28, '150px-Flag_of_the_United_Kingdom.svg.png', 'Le drapeau du Royaume-Uni, connu sous le nom d\'Union Flag ou Union Jack, a été créé en 1606, après l\'Union des Couronnes d\'Écosse et d\'Angleterre sous leur monarque commun Jacques Stuart (Jacques VI en Écosse et Jacques Ier d\'Angleterre), laquelle survint une centaine d\'années avant la création effective du royaume de Grande-Bretagne par l\'Acte d\'Union de 1707. Il combine la croix de saint Georges du drapeau anglais et la croix de saint André du drapeau écossais. Après l\'Union de 1801, ce drapeau fut augmenté de la croix de saint Patrick pour représenter l\'Irlande.');

-- --------------------------------------------------------

--
-- Structure de la table `geographie`
--

DROP TABLE IF EXISTS `geographie`;
CREATE TABLE `geographie` (
  `idGeo` int(10) UNSIGNED NOT NULL,
  `capitale` varchar(50) DEFAULT NULL,
  `langue` varchar(50) DEFAULT NULL,
  `population` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `superficie` int(10) UNSIGNED DEFAULT '0',
  `imgCarte` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `geographie`
--

TRUNCATE TABLE `geographie`;
--
-- Contenu de la table `geographie`
--

INSERT INTO `geographie` (`idGeo`, `capitale`, `langue`, `population`, `superficie`, `imgCarte`) VALUES
(1, 'Vienne', 'allemand', 8223062, 83871, '150px-EU-Austria.svg.png'),
(2, 'Bruxelles', 'allemand, français, néerlandais', 11239755, 30528, '150px-EU-Belgium.svg.png'),
(3, 'Sofia', 'bulgare', 4470534, 110879, 'EU-Bulgaria.svg.png'),
(4, 'Zagreb', 'croate', 4470534, 56594, '150px-EU-Croatia.svg.png'),
(5, 'Nicosie', 'grec moderne, turc', 1172458, 9251, '150px-EU-Cyprus.svg.png'),
(6, 'Prague', 'tchèque', 10538275, 78867, '150px-EU-Czech_Republic.svg.png'),
(7, 'Copenhague', 'danois', 5569077, 43094, '150px-EU-Denmark.svg.png'),
(8, 'Tallinn', 'estonien', 1257921, 45228, '150px-EU-Estonia.svg.png'),
(9, 'Helsinki', 'finnois', 5268799, 338145, '150px-EU-Finland.svg.png'),
(10, 'Paris', 'français', 66259012, 643427, '150px-EU-France.svg.png'),
(11, 'Berlin', 'allemand', 80996685, 357022, '150px-EU-Germany.svg.png'),
(12, 'Athènes', 'grec moderne', 10816286, 131957, '150px-EU-Greece.svg.png'),
(13, 'Budapest', 'hongrois', 9919128, 93028, 'EU-Hungary.svg.png'),
(14, 'Dublin', 'anglais, irlandais', 4832765, 70273, '150px-EU-Ireland.svg.png'),
(15, 'Rome', 'italien', 61680122, 301340, '150px-EU-Italy.svg.png'),
(16, 'Riga', 'letton', 2165165, 64589, '150px-EU-Latvia.svg.png'),
(17, 'Vilnius', 'lituanien', 2943472, 65300, '150px-EU-Lithuania.svg.png'),
(18, 'Luxembourg', 'allemand, français, luxembourgeois', 520672, 2586, '150px-EU-Luxembourg.svg.png'),
(19, 'La Valette', 'anglais, maltais', 3583288, 316, 'EU-Malta.svg.png'),
(20, 'Amsterdam', 'néerlandais', 16877351, 41543, '150px-EU-Netherlands.svg.png'),
(21, 'Varsovie', 'polonais', 38346279, 312685, '150px-EU-Poland.svg.png'),
(22, 'Lisbonne', 'portugais', 10427301, 92090, '150px-EU-Portugal_olivenza_neutral.svg.png'),
(23, 'Bucarest', 'roumain', 21729871, 238391, 'EU-Romania.svg.png'),
(24, 'Bratislava', 'slovaque', 5443583, 49035, '150px-EU-Slovakia.svg.png'),
(25, 'Ljubljana', 'slovène', 1988292, 20273, '150px-EU-Slovenia.svg.png'),
(26, 'Madrid', 'espagnol, catalan, basque', 47737941, 505370, '150px-EU-Spain.svg.png'),
(27, 'Stockholm', 'suédois', 9723809, 450295, '150px-EU-Sweden.svg.png'),
(28, 'Londres', 'anglais', 63742977, 243610, '150px-EU-United_Kingdom.svg.png');

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

DROP TABLE IF EXISTS `pays`;
CREATE TABLE `pays` (
  `idPays` int(10) UNSIGNED NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `idDrapeau` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `idPaysDecr` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `idGeo` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `pays`
--

TRUNCATE TABLE `pays`;
--
-- Contenu de la table `pays`
--

INSERT INTO `pays` (`idPays`, `nom`, `idDrapeau`, `idPaysDecr`, `idGeo`) VALUES
(1, 'Autriche', 1, 1, 1),
(2, 'Belgique', 2, 0, 2),
(3, 'Bulgarie', 3, 0, 3),
(4, 'Croatie', 4, 0, 4),
(5, 'Chypre', 5, 0, 5),
(6, 'Tchéquie', 6, 0, 6),
(7, 'Danemark', 7, 0, 7),
(8, 'Estonie', 8, 0, 8),
(9, 'Finlande', 9, 0, 9),
(10, 'France', 10, 0, 10),
(11, 'Allemagne', 11, 0, 11),
(12, 'Grèce', 12, 0, 12),
(13, 'Hongrie', 13, 0, 13),
(14, 'Irlande', 14, 0, 14),
(15, 'Italie', 15, 0, 15),
(16, 'Lettonie', 16, 0, 16),
(17, 'Lituanie', 17, 0, 17),
(18, 'Luxembourg', 18, 0, 18),
(19, 'Malte', 19, 0, 19),
(20, 'Pays-Bas', 20, 0, 20),
(21, 'Pologne', 21, 0, 21),
(22, 'Portugal', 22, 0, 22),
(23, 'Roumanie', 23, 0, 23),
(24, 'Slovaquie', 24, 0, 24),
(25, 'Slovénie', 25, 0, 25),
(26, 'Espagne', 26, 0, 26),
(27, 'Suède', 27, 0, 27),
(28, 'Royaume-Uni', 28, 0, 28);

-- --------------------------------------------------------

--
-- Structure de la table `paysdescription`
--

DROP TABLE IF EXISTS `paysdescription`;
CREATE TABLE `paysdescription` (
  `idPaysDescr` int(11) NOT NULL,
  `description` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Vider la table avant d'insérer `paysdescription`
--

TRUNCATE TABLE `paysdescription`;
--
-- Index pour les tables exportées
--

--
-- Index pour la table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`idCfg`);

--
-- Index pour la table `drapeau`
--
ALTER TABLE `drapeau`
  ADD PRIMARY KEY (`idDrapeau`);

--
-- Index pour la table `geographie`
--
ALTER TABLE `geographie`
  ADD PRIMARY KEY (`idGeo`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`idPays`);

--
-- Index pour la table `paysdescription`
--
ALTER TABLE `paysdescription`
  ADD PRIMARY KEY (`idPaysDescr`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `config`
--
ALTER TABLE `config`
  MODIFY `idCfg` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `drapeau`
--
ALTER TABLE `drapeau`
  MODIFY `idDrapeau` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT pour la table `geographie`
--
ALTER TABLE `geographie`
  MODIFY `idGeo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT pour la table `pays`
--
ALTER TABLE `pays`
  MODIFY `idPays` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT pour la table `paysdescription`
--
ALTER TABLE `paysdescription`
  MODIFY `idPaysDescr` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
