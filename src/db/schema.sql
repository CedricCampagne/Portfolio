-- Table principale des projets
CREATE TABLE projects (
    id SERIAL PRIMARY KEY,
    slug VARCHAR(255) UNIQUE NOT NULL,
    name VARCHAR(255) NOT NULL,
    image VARCHAR(255),
    description TEXT,
    github VARCHAR(255),
    demo VARCHAR(255),
    created_at TIMESTAMP DEFAULT NOW()
);

-- Technologies par projet
CREATE TABLE project_techs (
    id SERIAL PRIMARY KEY,
    project_id INT REFERENCES projects(id) ON DELETE CASCADE,
    tech VARCHAR(100)
);

-- Features par projet
-- CREATE TABLE project_features (
--     id SERIAL PRIMARY KEY,
--     project_id INT REFERENCES projects(id) ON DELETE CASCADE,
--     feature TEXT
-- );

-- Sections par projet
CREATE TABLE project_sections (
    id SERIAL PRIMARY KEY,
    project_id INT REFERENCES projects(id) ON DELETE CASCADE,
    title VARCHAR(255),
    -- JSONB car des fois simple text des fois un tableau avec plusoeurs text
    content JSONB
);
