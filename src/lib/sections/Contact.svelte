<script lang="ts">
    import Icon from "@iconify/svelte";
</script>

<section id="contact" class="bg-gray-50 py-20 px-6 sm:px-8 lg:px-0">
    <div class="max-w-4xl mx-auto text-center">
        <h2 class="text-4xl font-bold mb-6 text-gray-900">
            Me contacter
        </h2>
        <p class="text-gray-700 mb-12 max-w-xl mx-auto">
            Je suis actuellement à la recherche d'une première opportunité en développement web. 
            N'hésitez pas à me contacter pour échanger ou discuter d'une collaboration.
        </p>
        <div class="grid md:grid-cols-3 gap-8">
            <a 
                href="mailto:cedric@email.com"
                class="bg-white shadow-md rounded-xl p-6 border-t-4 border-green-500 
                hover:shadow-xl hover:-translate-y-1 transition duration-300 cursor-pointer"
            >
                <div class="flex justify-center items-center gap-2 mb-2">
                    <Icon icon="mdi:email-outline" class="text-green-600 w-5 h-5"/>
                    <p class="font-semibold text-gray-900">
                        Email
                    </p>
                </div>
                <p class="text-green-600 break-all">
                    ced.campagne@gmail.com
                </p>
            </a>
            <a 
                href="https://github.com/CedricCampagne"
                target="_blank"
                class="bg-white shadow-md rounded-xl p-6 border-t-4 border-green-500 
                hover:shadow-xl hover:-translate-y-1 transition duration-300 cursor-pointer"
            >
                <div class="flex justify-center items-center gap-2 mb-2">
                    <Icon icon="mdi:github" class="text-green-600 w-5 h-5"/>
                    <p class="font-semibold text-gray-900">
                        GitHub
                    </p>
                </div>
                <p class="text-green-600">
                    Voir mes projets
                </p>
            </a>
            <a 
                href="https://www.linkedin.com/in/c%C3%A9driccampagne/"
                target="_blank"
                class="bg-white shadow-md rounded-xl p-6 border-t-4 border-green-500 
                hover:shadow-xl hover:-translate-y-1 transition duration-300 cursor-pointer"
            >
                <div class="flex justify-center items-center gap-2 mb-2">
                    <Icon icon="mdi:linkedin" class="text-green-600 w-5 h-5"/>
                    <p class="font-semibold text-gray-900">
                        LinkedIn
                    </p>
                </div>
                <p class="text-green-600">
                    Se connecter
                </p>
            </a>
        </div>
    </div>
</section>