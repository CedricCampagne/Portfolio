<script lang="ts">
    import "../routes/layout.css"; // Tailwind global
    import favicon from '$lib/assets/favicon.svg';
    import Header from "$lib/sections/Header.svelte";
    import Footer from "$lib/sections/Footer.svelte";
</script>

<svelte:head>
    <title>Cédric Campagne – Développeur Web Junior</title>
    <meta name="description" content="Portfolio de Cédric Campagne, développeur web junior spécialisé en TypeScript, SvelteKit et PostgreSQL.">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href={favicon} />
</svelte:head>

<Header />
<main>
    <slot />
</main>
<Footer />