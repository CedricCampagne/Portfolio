<script lang="ts">
  import Icon from '@iconify/svelte';

  const skills = [
    { name: "TypeScript", icon: "logos:typescript-icon" },
    { name: "SvelteKit", icon: "material-icon-theme:svelte" },
    { name: "PostgreSQL", icon: "logos:postgresql" },
    { name: "Git / GitHub", icon: "logos:github-icon" }
  ];
</script>

<section class="py-20 px-8 max-w-5xl mx-auto">
  <h2 class="text-4xl font-bold mb-12 text-gray-900 text-center">Compétences Techniques</h2>
  <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-4 gap-10">
    {#each skills as skill, i (i)}
      <div class="bg-white border-b-4 border-green-500 shadow-lg rounded-lg p-6 flex flex-col items-center hover:shadow-2xl transition">
        <Icon icon={skill.icon} class="text-green-500 w-12 h-12 mb-4" />
        <p class="font-semibold text-gray-900">{skill.name}</p>
      </div>
    {/each}
  </div>
</section>