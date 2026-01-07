import { base } from '$app/paths';

export const projects = [
  {
    title: "Blablabook",
    description: "Ce projet est une Single Page Application de gestion de bibliothèque avec suggestions de lecture. Développé en équipe dans le cadre de la fin de formation DWWM, il propose une interface moderne et réactive avec SvelteKit, connectée à un back‑end Node.js/Express  et PostgreSQL. La sécurité est assurée par un système d’authentification JWT et des middlewares dédiés à la gestion des rôles administrateur. Ce projet illustre la mise en place d’une application complète, combinant gestion des données, contrôle d’accès et travail collaboratif.",
    image: `${base}/images/blablabook-3.webp`,
    techs: ["SvelteKit", "Docker", "Node.js", "Express", "Postgres", "Sequelize"],
    // siteUrl: "https://blablabook-cli.onrender.com/",
    codeUrl: "https://github.com/CedricCampagne/Blablabook"
  },
  {
    title: "CedricBot",
    description: "CedricBot est une reproduction d’une interface de chat avec intelligence artificielle. Développé en Svelte dans le cadre du projet de fin de bloc front de ma formation DWWM, il exploite l’API externe de Mistral pour générer les réponses. PocketBase est utilisé pour stocker l’historique des messages et des conversations, assurant une gestion simple et efficace des données. Ce projet illustre la création d’une application moderne combinant front dynamique, API externe et persistance des échanges.",
    image: `${base}/images/cedric-bot-3.png`,
    techs: ["HTLM", "TailwindCss", "JavaScript", "Svelte", "PocketBase"],
    siteUrl: "",
    codeUrl: "https://github.com/CedricCampagne/CedricBot"
  },
  {
    title: "CoffeeStore",
    description: "CoffeeStore est un projet de reproduction d’un site vitrine pour une boutique de café. Développé avec Node.js  et Express, il s’appuie sur PostgreSQL pour la gestion des données. Les vues sont rendues avec EJS, offrant une interface simple et dynamique. Ce projet illustre la mise en place d’une architecture web complète, côté serveur comme côté base de données.",
    image: `${base}/images/coffee-store-2.png`,
    techs: ["HTML", "CSS", "Node.js", "Express", "PostgreSQL", "EJS"],
    siteUrl: "",
    codeUrl: "https://github.com/CedricCampagne/CoffeeStore"
  },
  {
    title: "CV-interactif",
    description: "CV interactif développé en JavaScript vanilla, destiné à être intégré à mon futur portfolio. Ce projet met en avant l’utilisation d’une stack légère et démontre ma maîtrise du JavaScript pur, notamment à travers la manipulation du DOM et l’usage de classList.toggle pour créer des interactions dynamiques.",
    image: `${base}/images/cv-interactif.png`,
    techs: ["HTLM", "TailwindCss", "JavaScript"],
    siteUrl: "https://cedriccampagne.github.io/CV-interactif-V2/",
    codeUrl: "https://github.com/CedricCampagne/CV-interactif-V2"
  }  
];