<script lang="ts">
  const links = [
    { name: "Compétences", href: "#skills" },
    { name: "Projets", href: "#projects" },
    { name: "À propos", href: "#about" },
    { name: "Contact", href: "#contact" }
  ];
</script>

<header class="flex justify-between items-center p-6 bg-white shadow-md sticky top-0 z-50 border-b-2 border-green-600">
  <h1 class="text-xl font-bold text-gray-900">Cedric Campagne</h1>
  <nav class="space-x-6">
    {#each links as link, i (i)}
      <a href={link.href} class="text-gray-700 hover:text-green-500">{link.name}</a>
    {/each}
  </nav>
</header>