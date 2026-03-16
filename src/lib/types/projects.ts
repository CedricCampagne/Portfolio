import type { ProjectSection } from "./projectSection";

export interface Project {
    id : number;
    slug : string;
    name: string;
    image : string;
    description : string;
    github : string;
    demo : string | null;
    created_at : string;
    tech : string[];
    features : string[];
    sections : ProjectSection[];
}