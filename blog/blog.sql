-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 11 jan. 2023 à 09:52
-- Version du serveur : 5.7.33
-- Version de PHP : 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blog`;

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id_article` int(5) NOT NULL,
  `titre` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `contenu` text NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id_article`, `titre`, `photo`, `contenu`, `id_user`) VALUES
(2, 'La France, championne du monde', 'https://images.unsplash.com/photo-1459865264687-595d652de67e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Zm9vdGJhbGx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60', 'Bla bla bla', 4),
(3, 'Twilight, le film d\'une génération', 'https://cdn.pocket-lint.com/r/s/x1920/assets/images/162644-tv-news-feature-twilight-movie-order-how-to-watch-in-chronological-order-image6-h7fft5xezb.jpg', 'BLABLABLA\r\n', 5),
(5, 'Je veux le PSG', 'https://shoot-africa.com/wp-content/uploads/2022/02/Zidane-PSG.jpg', 'BLA BLA BLA', 3),
(6, '\"Kylian est le meilleur\"', 'https://resize-public.ladmedia.fr/rcrop/1200,/img/var/public/storage/images/news/zinedine-zidane-kylian-mbappe-le-coup-de-fil-qui-change-tout-1414221/36731330-1-fre-FR/Zinedine-Zidane-Kylian-MBappe-le-coup-de-fil-qui-change-tout.jpg', 'blablzblzlklxlksdf', 3),
(7, 'Vive les bisounours', 'https://file1.telestar.fr/var/telestar/storage/images/2014/articles/les-bisounours-sont-de-retour-49323/476261-2-fre-FR/Les-Bisounours-sont-de-retour.jpg?alias=original', 'bla bla bla bla bla', 1),
(8, 'Le chocolat, remède à tous les maux', 'https://img.passeportsante.net/1200x675/2021-05-03/i102005-chocolat-nu.webp', '&lt;p&gt;Lorem ipsum dolor sit amet. Rem dolorem isteAut cupiditate quo itaque saepe eum quidem tempore et earum explicabo? Sed rerum officiaUt maxime aut omnis sint. Ea sunt repellat sit reiciendis recusandaesit error? Sit fugiat libero nam dignissimos sapiente &lt;strong&gt;Qui perspiciatis non inventore nobis rem quasi sapiente qui dicta voluptates&lt;/strong&gt; qui rerum dolor. Et delectus fuga et omnis ipsum &lt;a href=&quot;https://www.loremipzum.com&quot; target=&quot;_blank&quot;&gt;Qui repudiandae non illum voluptatem est voluptatem sequi id reiciendis saepe&lt;/a&gt; sit maiores eius. Hic facere incidunt et tenetur quaeratAt voluptates ut optio corrupti sed nihil consectetur rem minus dolorem et modi vero. Cum eaque ullamEt praesentium id reprehenderit voluptatum ut iste debitis ad facere possimus! 33 voluptatem quam33 cumque non obcaecati adipisci et dolorem voluptatem qui officiis vitae et molestiae magnam. Aut ipsum reiciendis sed nihil enimQui iusto in veritatis cupiditate est galisum ipsam qui quia accusantium. &lt;/p&gt;&lt;h2&gt;Sed veritatis veritatis rem optio ducimus. &lt;/h2&gt;&lt;p&gt;Ex natus quaerat id sunt cupiditateUt perferendis et soluta accusamus ea dolorem facere non laudantium quos. Qui porro eius ut maxime dignissimos &lt;a href=&quot;https://www.loremipzum.com&quot; target=&quot;_blank&quot;&gt;Et beatae vel eveniet voluptatibus cum eligendi nemo ut unde voluptate&lt;/a&gt; aut vitae quidem. Aut nisi totam et suscipit fugaet aperiam in galisum quia ut dicta aliquid? Ad iure sequi et dolores earumut eligendi qui repellat amet. Et beatae illo est reiciendis numquamin voluptates qui iste nemo. Id culpa quiaAut nihil ea galisum delectus qui excepturi repellat. Et autem illum et galisum vitaeEt laborum quo neque dolores est laboriosam inventore in dolorum pariatur! &lt;/p&gt;&lt;h3&gt;Nam animi culpa non doloribus optio. &lt;/h3&gt;&lt;p&gt;Ut reiciendis voluptatumAut nisi ut quia odio. Et aliquam ipsam &lt;a href=&quot;https://www.loremipzum.com&quot; target=&quot;_blank&quot;&gt;Id facere&lt;/a&gt; hic accusamus molestiae. Qui distinctio mollitiaest delectus eos tempore doloribus. Vel blanditiis nequeQui reiciendis quo recusandae similique ut amet rerum qui nobis cupiditate. Ut exercitationem natus et ipsa quos33 impedit ea placeat numquam sed totam ipsum sit voluptatem iure et consequatur molestiae. &lt;/p&gt;&lt;ul&gt;&lt;li&gt;Non tenetur corporis non dignissimos voluptatibus aut reprehenderit temporibus. &lt;/li&gt;&lt;li&gt;At numquam repudiandae eos consequuntur illo vel accusantium libero aut dolorem nisi. &lt;/li&gt;&lt;li&gt;Qui velit rerum 33 quaerat galisum 33 voluptas voluptatem. &lt;/li&gt;&lt;li&gt;Quo voluptatibus officiis sed voluptatum fugit. &lt;/li&gt;&lt;li&gt;Sed vitae porro At sunt enim! &lt;/li&gt;&lt;li&gt;Et saepe inventore qui nulla possimus non neque quidem et quis explicabo. &lt;/li&gt;&lt;/ul&gt;&lt;h4&gt;Vel tempore molestias et inventore illum ut sunt quia. &lt;/h4&gt;&lt;p&gt;Ut iste debitisQui sint est galisum assumenda qui placeat iste. In velit possimusHic earum et sequi repellendus et molestiae voluptatibus est quia galisum et deserunt iusto ut nesciunt quia. Ut vitae laborum &lt;em&gt;At fugit quo nesciunt exercitationem vel laudantium omnis est dolorem accusamus&lt;/em&gt; aut labore recusandae quo reprehenderit culpa. Et porro sunt et ipsam quaeratet blanditiis ea nostrum fugiat rem adipisci consequuntur? Cum omnis quae &lt;strong&gt;Est aspernatur aut porro enim et inventore cupiditate&lt;/strong&gt; est tempore deleniti rem fuga impedit. Sed consectetur tempore et facilis animiQui doloremque ut molestiae iure aut dolores molestiae quo quis optio in inventore deserunt. Et aspernatur assumenda vel cupiditate repudiandaeEt unde aut enim quisquam et pariatur nihil est animi sapiente eum odit libero. 33 mollitia pariaturEt beatae sit laboriosam vero qui nihil galisum 33 eveniet asperiores. Ut quibusdam quod ut odio quaeratEst dolores ut rerum libero aut enim dolor et assumenda voluptate. &lt;/p&gt;\r\n', 1),
(9, 'Comment être bon joueur et mauvais commentateur ?', 'https://images.bfmtv.com/invSf2II1vk6AfCXYM6GWHKzCE8=/0x91:2048x1243/images/Thierry-Henry-1131762.jpg', 'bla bla bla bla', 2),
(11, 'Coucou', 'https://www.consoglobe.com/wp-content/uploads/2019/06/coucougris_shutterstock_1380980498_.jpg', '&lt;p&gt;Ceci est un&lt;strong&gt; test&lt;/strong&gt;&lt;/p&gt;', 6);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `prenom` varchar(25) NOT NULL,
  `nom` varchar(25) NOT NULL,
  `genre` enum('f','m') NOT NULL,
  `pseudo` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `mdp` varchar(255) NOT NULL,
  `statut` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id_user`, `prenom`, `nom`, `genre`, `pseudo`, `mail`, `mdp`, `statut`) VALUES
(1, 'Justine', 'Perinel', 'f', 'Jujujuju', 'justine.perinel@10mentionweb.org', '123456789', 0),
(2, 'Thierry', 'Henry', 'f', 'titi', 'thierry.thebest@gmail.com', '123456789', 0),
(3, 'Zinedine', 'Zidane', 'f', 'Zizou', 'zizou@gmail.com', '123456879', 0),
(4, 'Kylian', 'Mbappé', 'f', 'Kykylemeilleurdetousleskikis', 'kylian.mbappe@psg.fr', '123456789', 0),
(5, 'Edward', 'Cullen', 'f', 'BellaIloveyou', 'edward@cullen.com', '123456789', 0),
(6, 'Justine', 'Perinel', 'f', 'Juju1201', 'justine.perinel@10mentionweb.org', '$2y$10$swq6ZSyAq1GADfXuM6LcdOaElVSBxH0I0Wk7zdWLvtwMvV2aOINGa', 1),
(7, 'Pierre', 'Leroy', 'm', 'Pierrot', 'pierre.leroy@colombbus.org', '$2y$10$VC8lqW0MNxLJKoPQ7atXouOno6dKXuibZSqSBCfUJ7uR.y2BG/nS2', 1),
(8, 'Justine', 'Perinel', 'f', 'lolo', 'justine.perinel@10mentionweb.org', '$2y$10$VSUMPOAFG/X8jp7xp/M9LusV8kncaKK8tMz0RzMHa3PBZBQz4hFvC', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id_article`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id_article` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
