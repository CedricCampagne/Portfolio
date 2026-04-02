// src/db/utils.db.ts
import pkg from "pg";
import dotenv from "dotenv";

// Charge le bon fichier .env selon l'environnement
if (process.env.NODE_ENV === "production") {
  dotenv.config({ path: ".env.production" });
} else {
  dotenv.config();
}

const { Pool } = pkg;

// Config dynamique selon l'environnement
let config;

if (process.env.NODE_ENV === "production") {
  config = {
    connectionString: process.env.DATABASE_URL,
    ssl: { rejectUnauthorized: false } // Supabase / prod SSL
  };
} else {
  config = {
    user: process.env.DB_USER,
    host: process.env.DB_HOST,
    database: process.env.DB_NAME,
    password: process.env.DB_PASSWORD,
    port: Number(process.env.DB_PORT),
    ssl: false // Dev local sans SSL
  };
}

// Pool PostgreSQL
export const pool = new Pool(config);

// Fonction utilitaire pour requêtes SQL
export async function query<T = any>(text: string, params?: unknown[]): Promise<T[]> {
  try {
    const res = await pool.query(text, params);
    return res.rows as T[];
  } catch (err) {
    console.error("Erreur SQL :", err);
    throw err;
  }
}