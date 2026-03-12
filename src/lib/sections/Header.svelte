<script lang="ts">
    import Icon from "@iconify/svelte";

    let open = false;

    const links = [
        { name: "À propos", href: "/#about" },
        { name: "Compétences", href: "/#skills" },
        { name: "Projets", href: "/#projects" },
        { name: "Contact", href: "/#contact" }
    ];
</script>

<header class="sticky top-0 z-50 bg-white border-b border-gray-200 shadow-sm">
    <div class="max-w-6xl mx-auto px-6 py-4 flex items-center justify-between">
        <a 
            href="#"
            class="font-bold text-lg text-gray-900"
        >
            Cedric Campagne
        </a>
        <!-- Desktop -->
        <nav class="hidden md:flex items-center gap-8 text-sm">
            {#each links as link, i (i)}
                <a
                    href={link.href}
                    class="text-gray-600 hover:text-green-600 transition"
                >
                    {link.name}
                </a>
            {/each}
            <a
                href="https://github.com/CedricCampagne"
                target="_blank"
                class="border border-green-500 text-green-500 px-3 py-1 rounded hover:bg-green-500 hover:text-white transition"
            >
                GitHub
            </a>
            </nav>
            <!-- Burger -->
            <button
                class="md:hidden text-green-600 cursor-pointer"
                on:click={() => open = !open}
            >
                {#if !open}
                    <Icon icon="solar:hamburger-menu-bold" class="text-green-600 w-8 h-8"/>
                {:else}
                   <Icon icon="fontisto:close" class="text-green-600 w-8 h-8"/>       
                {/if}
            </button>
    </div>
    <!-- Mobile -->
    {#if open}
        <div class="md:hidden px-6 py-6 flex flex-col items-center gap-4 border-t border-b border-green-500 transition-all duration-300">
            {#each links as link, i (i)}
                <a 
                    href={link.href}
                    class="text-gray-700 hover:text-green-600 text-lg py-1"
                    on:click={() => open = false}
                >
                    {link.name}
                </a>
            {/each}
            <a
                href="https://github.com/CedricCampagne"
                target="_blank"
                class="text-green-600 font-semibold"
                on:click={() => open = false}
            >
                GitHub
            </a>
        </div>
    {/if}
</header>