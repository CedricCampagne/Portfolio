export interface Project {
    id : number;
    slug : string;
    name: string;
    image : string;
    description : string;
    github : string;
    demo : string | null;
    created_at : string;
}