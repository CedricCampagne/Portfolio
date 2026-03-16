<script lang="ts">
    import Icon from "@iconify/svelte";
</script>
<footer class="border-t border-green-400 py-8 mt-20">
    <div class="max-w-6xl mx-auto px-6 flex flex-col md:flex-row items-center justify-between gap-4">
        <p class="text-gray-600 text-sm text-center sm:text-left wrap-break-word">
            © {new Date().getFullYear()} Cedric Campagne - Built with SvelteKit & Tailwind
        </p>
        <div class="flex items-center gap-6 text-sm">
            <a 
                href="https://github.com/CedricCampagne"
                target="_blank"
                class="flex text-gray-600 hover:text-green-600 hover:underline hover:underline-offset-2 transition-all duration-500"
            >
                <Icon icon="mdi:github" class="text-green-600 w-5 h-5"/>
                GitHub
            </a>
            <a 
                href="https://www.linkedin.com/in/c%C3%A9driccampagne/"
                target="_blank"
                class="flex text-gray-600 hover:text-green-600 hover:underline hover:underline-offset-2 transition-all duration-500"
            >
                <Icon icon="mdi:linkedin" class="text-green-600 w-5 h-5"/>
                LinkedIn
            </a>
            <a 
                href="mailto:ced.campagne@gmail.com"
                class="flex text-gray-600 hover:text-green-600 hover:underline hover:underline-offset-2 transition-all duration-500"
            >
                <Icon icon="mdi:email-outline" class="text-green-600 w-5 h-5"/>
                Email
            </a>
        </div>
    </div>
</footer>