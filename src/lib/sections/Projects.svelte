<script lang="ts">
  export let projects = [
    {
      name: "Site-Auteur",
      description: "Gestion de livres avec affichage dynamique et modales, SvelteKit + PostgreSQL",
      tech: "SvelteKit | TypeScript | PostgreSQL",
      github: "https://github.com/CedricCampagne/site-auteur"
    },
    {
      name: "Portfolio V2",
      description: "Portfolio interactif moderne avec layout sobre et espacé",
      tech: "SvelteKit | TailwindCSS | TypeScript",
      github: "https://github.com/CedricCampagne/portfolio"
    }
  ];
</script>

<section class="py-20 px-8 max-w-5xl mx-auto">
  <h2 class="text-4xl font-bold mb-12 text-gray-900 text-center">Projets</h2>
  <div class="grid md:grid-cols-2 gap-10">
    {#each projects as project, i (i)}
      <div class="bg-white border-l-4 border-green-500 shadow-lg rounded-lg p-8 hover:shadow-2xl transition">
        <h3 class="text-2xl font-semibold mb-3 text-gray-900">{project.name}</h3>
        <p class="text-gray-700 mb-3 leading-relaxed">{project.description}</p>
        <p class="text-sm text-green-500 mb-4">{project.tech}</p>
        <a href={project.github} target="_blank" class="text-green-500 font-semibold hover:underline">
          Voir le code
        </a>
      </div>
    {/each}
  </div>
</section>