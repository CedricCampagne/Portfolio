import { query } from "../../../../db/utils.db";

import type { Project } from "$lib/types/projects";
import type { ProjectFeature } from "$lib/types/projectFeature.js";
import type { ProjectSection } from "$lib/types/projectSection.js";

export async function GET({ params }) {
    const { slug } = params;

    try {
        const projects = await query<Project>(
            "SELECT * FROM projects WHERE slug = $1",
            [slug]
        );

        if (projects.length === 0) {
            return new Response(JSON.stringify({ error: 'Projet non trouvé' }), { status: 404 });
        }
        const project = projects[0];

        // recupération des techs
        const techs = await query<{ tech: string }>(
            'SELECT tech FROM project_techs WHERE project_id = $1 ORDER BY id',
            [project.id]
        );
        project.tech = techs.map(t => t.tech);

        // Récupérer les sections
        const sections = await query<ProjectSection>(
            'SELECT title, content FROM project_sections WHERE project_id = $1 ORDER BY id',
            [project.id]
        );
        project.sections = sections.map(s => ({ title: s.title, content: s.content }));

        return new Response(JSON.stringify(project), {
            headers: { "Content-Type": "application/json" }
        });
    } catch (err) {
        console.error(err);
        return new Response(JSON.stringify({ error: 'Erreur lors de la récupération du projet' }), {
            status: 500,
            headers: { 'Content-Type': 'application/json' }
        });
    }
}