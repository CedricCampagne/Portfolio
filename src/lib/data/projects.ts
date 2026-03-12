export const projects = [
    {
        slug: "site-auteur",
        name: "Site-Auteur",
        image: "/images/site-auteur.png",
        description: "Application full stack permettant de gérer et consulter une bibliothèque de livres avec une SPA moderne et une API Node.js connectée à PostgreSQL.",

        tech: [
            "SvelteKit",
            "TypeScript",
            "PostgreSQL",
            "Node.js",
            "Express",
            "Sequelize"
        ],

        features: [
            "Ajouter / modifier / supprimer des livres",
            "Recherche et filtres dynamiques",
            "Affichage détaillé des livres",
            "API REST pour la gestion des données",
            "Interface responsive"
        ],

        sections: [
            {
            title: "Présentation",
            content:
                "Site-Auteur est une application web full stack permettant de gérer et consulter une collection de livres. Le projet a été conçu pour mettre en pratique la création d'une application complète avec un front moderne et une API backend connectée à une base de données relationnelle."
            },
            {
            title: "Fonctionnalités principales",
            content: [
                "Ajout, modification et suppression de livres",
                "Affichage dynamique de la liste des livres",
                "Recherche et filtrage des livres",
                "Affichage détaillé des informations d’un livre",
                "Interface utilisateur responsive"
            ]
            },
            {
            title: "Architecture & Stack technique",
            content:
                "Le front-end est développé avec SvelteKit et TypeScript afin de créer une interface réactive et maintenable. Le backend repose sur Node.js et Express pour exposer une API REST. Les données sont stockées dans une base PostgreSQL et manipulées via l’ORM Sequelize."
            },
            {
            title: "Points forts & apprentissages", 
            content:
                "Ce projet m'a permis de mettre en pratique la conception d'une architecture full stack complète : création d'une API REST, gestion des requêtes vers une base de données relationnelle et communication fluide entre le frontend et le backend."
            }
        ],

        github: "https://github.com/CedricCampagne/site-auteur",
    },
    {
        slug: "portfolio",
        name: "Portfolio",
        image: "/images/portfolio.png",
        description: "Portfolio personnel moderne développé avec SvelteKit et TailwindCSS pour présenter mes projets et compétences.",

        tech: [
            "SvelteKit",
            "TypeScript",
            "TailwindCSS"
        ],

        features: [
            "Présentation des compétences techniques",
            "Cartes projets avec technologies utilisées",
            "Pages détails dynamiques pour chaque projet",
            "Navigation fluide avec header sticky",
            "Design responsive mobile / tablette / desktop"
        ],

        sections: [
            {
            title: "Présentation",
            content:
                "Ce projet correspond à mon portfolio personnel. Il a été conçu pour présenter mes compétences en développement web ainsi que les différents projets que j'ai réalisés. L'objectif était de créer un site simple, moderne et facile à parcourir."
            },
            {
            title: "Fonctionnalités principales",
            content: [
                "Présentation du profil développeur",
                "Section compétences avec icônes technologiques",
                "Cartes projets avec accès aux pages détails",
                "Section contact avec liens GitHub, LinkedIn et email"
            ]
            },
            {
            title: "Architecture & Stack technique",
            content:
                "Le site est développé avec SvelteKit et TypeScript afin d'obtenir une structure claire et maintenable. Le design est réalisé avec TailwindCSS pour créer une interface moderne et responsive."
            },
            {
            title: "Objectif du projet",
            content:
                "Ce portfolio me permet de centraliser mes projets et de montrer mon approche du développement web : structure claire, design sobre et expérience utilisateur fluide."
            }
        ],
        github: "https://github.com/CedricCampagne/portfolio",
        demo: "https://github.com/CedricCampagne/portfolio"
    },
    
];