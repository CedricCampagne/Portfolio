import pkg from "pg";
const { Pool } = pkg;

export const pool = new Pool({
    user : process.env.DB_USER,
    host : process.env.DB_HOST,
    database : process.env.DB_NAME,
    password : process.env.DB_PASSWORD,
    port : Number(process.env.DB_PORT)
});

export async function query<T = any>(text: string, params?: unknown[]): Promise<T[]> {
  try {
    const res = await pool.query(text, params);
    return res.rows as T[];
  } catch (err) {
    console.error('Erreur SQL :', err);
    throw err;
  }
}