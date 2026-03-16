-- Seed SQL complet et propre pour le portfolio

-- Supprimer les anciennes données
DELETE FROM project_sections;
DELETE FROM project_features;
DELETE FROM project_techs;
DELETE FROM projects;

-- Réinitialiser la séquence SERIAL pour projects
ALTER SEQUENCE projects_id_seq RESTART WITH 1;

-- Insérer les projets
INSERT INTO projects (slug, name, image, description, github, demo)
VALUES 
('site-auteur', 'Site-Auteur', '/images/site-auteur.png', 
 $$"Application full stack permettant de gérer et consulter une bibliothèque de livres avec une SPA moderne et une API Node.js connectée à PostgreSQL."$$,
 'https://github.com/CedricCampagne/site-auteur', NULL),
('portfolio', 'Portfolio', '/images/portfolio.png', 
 $$"Portfolio personnel moderne développé avec SvelteKit et TailwindCSS pour présenter mes projets et compétences."$$,
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

-- Insérer les features par projet
-- site-auteur (id=1)
INSERT INTO project_features (project_id, feature) VALUES
(1, 'Ajouter / modifier / supprimer des livres'),
(1, 'Recherche et filtres dynamiques'),
(1, 'Affichage détaillé des livres'),
(1, 'API REST pour la gestion des données'),
(1, 'Interface responsive');

-- portfolio (id=2)
INSERT INTO project_features (project_id, feature) VALUES
(2, 'Présentation des compétences techniques'),
(2, 'Cartes projets avec technologies utilisées'),
(2, 'Pages détails dynamiques pour chaque projet'),
(2, 'Navigation fluide avec header sticky'),
(2, 'Design responsive mobile / tablette / desktop');

-- Insérer les sections par projet (JSONB avec $$...$$)
-- site-auteur (id=1)
INSERT INTO project_sections (project_id, title, content) VALUES
(1, 'Présentation', $$"Site-Auteur est une application web full stack permettant de gérer et consulter une collection de livres. Le projet a été conçu pour mettre en pratique la création d'une application complète avec un front moderne et une API backend connectée à une base de données relationnelle."$$::jsonb),
(1, 'Fonctionnalités principales', $$["Ajout, modification et suppression de livres","Affichage dynamique de la liste des livres","Recherche et filtrage des livres","Affichage détaillé des informations d’un livre","Interface utilisateur responsive"]$$::jsonb),
(1, 'Architecture & Stack technique', $$"Le front-end est développé avec SvelteKit et TypeScript afin de créer une interface réactive et maintenable. Le backend repose sur Node.js et Express pour exposer une API REST. Les données sont stockées dans une base PostgreSQL et manipulées via l’ORM Sequelize."$$::jsonb),
(1, 'Points forts & apprentissages', $$"Ce projet m'a permis de mettre en pratique la conception d'une architecture full stack complète : création d'une API REST, gestion des requêtes vers une base de données relationnelle et communication fluide entre le frontend et le backend."$$::jsonb);

-- portfolio (id=2)
INSERT INTO project_sections (project_id, title, content) VALUES
(2, 'Présentation', $$"Ce projet correspond à mon portfolio personnel. Il a été conçu pour présenter mes compétences en développement web ainsi que les différents projets que j'ai réalisés. L'objectif était de créer un site simple, moderne et facile à parcourir."$$::jsonb),
(2, 'Fonctionnalités principales', $$["Présentation du profil développeur","Section compétences avec icônes technologiques","Cartes projets avec accès aux pages détails","Section contact avec liens GitHub, LinkedIn et email"]$$::jsonb),
(2, 'Architecture & Stack technique', $$"Le site est développé avec SvelteKit et TypeScript afin d'obtenir une structure claire et maintenable. Le design est réalisé avec TailwindCSS pour créer une interface moderne et responsive."$$::jsonb),
(2, 'Objectif du projet', $$"Ce portfolio me permet de centraliser mes projets et de montrer mon approche du développement web : structure claire, design sobre et expérience utilisateur fluide."$$::jsonb);