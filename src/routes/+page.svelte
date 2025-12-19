<script>
	import { projects } from "$lib/data/projects.js";
	import ProjectCard from "../lib/components/ProjectCard.svelte"
	import { skills } from "$lib/data/skill";
	import SkillCard from "$lib/components/SkillCard.svelte";

	import { onMount } from "svelte";

	let showButton = false;
	let success = false;
  	let error = false;

	onMount(()=>{
		const handleScroll = ()=>{
			showButton = window.scrollY > 200;
		};
		window.addEventListener("scroll", handleScroll);
		return () => {window.removeEventListener("scroll", handleScroll)};
	})

	function scrollToTop(){
			window.scrollTo({top:0, behavior: "smooth"});
	}
	
	async function handleSubmit(e){
		e.preventDefault();
		const form = e.target;
		const data = new FormData(form);
		console.log('form submit', form);
		for (const [key, value] of data.entries()) {
  			console.log(key, value);
		}

		try {
			const response = await fetch(form.action,{
				method: form.method,
				body: data,
				headers : {'Accept': 'application/json'}
			})

			if (response.ok){
				success = true;
				error = false;
				form.reset();
				console.log('Reset done');
			} else {
				success = false;
        		error = true;
			}
		} catch (err) {
			success = false;
      		error = true;
		}
	}

</script>

<section class="w-fit mx-auto md:hidden">
	<a href="https://github.com/CedricCampagne" target="_blank"><iconify-icon icon="mdi:github" class=" text-4xl text-slate-300 hover:text-white"></iconify-icon></a>
    <a href="https://www.linkedin.com/in/cédriccampagne" target="_blank"><iconify-icon icon="mdi:linkedin" class=" text-4xl text-slate-300 hover:text-white"></iconify-icon></a>
</section>

{#if showButton}
<button on:click={scrollToTop} class="text-3xl fixed bottom-8 right-2 cursor-pointer rounded-3xl ring-2 p-2" aria-label="button-scroll-top">
	<iconify-icon icon="bxs:up-arrow" ></iconify-icon>
</button>
{/if}

<!-- Accueil -->
<section class="flex flex-col sm:flex sm:flex-row sm:justify-around sm:p-8 shadow-xl sm:border-t-2 h-[70vh] mb-10">
	<div class=" flex flex-col justify-center items-center  p-2 md:justify-around xl:flex xl:flex-col xl:flex-1 xl:justify-between xl:items-center">
		<img src="src\lib\assets\images\cv_photo.jpeg" alt="Photo de profile"
		class="w-56 h-56 mx-auto rounded-full border-4 border-slate-300 shadow-lg object-cover hidden xl:block">
		<h1 class="text-4xl font-bold">Cédric Campagne</h1>
		<h2 class="text-xl text-slate-400">Développeur Web Full Stack</h2>
	</div>
	<div class="flex flex-col flex-1 justify-around gap-4 mt-6 sm:border-l-2 pl-3">
		<h2 class="font-bold text-xl md:block hidden md:text-4xl "> Moi en quelques mots :</h2>
	  	<p class="mx-auto text-slate-400 text-md md:text-xl">
			Ancien directeur de restaurant, aujourd’hui développeur web full stack junior.
			Je conçois des applications modernes et performantes, en m’appuyant sur des compétences fortes en leadership, organisation et travail d’équipe.
	  	</p>
	  	<div class="hidden md:flex flex-row lg:flex lg:flex-col gap-3 ">
			<a href="https://github.com/CedricCampagne" target="_blank" class="max-w-[150px] px-4 py-2 bg-slate-500 rounded hover:bg-blue-500 text-center">Mon GitHub</a>
			<a href="https://www.linkedin.com/in/cédriccampagne" target="_blank" class="max-w-[150px] px-4 py-2 bg-slate-500 rounded hover:bg-blue-500 text-center">Mon Linkedin</a>
	  	</div>
  </div>
</section>
<!-- A propos -->
<section id="about" class="flex flex-col sm:flex sm:justify-evenly sm:gap-8 sm:p-8 shadow-xl sm:border-t-2 h-[70vh]">
	<div>
		<h2 class="font-bold text-xl md:block hidden md:text-6xl pb-3 ">Mon parcours :</h2>
		<h3 class="font-bold text-xl md:block md:text-4xl ">De la gestion d’équipe au développement web</h3>
	</div>
    <p class=" md:text-2xl text-justify">Ancien directeur de restaurant chez McDonald’s, j’ai choisi de donner un nouvel élan à ma carrière en me reconvertissant vers le développement web.
        Fort de plusieurs années d’expérience en management et en organisation, où j’ai encadré plus de 50 collaborateurs,
        j’apporte aujourd’hui des compétences humaines solides : leadership, communication, gestion du stress et travail en équipe.
        Diplômé de la formation Développeur Web et Web Mobile (DWWM),
        je me positionne comme développeur web full stack junior, capable de concevoir des applications modernes, accessibles et performantes.
        Mon objectif est de mettre à profit cette double expertise — technique et humaine — pour contribuer à des projets ambitieux et collaboratifs.
    </p>
</section>
<!-- Compétences -->
 <section id="skill" class="flex flex-col sm:flex sm:justify-evenly sm:gap-8 sm:p-8 shadow-xl sm:border-t-2">
	<h2 class="text-6xl mb-8">Mes Compétences : </h2>
	<h3 class="text-center text-2xl mb-2">Front-End</h3>
	<div>
		<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mb-4">
			{#each skills.filter(s=>s.category === "Front-End") as skill}
				<SkillCard {...skill}/>
			{/each}
		</div>
	</div>
	<h3 class="text-center text-2xl mb-4 mt-16">Back-End</h3>
	<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mb-4">
		{#each skills.filter(s=>s.category === "Back-End") as skill}
				<SkillCard {...skill}/>
		{/each}
	</div>
	<!-- Outils & Autres -->
  <h3 class="text-center text-2xl mb-4 mt-16">Outils & Autres Compétences</h3>
  <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mb-4">
    {#each skills.filter(s => s.category === "Outils") as skill}
      <SkillCard {...skill}/>
    {/each}
  </div>
 </section>
<!-- Projects -->
<section id="projects" class="flex flex-col sm:flex sm:justify-evenly sm:gap-8 sm:p-8 shadow-xl sm:border-t-2 min-h-[70vh] overflow-y-hidden">
    <h2 class="text-6xl mb-8">Mes projets : </h2>
    <div class="grid grid-cols-1  xl:grid-cols-2 xl:grid-rows-2 gap-6">
        {#each projects as project}
            <ProjectCard { ...project}/>
        {/each}    
    </div>
</section>
<!-- Formulaire -->
 <section id="contact" class="shadow-xl p-8 my-6 sm:border-t-2 lg:mx-auto lg:w-1/2">
	<h2 class="text-6xl mb-8">Me Contacter</h2>
	<form 
		id="conctactForm"
		action="https://formspree.io/f/mzznapag"
		method="POST"		
		class="flex flex-col justify-start space-y-4"
		on:submit={handleSubmit}
	>
		<div class="my-4 ">
			<input type="text" name="name" placeholder="Nom" required
				class="peer w-fit text-black focus:border-slate-700 ring-offset-4 focus:ring-2 focus:ring-slate-500"
			>
			<p class="invisible peer-invalid:visible text-red-600 mt-2">
				Votre Nom ne doit pas être vide !
			</p>
		</div>
		<div class="my-4 ">
			<input type="text" name="first-name" placeholder="Prenom" required
				class="peer w-fit text-black focus:border-slate-700 ring-offset-4 focus:ring-2 focus:ring-slate-500"
			>
			<p class="invisible peer-invalid:visible text-red-600 mt-2">Votre Prénom ne doit pas être vide !</p>
		</div>
		<div class="my-6">
			<input type="email" name="email" placeholder="Email" required
				class="peer w-fit text-black focus:border-slate-700 ring-offset-4 focus:ring-2 focus:ring-slate-500"
			>
			<p class="invisible peer-invalid:visible text-red-600 mt-2">Une adresse mail valide est recquise !</p>
		</div>
		<div class="my-6">
			<textarea name="messages" placeholder="Message" required
				class="peer w-2/3 text-black focus:border-slate-700 ring-offset-4 focus:ring-2 focus:ring-slate-500"
			></textarea>
			<p class="invisible peer-invalid:visible text-red-600 mt-2">Un message est recquis !</p>
		</div>
		<button type="submit"
			class= " cursor-pointer peer w-fit bg-blue-600 text-white px-4 py-2 rounded focus:border-slate-700 focus:ring-2 focus:ring-slate-500"
		>Envoyer</button>
	</form>
 </section>