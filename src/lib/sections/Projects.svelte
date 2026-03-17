<script lang="ts">
	import type { Project } from "$lib/types/projects";
    export let projects : Project[];
</script>

<section id="projects" class="py-20 px-6 sm:px-8 lg:px-0 max-w-6xl mx-auto">
    <h2 class="text-4xl font-bold mb-16 text-gray-900 text-center">
        Projets
    </h2>

    <div class="grid md:grid-cols-2 gap-12">
        {#each projects as project, i (i)}
            <div 
                class="flex flex-col justify-between
                bg-white border-l-2 border-b-2 border-green-500
                shadow-md rounded-xl p-8 hover:shadow-xl transition duration-300"
            >               
                <h3 class="text-2xl font-semibold mb-3 text-gray-900">{project.name}</h3>

                <p class="text-gray-700 mb-4 leading-relaxed">{project.description}</p>

                <!-- Tech badges -->
                <div class="flex flex-wrap gap-2 mb-6 self-center md:self-start">
                    {#each project.tech as t, i (i)}
                        <span class="bg-green-500 text-white font-medium px-3 py-1 rounded-full text-sm">
                            {t}
                        </span>
                    {/each}
                </div>

                <div class="flex flex-col sm:flex-row items-center self-center gap-4">
                    <a 
                        href={`/projects/${project.slug}`}
                        class="border border-green-500 text-white bg-green-500 px-4 py-1 rounded hover:bg-white hover:text-green-500 transition-all duration-300"   
                    >
                        Détails
                    </a>
                    <a
                        href={project.github}
                        target="_blank"
                        class="text-green-600 font-semibold hover:underline hover:underline-offset-4"
                    >
                        Voir le code
                    </a>
                </div>
            </div>
        {/each}
    </div>
</section>