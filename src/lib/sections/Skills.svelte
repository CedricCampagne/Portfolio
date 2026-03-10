<script lang="ts">
    import Icon from '@iconify/svelte';

    const skills = [
        { name: "JavaScript", icon: "logos:javascript", category: "Frontend" },
        { name: "TypeScript", icon: "logos:typescript-icon", category: "Frontend" },
        { name: "SvelteKit", icon: "logos:svelte-icon", category: "Frontend" },
        { name: "TailwindCSS", icon: "logos:tailwindcss-icon", category: "Frontend" },
        { name: "Node.js", icon: "logos:nodejs-icon", category: "Backend" },
        { name: "Express", icon: "logos:express", category: "Backend" },
        { name: "PostgreSQL", icon: "logos:postgresql", category: "Backend" },
        { name: "Git / GitHub", icon: "logos:github-icon", category: "Outils" },
        { name: "Docker", icon: "logos:docker-icon", category: "Outils" }
    ];

    const categories = ["Frontend", "Backend", "Outils"];
</script>

<section class="py-20 px-6 sm:px-8 lg:px-0 max-w-6xl mx-auto">
    <!-- Titre général -->
    <h2 class="text-4xl font-bold mb-16 text-gray-900 text-center">Compétences Techniques</h2>

    {#each categories as cat, i (i)}
        <!-- Titre catégorie -->
        <h3 class="text-2xl font-bold text-gray-800 mb-8 mt-12 text-center sm:text-center md:text-center">
        {cat}
        </h3>

        <!-- Grille de cartes centrée -->
        <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-10 justify-items-center">
        {#each skills.filter(s => s.category === cat) as skill, i (i)}
            <div class=
                "bg-white border-b-4 border-green-500 shadow-lg 
                rounded-xl p-6 flex flex-col items-center hover:shadow-2xl 
                transition-all duration-300 ease-in-out w-52"
            >
                <Icon 
                    icon={skill.icon}
                    class="text-green-500 w-14 h-14 mb-4"
                />
                <p class="font-semibold text-gray-900 text-center">
                    {skill.name}
                </p>
            </div>
        {/each}
        </div>
    {/each}
</section>