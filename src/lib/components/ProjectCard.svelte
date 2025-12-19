<script>
    export let title;
    export let description;
    export let image;
    export let techs = [];
    export let siteUrl;
    export let codeUrl;
</script>

<article class="flex flex-col h-[500px] md:flex-row overflow-hidden bg-slate-600 text-slate-200 shadow-2xl/80 rounded-xl border-t-2">
    <!-- Zone image-->
    <div class="hidden md:block md:h-full md:w-1/3 bg-slate-700">
        <img src="{image}" alt="Photo" class="w-full h-full md:object-contain border-r-2 p-2">
    </div>
    <!-- Zone texte-->
    <div class="w-full md:w-2/3 flex flex-col justify-between">
        <div class="flex flex-col gap-3 p-4 text-justify">
            <h3 class="text-xl">Titre du projet : 
                <span class="font-bold">{title}</span>
            </h3>
            <p class="text-sm">{description}</p>
            <div class="mt-2 flex flex-wrap">
                {#each techs as tech}
                    <span class="bg-slate-700 px-2 py-1 rounded text-sm m-1">{tech}</span>
                {/each}
            </div>
        </div>
        <!-- Tags -->
        <div class="p-2 flex gap-5 justify-center">
            {#if siteUrl}
                <a href={siteUrl} target="_blank"
                   class="border-2 p-2 rounded-3xl hover:bg-slate-700 hover:-translate-y-2 duration-300">
                    Accès au Site
                </a>
            {/if}
            {#if codeUrl}
                <a href={codeUrl} target="_blank"
                   class="border-2 p-2 rounded-3xl hover:bg-slate-700 hover:-translate-y-2 duration-300">
                    Accès au Code
                </a>
            {/if}
        </div>
    </div>
</article>







