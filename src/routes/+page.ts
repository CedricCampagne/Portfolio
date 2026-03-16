import type { Project } from "$lib/types/projects";

export async function load( { fetch }  ){
    const res = await fetch('/api/projects');

    const projects: Project[] = await res.json();

    return { projects };
}