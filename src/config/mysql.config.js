import mysql from 'mysql';
import dotenv from 'dotenv';

dotenv.config();
const pool = mysql.createPool({
	host: process.env.DB_HOST,
	port: proq.env.DB_PORT,	
	user: proq.env.DB_USER, 
	password: proq.env.DB_PASSWORD, 
	database: proq.env.DB_NAME, 
	connectionLimit: proq.env.DB_CONNECTION_LIMIT 
});

export default pool;
