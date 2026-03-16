import type { Project } from "$lib/types/projects";
import { query } from "../../../db/utils.db";

export async function GET() {
    try {
        const projects = await query<Project>('SELECT * FROM projects ORDER BY id');

        return new Response(JSON.stringify(projects), {
            headers : { 'Content-Type': 'application/json' }
        });
    } catch (error) {
        console.log(error);
        return new Response(JSON.stringify({ error: 'Erreur lors de la récupération des projets' }), {
            status: 500,
            headers: { 'Content-Type': 'application/json' }
    });
    }
}