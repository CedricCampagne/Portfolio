<script>
    export let category;
    export let title;
    export let icon;
    export let description;
</script>


<div class="bg-slate-600 rounded-lg shadow p-6 flex flex-col items-center text-center sm:hover:scale-105 transition">
	<iconify-icon icon="{ icon }" class="text-5xl"></iconify-icon>
	<h3 class="mt-4 font-bold text-xl text-white">{ title }</h3>
	<p class="text-slate-300 text-sm mt-2">{ description }</p>
</div>