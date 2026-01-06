<script>
    let navOpen = false;
</script>

<header class="text-xl mx-auto mt-4">
  <div class="flex justify-between items-center bg-slate-500 p-4 rounded-2xl">
    <button aria-label="burger-menu"
      class="sm:hidden text-white focus:outline-none"
      on:click={() => navOpen = !navOpen}
    ><iconify-icon icon="iconamoon:menu-burger-horizontal-bold"  
        class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
        </iconify-icon>
    </button>

    <!-- Menu desktop -->
    <ul class="hidden sm:flex gap-8 text-white p-1">
      <!-- <li class="hover:underline hover:underline-offset-4 hover:scale-105"><a href="/">Accueil</a></li> -->
      <li class="hover:underline hover:underline-offset-4 hover:scale-105"><a href="#about">A propos</a></li>
      <li class="hover:underline hover:underline-offset-4 hover:scale-105"><a href="#skill">Compétences</a></li>
      <li class="hover:underline hover:underline-offset-4 hover:scale-105"><a href="#projects">Projets</a></li>
      <li class="hover:underline hover:underline-offset-4 hover:scale-105"><a href="#contact">Contacts</a></li>
    </ul>
  </div>

  <!-- Menu mobile (affiché si menuOpen = true) -->
  {#if navOpen}
    <ul class="flex flex-col gap-4 bg-slate-600 p-4 mt-2 rounded-xl text-white sm:hidden">
      <li class="hover:underline hover:underline-offset-4 hover:scale-105"><a href="/">Accueil</a></li>
      <li class="hover:underline hover:underline-offset-4 hover:scale-105"><a href="#about">A propos</a></li>
      <li class="hover:underline hover:underline-offset-4 hover:scale-105"><a href="#skill">Compétences</a></li>
      <li class="hover:underline hover:underline-offset-4 hover:scale-105"><a href="#projets">Projets</a></li>
      <li class="hover:underline hover:underline-offset-4 hover:scale-105"><a href="#contact">Contacts</a></li>
    </ul>
  {/if}
</header>



















<!-- <header class="text-xl mx-auto mt-8">

    <ul class="flex justify-center m-auto gap-8 bg-slate-500 p-4 rounded-2xl">
        <li class="hover:underline hover:underline-offset-4 hover:scale-110"><a href="/">Accueil</a></li>
        <li class="hover:underline hover:underline-offset-4 hover:scale-110"><a href="/">A propos</a></li>
        <li class="hover:underline hover:underline-offset-4 hover:scale-110"><a href="">Compétences</a></li>
        <li class="hover:underline hover:underline-offset-4 hover:scale-110"><a href="">Projets</a></li>
        <li class="hover:underline hover:underline-offset-4 hover:scale-110"><a href="">Contacts</a></li>
    </ul>
</header> -->