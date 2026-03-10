<!-- <script lang="ts">
    export let projects = [
        {
            name: "Site-Auteur",
            description:"Application full stack de gestion et affichage de livres avec SPA front et base PostgreSQL.",
            tech: ["SvelteKit", "TypeScript", "PostgreSQL", "NodeJs", "Express", "Sequelize"],
            github: "https://github.com/CedricCampagne/site-auteur"
        },
        {
            name: "Portfolio V2",
            description:"Portfolio personnel moderne construit avec SvelteKit et Tailwind.",
            tech: ["SvelteKit", "TailwindCSS", "TypeScript"],
            github: "https://github.com/CedricCampagne/portfolio"
        }
    ];
</script>

<section class="py-20 px-6 sm:px-8 lg:px-0 max-w-6xl mx-auto">
    <h2 class="text-4xl font-bold mb-16 text-gray-900 text-center">
        Projets
    </h2>
    <div class="grid md:grid-cols-2 gap-12">
        {#each projects as project, i (i)}
        <div class="flex flex-col justify-between bg-white border-l-4 border border-green-500 shadow-md rounded-xl p-8 hover:shadow-xl transition duration-300">
            <h3 class="text-2xl font-semibold mb-3 text-gray-900">
                {project.name}
            </h3>

            <p class="text-gray-700 mb-4 leading-relaxed">
                {project.description}
            </p>

            <p class="text-sm text-green-600 font-medium mb-6">
                {project.tech.join(" • ")}
            </p>

            <div class="flex items-center gap-4">
            <a
                href={project.github}
                target="_blank"
                class="text-green-600 font-semibold hover:underline"
            >
                Voir le code
            </a>
            <a 
                href="#"
                class="border border-green-500 text-white bg-green-500 px-4 py-2 rounded hover:bg-white hover:text-green-500 transition"
            >
                Détails
            </a>
            </div>
        </div>
        {/each}
    </div>
</section> -->


<script lang="ts">
    export let projects = [
        {
            name: "Site-Auteur",
            description: "Application full stack de gestion et affichage de livres avec SPA front et base PostgreSQL.",
            tech: ["SvelteKit", "TypeScript", "PostgreSQL", "NodeJs", "Express", "Sequelize"],
            github: "https://github.com/CedricCampagne/site-auteur"
        },
        {
            name: "Portfolio",
            description: "Portfolio personnel moderne construit avec SvelteKit et Tailwind.",
            tech: ["SvelteKit", "TailwindCSS", "TypeScript"],
            github: "https://github.com/CedricCampagne/portfolio"
        }
    ];
</script>

<section class="py-20 px-6 sm:px-8 lg:px-0 max-w-6xl mx-auto">
    <h2 class="text-4xl font-bold mb-16 text-gray-900 text-center">
        Projets
    </h2>

    <div class="grid md:grid-cols-2 gap-12">
        {#each projects as project, i (i)}
            <div class="flex flex-col justify-between bg-white border-l-4 border-b-2 border-green-500 shadow-md rounded-xl p-8 hover:shadow-xl transition duration-300">
                
                <h3 class="text-2xl font-semibold mb-3 text-gray-900">{project.name}</h3>

                <p class="text-gray-700 mb-4 leading-relaxed">{project.description}</p>

                <!-- Tech badges -->
                <div class="flex flex-wrap gap-2 mb-6">
                    {#each project.tech as t, i (i)}
                        <span class="bg-green-500 text-white font-medium px-3 py-1 rounded-full text-sm">
                            {t}
                        </span>
                    {/each}
                </div>

                <div class="flex items-center gap-4">
                    <a
                        href={project.github}
                        target="_blank"
                        class="text-green-600 font-semibold hover:underline"
                    >
                        Voir le code
                    </a>
                    <a 
                        href="#"
                        class="border border-green-500 text-white bg-green-500 px-4 py-1 rounded hover:bg-white hover:text-green-500 transition"
                    >
                        Détails
                    </a>
                </div>
            </div>
        {/each}
    </div>
</section>