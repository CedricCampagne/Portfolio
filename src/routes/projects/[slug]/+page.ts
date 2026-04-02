import type { Project } from "$lib/types/projects";

export async function load( { fetch, params }  ){
    const { slug } = params;
    const res = await fetch(`/api/projects/${slug}`);

    if (!res.ok) {
        return { project: null }; // ou gérer l'erreur comme tu veux
    }
    
    const project: Project = await res.json();

    return { project };
}