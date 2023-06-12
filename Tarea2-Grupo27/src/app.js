import express from 'express';
import TrabajosController from './controllers/trabajosController.js';
import PersonajesController from './controllers/personajesController.js';
import PersonajeTieneTrabajoController from './controllers/personajetienetrabajoController.js';
import kartsController from './controllers/kartsController.js';
import reinosController from './controllers/reinosController.js';
import personajeHabitaReinoController from './controllers/personajehabitareinoController.js';
import defensasController from './controllers/defensasController.js';
import defensaReinoController from './controllers/defensareinoController.js';
import diplomaciasController from './controllers/diplomaciasController.js';

import top5personajesConMasFuerzaController from './controllers/top5personajesConMasFuerzaController.js';
import personajeConMasKartsController from './controllers/personajeConMaskartsController.js';
import cantidadHabitantesController from './controllers/cantidadHabitantesController.js';
import gobernantesController from './controllers/gobernantesController.js';

import morgan from 'morgan';

const ENV = process.env;
const app = express();

// middleware
app.use(express.json());
app.use(morgan('dev'));

// Rutas tabla Trabajos
app.post('/api/Trabajos', TrabajosController.createJob);
app.get('/api/Trabajos', TrabajosController.getJobs);
app.get('/api/Trabajos/:id', TrabajosController.getJobById);
app.put('/api/Trabajos/:id', TrabajosController.updateJob);
app.delete('/api/Trabajos/:id', TrabajosController.deleteJob);


// Rutas tabla Personajes
app.post('/api/Personajes', PersonajesController.createCharacter);
app.get('/api/Personajes', PersonajesController.getCharacters);
app.get('/api/Personajes/:id', PersonajesController.getCharacterById);
app.put('/api/Personajes/:id', PersonajesController.updateCharacter);
app.delete('/api/Personajes/:id', PersonajesController.deleteCharacter);


// Rutas tabla Karts
app.post('/api/Karts', kartsController.createKart);
app.get('/api/Karts', kartsController.getAllKarts);
app.get('/api/Karts/:id', kartsController.getKartById);
app.put('/api/Karts/:id', kartsController.updateKart);
app.delete('/api/Karts/:id', kartsController.deleteKart);


// Rutas tabla Reinos
app.post('/api/Reinos', reinosController.createReino);
app.get('/api/Reinos', reinosController.getAllReinos);
app.get('/api/Reinos/:id', reinosController.getReinoById);
app.put('/api/Reinos/:id', reinosController.updateReino);
app.delete('/api/Reinos/:id', reinosController.deleteReino);


// Rutas tabla Defensas
app.post('/api/Defensas', defensasController.createDefensa);
app.get('/api/Defensas', defensasController.getAllDefensas);
app.get('/api/Defensas/:id', defensasController.getDefensaById);
app.put('/api/Defensas/:id', defensasController.updateDefensa);
app.delete('/api/Defensas/:id', defensasController.deleteDefensa);

//--------------------------------------------------------------------------------------------------------------------------------

// Rutas tabla Personaje_tiene_trabajo
app.post('/api/Personaje_tiene_trabajo', PersonajeTieneTrabajoController.createEntry);
app.get('/api/Personaje_tiene_trabajo', PersonajeTieneTrabajoController.getEntries);
app.get('/api/Personaje_tiene_trabajo/:id_trabajo/:id_personaje', PersonajeTieneTrabajoController.getEntryById);
app.put('/api/Personaje_tiene_trabajo/:id_trabajo/:id_personaje', PersonajeTieneTrabajoController.updateEntry);
app.delete('/api/Personaje_tiene_trabajo/:id_trabajo/:id_personaje', PersonajeTieneTrabajoController.deleteEntry);


// Rutas tabla Personaje_habita_reino
app.post('/api/Personaje_habita_reino', personajeHabitaReinoController.createPersonajeHabitaReino);
app.get('/api/Personaje_habita_reino', personajeHabitaReinoController.getAllPersonajeHabitaReino);
app.get('/api/Personaje_habita_reino/:id_personaje/:id_reino', personajeHabitaReinoController.getPersonajeHabitaReinoById);
app.put('/api/Personaje_habita_reino/:id_personaje/:id_reino', personajeHabitaReinoController.updatePersonajeHabitaReino);
app.delete('/api/Personaje_habita_reino/:id_personaje/:id_reino', personajeHabitaReinoController.deletePersonajeHabitaReino);


// Rutas tabla Defensa_reino
app.post('/api/Defensa_reino', defensaReinoController.createDefensaReino);
app.get('/api/Defensa_reino', defensaReinoController.getAllDefensaReinos);
app.get('/api/Defensa_reino/:id_reino/:id_defensa', defensaReinoController.getDefensaReinoById);
app.put('/api/Defensa_reino/:id_reino/:id_defensa', defensaReinoController.updateDefensaReino);
app.delete('/api/Defensa_reino/:id_reino/:id_defensa', defensaReinoController.deleteDefensaReino);


// Rutas tabla Diplomacias
app.post('/api/Diplomacias', diplomaciasController.createDiplomacia);
app.get('/api/Diplomacias', diplomaciasController.getAllDiplomacias);
app.get('/api/Diplomacias/:id_reino_1/:id_reino_2', diplomaciasController.getDiplomaciaById);
app.put('/api/Diplomacias/:id_reino_1/:id_reino_2', diplomaciasController.updateDiplomacia);
app.delete('/api/Diplomacias/:id_reino_1/:id_reino_2', diplomaciasController.deleteDiplomacia);

// Rutas de las consultas
app.get('/api/top5personajesConMasFuerza', top5personajesConMasFuerzaController.getTop5PersonajesConMasFuerza);
app.get('/api/personajeConMasKarts', personajeConMasKartsController.getPersonajeConMasKarts);
app.get('/api/cantidadHabitantes/:id', cantidadHabitantesController.getCantidadHabitantesByReinoId);
app.get('/api/gobernante/:id?', gobernantesController.getGobernantes);


// endpoints (Routes)
//==========================================================//
app.get('/', (req, res) => {
    res.json({ message: 'Hello World!!' });
})
//==========================================================//

// 404 not found route
app.use((_, res) => {
    res.status(404).json({ message: 'Not found Crack!' });
})

// Init server
app.listen(ENV.API_PORT, () => {
    console.log(`Server running on port ${ENV.API_PORT}`);
});