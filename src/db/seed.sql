-- Seed SQL complet et propre pour le portfolio

-- Supprimer les anciennes données
DELETE FROM project_sections;
DELETE FROM project_features;
DELETE FROM project_techs;
DELETE FROM projects;

-- Réinitialiser la séquence SERIAL pour projects
ALTER SEQUENCE projects_id_seq RESTART WITH 1;

-- Insérer les projets
-- Insérer les projets avec descriptions mises à jour pour les cartes
INSERT INTO projects (slug, name, image, description, github, demo)
VALUES 
('site-auteur', 'Site-Auteur', '/images/site-auteur.png', 
 $$"Plateforme web pour découvrir les livres et chroniques d’une autrice. Consultation libre et interaction via commentaires après connexion."$$,
 'https://github.com/CedricCampagne/site-auteur', NULL),
('portfolio', 'Portfolio', '/images/portfolio.png', 
 $$"Mon portfolio Full Stack Junior : projets dynamiques, technologies utilisées et navigation simple pour présenter mes compétences."$$,
 'https://github.com/CedricCampagne/portfolio','https://github.com/CedricCampagne/portfolio');

-- Insérer les technologies par projet
-- site-auteur (id=1)
INSERT INTO project_techs (project_id, tech) VALUES
(1, 'SvelteKit'),
(1, 'TypeScript'),
(1, 'PostgreSQL'),
(1, 'Node.js'),
(1, 'Express'),
(1, 'Sequelize');

-- portfolio (id=2)
INSERT INTO project_techs (project_id, tech) VALUES
(2, 'SvelteKit'),
(2, 'TypeScript'),
(2, 'TailwindCSS');

-- site-auteur (id=1)
INSERT INTO project_sections (project_id, title, content) VALUES
(1, 'Présentation', $$"Site-Auteur est une application web full stack développée pour mettre en valeur le travail d’une autrice. Le site permet de présenter ses livres ainsi que ses chroniques littéraires publiées régulièrement.Les visiteurs peuvent consulter librement les informations sur l’autrice, ses ouvrages et la liste des chroniques. Un système d’authentification permet aux utilisateurs connectés d’accéder au contenu détaillé des chroniques et d’interagir via des commentaires.Le projet inclut également un espace administrateur permettant de gérer les utilisateurs, les chroniques et les commentaires."$$::jsonb),
(1, 'Objectif du projet', $$"L’objectif principal était de concevoir une application complète répondant à un besoin réel : offrir à une autrice une plateforme pour présenter son univers et interagir avec ses lecteurs.Le projet met l’accent sur l’expérience utilisateur, la gestion des accès (public vs authentifié) et la mise en place d’un back-office simple et efficace."$$::jsonb),
(1, 'Fonctionnalités principales', $$["Authentification utilisateur (inscription / connexion)","Espace administrateur avec gestion CRUD des utilisateurs, chroniques et commentaires","Affichage dynamique des livres sous forme de timeline","Affichage détaillé des livres avec onglets (résumé, extrait)","Liste des chroniques accessible publiquement","Accès aux détails des chroniques réservé aux utilisateurs connectés","Système de commentaires sur les chroniques","Interface responsive adaptée mobile, tablette et desktop","Abonnement à une newsletter"
]$$::jsonb),
(1, 'Architecture & Stack technique', $$"L’application repose sur une architecture full stack avec une SPA développée en SvelteKit et TypeScript pour le front-end.Le backend est construit avec Node.js et Express, exposant une API REST pour la gestion des données. Les données sont stockées dans une base PostgreSQL et manipulées via l’ORM Sequelize.L’ensemble du projet utilise TypeScript côté frontend et backend afin de sécuriser les échanges de données et améliorer la maintenabilité du code."$$::jsonb),
(1, 'Points forts & apprentissages', $$"Ce projet m’a permis d’approfondir l’utilisation de SvelteKit dans un contexte réel et de consolider mes compétences en développement full stack.J’ai renforcé mes acquis sur la création d’API REST avec Node.js et Express, la gestion des données avec PostgreSQL et Sequelize, ainsi que la structuration d’une application complète.L’intégration de TypeScript sur l’ensemble du projet a été un point clé, me permettant d’amélier la fiabilité du code, de mieux structurer les données et de gagner en productivité sur le long terme."$$::jsonb),
(1, 'Challenges techniques rencontrés', $$"Le principal défi a été l’intégration de TypeScript, que je ne connaissais pas avant ce projet. Après avoir appris les bases en autonomie, je l’ai directement appliqué dans le projet en comprenant progressivement le typage des données, les interfaces et leur utilisation avec le backend.Je me suis appuyé sur des ressources et de l’aide ponctuelle, mais en prenant toujours le temps de comprendre avant d’implémenter. Cette approche m’a permis de réellement monter en compétence et de produire un code plus fiable et structuré."$$::jsonb);

INSERT INTO project_sections (project_id, title, content) VALUES
(2, 'Présentation', $$"Ce projet correspond à mon portfolio personnel, conçu pour présenter mon profil de développeur full stack junior, mes compétences et les projets que j’ai réalisés.L’objectif était de créer un site moderne, clair et rapide à parcourir, en mettant l’accent sur la lisibilité et l’expérience utilisateur. Le design volontairement épuré permet aux recruteurs d’accéder rapidement aux informations essentielles."$$::jsonb),
(2, 'Objectif du projet', $$"L’objectif principal de ce projet est de disposer d’une plateforme centralisée pour présenter mon profil, mes compétences et mes réalisations, dans le but de faciliter ma recherche d’emploi.Ce portfolio reflète également ma manière de concevoir une application web : structure claire, design sobre et expérience utilisateur fluide."$$::jsonb),
(2, 'Fonctionnalités principales', $$["Présentation du profil développeur avec une interface claire et lisible","Section compétences avec technologies utilisées","Cartes projets avec aperçu, technologies et liens vers le code et la démo","Pages de détails projets générées dynamiquement via routing (slug)","Navigation fluide avec header sticky","Section contact avec accès rapide aux liens professionnels (GitHub, LinkedIn, email)","Interface responsive adaptée mobile, tablette et desktop"]$$::jsonb),
(2, 'Architecture & Stack technique', $$"Le site est développé avec SvelteKit et TypeScript afin de garantir une structure claire et maintenable.Le design repose sur TailwindCSS pour créer une interface moderne et responsive. Les compétences sont gérées via des fichiers de données statiques, tandis que les projets sont stockés dans une base PostgreSQL et récupérés via des endpoints SvelteKit.Le projet met en œuvre le routing dynamique avec paramètres (slug), ainsi que les mécanismes de chargement de données (load / fetch), afin de proposer une architecture plus évoluée qu’un simple site statique."$$::jsonb),
(2, 'Points forts & apprentissages', $$"Ce projet m’a permis de travailler sur la structuration d’un front-end propre et maintenable avec SvelteKit, tout en portant une attention particulière à l’expérience utilisateur.J’ai également approfondi l’utilisation du routing dynamique, des endpoints et du chargement de données côté client. L’intégration d’une base de données pour les projets m’a permis de dépasser le cadre d’un portfolio statique classique et de proposer une approche plus dynamique et évolutive."$$::jsonb),
(2, 'Choix techniques & approche', $$"Le projet a été conçu avec une approche volontairement simple et efficace. L’objectif n’était pas de multiplier les effets visuels, mais de proposer une interface claire, rapide et agréable à parcourir.Certains choix techniques, comme l’utilisation d’une base de données pour les projets et du routing dynamique, ont été faits pour démontrer la capacité à structurer une application de manière évolutive, tout en gardant une complexité maîtrisée."$$::jsonb);