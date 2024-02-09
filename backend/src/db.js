import { createPool } from "mysql2/promise";
import dotenv from "dotenv";

dotenv.config();

const poolConfig = {
    host: process.env.DB_HOST || "localhost",
    port: process.env.DB_PORT ||  3306,
    user: process.env.DB_USER || "root",
    password: process.env.DB_PASS || "",
    database: process.env.DB_NAME || "api_subcoffee_web",
    waitForConnections: true,
    connectionLimit:  10,
    queueLimit:  0
};

export const pool = createPool(poolConfig);

pool.getConnection()
    .then(() => {
        console.log("Conexion a la base de datos exitosa");
    })
    .catch((error) => {
        console.error("Error al conectar a la database", error.stack);
    });
