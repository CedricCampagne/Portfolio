import { query } from "../../../db/utils.db";
import type { Project } from "$lib/types/projects";

export async function GET() {
  try {

    const projects = await query<Project>(
      "SELECT * FROM projects ORDER BY id"
    );

    for (const project of projects) {

      const techs = await query<{ tech: string }>(
        "SELECT tech FROM project_techs WHERE project_id = $1",
        [project.id]
      );

      project.tech = techs.map(t => t.tech);
    }

    return new Response(JSON.stringify(projects), {
      headers: { "Content-Type": "application/json" }
    });

  } catch (error) {

    console.error(error);

    return new Response(
      JSON.stringify({ error: "Erreur récupération projets" }),
      { status: 500 }
    );
  }
}