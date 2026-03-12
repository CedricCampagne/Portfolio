<script lang="ts">
    import { page } from "$app/stores";
    import { projects } from "$lib/data/projects";
    import Icon from "@iconify/svelte";

    $: slug = $page.params.slug;
    $: project = projects.find(p => p.slug === slug);
</script>

{#if project}
    <section class="text-left max-w-5xl mx-auto px-6 sm:px-8 lg:px-0 py-20">
        <h1 class="text-4xl md:text-5xl font-bold text-gray-900 mb-16 text-center">
            {project.name}
        </h1>
        <div class="mb-16 flex justify-center">
            <div class="w-full max-w-4xl aspect-video overflow-hidden rounded-xl shadow-lg border border-gray-200">
                <img
                    src={project.image}
                    alt={project.name}
                    class="w-full h-full object-cover"
                />
            </div>
        </div>
      
        <!-- Sections dynamiques -->
        {#each project.sections as section, i (i)}
            <div class="prose max-w-4xl mx-auto py-4 mb-10 text-gray-700 border-t border-gray-200 pt-16">
                <h2
                    class="text-2xl font-semibold mb-4 border-l-4 border-green-500 pl-6
                    flex items-center gap-3 justify-start"
                >
                    {section.title}
                </h2>

                {#if Array.isArray(section.content)}
                    <ul class="space-y-2 text-center md:text-left">
                        {#each section.content as item, i (i)}
                            <li class="flex justify-start gap-3 pl-6">
                                <Icon
                                    icon="lets-icons:check-fill"
                                    class="text-green-600 w-5 h-5 mt-1 shrink-0"
                                />
                                <span class="inline-block text-left max-w-[20rem] md:max-w-none">
                                    {item}
                                </span>
                            </li>
                        {/each}
                    </ul>
                {:else}
                    <p class="pl-6">
                        {section.content}
                    </p>
                {/if}
            </div>
        {/each}
        <div class="text-center md:text-left my-20 prose max-w-4xl mx-auto pl-6">
            <h2 class="text-2xl font-semibold text-gray-900 mb-6">
                Technologies
            </h2>
            <div class="flex flex-wrap justify-center md:justify-start gap-2 max-w-4xl mx-auto">
                {#each project.tech as tech, i (i)}
                    <span
                        class=" text-white border px-3 py-1 rounded-full text-sm font-medium
                        bg-green-500 hover:bg-white hover:text-green-500 transition-all duration-300
                        cursor-pointer"
                    >
                        {tech}
                    </span>
                {/each}
            </div>
        </div>
        <div class="flex flex-col items-center gap-6 pt-6">
            <div class="flex flex-col gap-6 md:flex-row">
            {#if project.demo}
            <a
                href={project.demo}
                target="_blank"
                class="border border-green-500 text-white bg-green-500 px-5 py-2 rounded hover:bg-white hover:text-green-500 transition"
            >
                Voir le site
            </a>
            {/if}
                <a
                    href={project.github}
                    target="_blank"
                    class="border border-green-500 text-white bg-green-500 px-5 py-2 rounded hover:bg-white hover:text-green-500 transition"
                >
                    Voir le code
                </a>
            </div>
            <a
                href="/#projects"
                class="text-gray-600 font-semibold hover:underline-offset-6 hover:underline"
            >
                ← Retour aux projets
            </a>
        </div>
    </section>
{:else}
    <p class="text-center py-20">
        Projet introuvable
    </p>
{/if}