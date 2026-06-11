const express = require('express');
const cors = require('cors');
const { Pool } = require('pg');

const app = express();
app.use(cors());
app.use(express.json());

const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'conquest_db',
  password: 'TU_CONTRASEÑA_AQUI', // Reemplazar con tu clave local de Postgres
  port: 5432,
});

// 1. Estado inicial económico y militar
app.get('/api/game/initial', async (req, res) => {
  try {
    res.json({
      presupuesto: 5000,
      tropas: { infanteria: 5000, caballeria: 2000, artilleria: 500 }
    });
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

// 2. Catálogo de Eventos Tácticos
app.get('/api/eventos', async (req, res) => {
  try {
    const result = await pool.query('SELECT evento_id AS id, titulo, descripcion, tipo FROM eventos');
    res.json(result.rows);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

// 3. Árbol de Habilidades con Mapeo de Coordenadas Visuales
app.get('/api/habilidades', async (req, res) => {
  try {
    const query = `
      SELECT h.habilidad_id AS id, h.nombre, h.costo, h.categoria, h.rama, 
             h.eje_x AS x, h.eje_y AS y, FALSE AS "desbloqueada",
             COALESCE(
               (SELECT array_to_json(array_agg(prerrequisito_id)) 
                FROM habilidades_prerrequisitos 
                WHERE habilidad_id = h.habilidad_id), 
               '[]'::json
             ) AS prerrequisitos
      FROM habilidades h
    `;
    const result = await pool.query(query);
    res.json(result.rows);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

// 4. Estadísticas Demográficas de Países (Población Real)
app.get('/api/paises/stats', async (req, res) => {
  try {
    const result = await pool.query('SELECT nombre, poblacion FROM paises');
    const stats = {};
    result.rows.forEach(row => {
      stats[row.nombre] = parseInt(row.poblacion);
    });
    res.json(stats);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

// 5. Historial de Partidas Guardadas (Slots de Guardado)
app.get('/api/partidas/:usuario_id', async (req, res) => {
  const { usuario_id } = req.params;
  try {
    const query = `
      SELECT p.partida_id AS id, j.usuario_id AS "commanderID", p.cuartel_general AS hq, 
             to_char(p.fecha_creacion, 'YYYY-MM-DD HH24:MI') AS "creationDate",
             to_char(p.ultima_vez_guardado, 'YYYY-MM-DD HH24:MI') AS "lastSaveDate",
             p.dias_campana AS "campaignDays", p.porcentaje_dominio AS "dominionPercent",
             j.oro AS budget, (e.infanteria + e.caballeria + e.artilleria) AS troops
      FROM partidas p
      INNER JOIN jugadores j ON p.partida_id = j.partida_id
      INNER JOIN ejercitos_jugador e ON j.jugador_id = e.jugador_id
      WHERE j.usuario_id = $1
    `;
    const result = await pool.query(query, [usuario_id]);
    res.json(result.rows);
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

// 6. Autenticación de Operarios (Login)
app.post('/api/auth/login', async (req, res) => {
  const { username, password } = req.body;
  try {
    const query = `
      SELECT usuario_id AS id, username, correo AS email, nombre, pais, rango,
             to_char(creado, 'YYYY-MM-DD"T"HH24:MI:SS.MS"Z"') AS "fechaRegistro"
      FROM usuarios 
      WHERE LOWER(username) = LOWER($1) AND contrasena = $2
    `;
    const result = await pool.query(query, [username, password]);
    if (result.rows.length > 0) {
      res.json({ success: true, user: result.rows[0] });
    } else {
      res.status(401).json({ success: false, error: "CRED_INVALIDAS" });
    }
  } catch (error) {
    res.status(500).json({ error: error.message });
  }
});

// 7. Registro de Nuevas Cuentas
app.post('/api/auth/register', async (req, res) => {
  const { username, email, nombre, pais, password } = req.body;
  try {
    const checkUser = await pool.query('SELECT username, correo FROM usuarios WHERE LOWER(username) = LOWER($1) OR LOWER(correo) = LOWER($2)', [username, email]);
    if (checkUser.rows.length > 0) {
      return res.status(400).json({ success: false, error: "ID_O_EMAIL_TOMADO" });
    }

    const insertQuery = `
      INSERT INTO usuarios (username, correo, nombre, pais, contrasena)
      VALUES ($1, $2, $3, $4, $5)
      RETURNING usuario_id AS id, username, correo AS email, nombre, pais, rango,
                to_char(creado, 'YYYY-MM-DD"T"HH24:MI:SS.MS"Z"') AS "fechaRegistro"
    `;
    const result = await pool.query(insertQuery, [username, email, nombre, pais, password]);
    res.json({ success: true, user: result.rows[0] });
  } catch (error) {
    res.status(500).json({ success: false, error: error.message });
  }
});

const PORT = 3000;
app.listen(PORT, () => {
  console.log(`🚀 Servidor de Conquest escuchando en http://localhost:${PORT}`);
});