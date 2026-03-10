<script lang="ts">
	import Hero from "$lib/sections/Hero.svelte";
	import About from "$lib/sections/About.svelte";
	import Skills from "$lib/sections/Skills.svelte";
	import Projects from "$lib/sections/Projects.svelte";
	import Header from "$lib/sections/Header.svelte";

	const projectsData = [
		{
		name: "Site-Auteur",
		description: "Gestion de livres avec affichage dynamique et modales, SvelteKit + PostgreSQL",
		tech: "SvelteKit | TypeScript | PostgreSQL",
		github: "https://github.com/CedricCampagne/site-auteur"
		},
		{
		name: "Portfolio",
		description: "Ce portfolio interactif avec layout moderne et données dynamiques",
		tech: "SvelteKit | TailwindCSS | TypeScript",
		github: "https://github.com/CedricCampagne/portfolio"
		}
	];
</script>

<main>
	<Header />
	<Hero />
	<About />
	<Skills />
	<Projects {projectsData} />
</main>