// personajehabitareinoController.js

import prisma from '../prismaClient.js';

// Create a new personaje_habita_reino
const createPersonajeHabitaReino = async (req, res) => {
  try {
    const { id_personaje, id_reino, fecha_registro, es_gobernante } = req.body;

    if (
      typeof id_personaje !== 'number' ||
      typeof id_reino !== 'number' ||
      typeof fecha_registro !== 'string' ||
      typeof es_gobernante !== 'boolean'
    ) {
      res.status(400).json({ error: 'Invalid data types' });
      return;
    }

    const personajeHabitaReino = await prisma.personaje_habita_reino.create({
      data: {
        id_personaje,
        id_reino,
        fecha_registro,
        es_gobernante,
      },
    });

    res.status(201).json(personajeHabitaReino);
  } catch (error) {
    console.error('Error creating personaje_habita_reino:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};

// Get all personaje_habita_reino
const getAllPersonajeHabitaReino = async (_, res) => {
  try {
    const personajesHabitanReino = await prisma.personaje_habita_reino.findMany();

    if (!personajesHabitanReino || personajesHabitanReino.length === 0) {
      res.status(404).json({ error: 'No records found' });
      return;
    }

    res.json(personajesHabitanReino);
  } catch (error) {
    console.error('Error getting personajes_habitan_reino:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};

// Get a personaje_habita_reino by ID (id_personaje and id_reino)
const getPersonajeHabitaReinoById = async (req, res) => {
  try {
    const { id_personaje, id_reino } = req.params;
    
    const parsedIdPersonaje = parseInt(id_personaje);
    const parsedIdReino = parseInt(id_reino);
    
    if (isNaN(parsedIdPersonaje) || isNaN(parsedIdReino) || !Number.isInteger(parsedIdPersonaje) || !Number.isInteger(parsedIdReino)) {
      return res.status(400).json({ error: 'IDs must be integers' });
    }
    
    const personajeHabitaReino = await prisma.personaje_habita_reino.findUnique({
      where: { id_personaje_id_reino: { id_personaje: parsedIdPersonaje, id_reino: parsedIdReino } },
    });
    
    if (!personajeHabitaReino) {
      return res.status(404).json({ error: 'Personaje_habita_reino not found' });
    }
    
    res.json(personajeHabitaReino);
  } catch (error) {
    console.error('Error getting personaje_habita_reino:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};



// Update a personaje_habita_reino
const updatePersonajeHabitaReino = async (req, res) => {
  try {
    const { id_personaje, id_reino } = req.params;
    const { fecha_registro, es_gobernante } = req.body;
    const parsedIdPersonaje = parseInt(id_personaje);
    const parsedIdReino = parseInt(id_reino);

    if (isNaN(parsedIdPersonaje) || isNaN(parsedIdReino) || !Number.isInteger(parsedIdPersonaje) || !Number.isInteger(parsedIdReino)) {
      return res.status(400).json({ error: 'IDs must be integers' });
    }

    const updatedPersonajeHabitaReino = await prisma.personaje_habita_reino.update({
      where: { id_personaje_id_reino: { id_personaje: parsedIdPersonaje, id_reino: parsedIdReino } },
      data: {
        fecha_registro,
        es_gobernante,
      },
    });
    res.json(updatedPersonajeHabitaReino);
  } catch (error) {
    console.error('Error updating personaje_habita_reino:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};


// Delete a personaje_habita_reino
const deletePersonajeHabitaReino = async (req, res) => {
  try {
    const { id_personaje, id_reino } = req.params;
    const parsedIdPersonaje = parseInt(id_personaje);
    const parsedIdReino = parseInt(id_reino);

    if (isNaN(parsedIdPersonaje) || isNaN(parsedIdReino) || !Number.isInteger(parsedIdPersonaje) || !Number.isInteger(parsedIdReino)) {
      return res.status(400).json({ error: 'IDs must be integers' });
    }

    await prisma.personaje_habita_reino.delete({
      where: { id_personaje_id_reino: { id_personaje: parsedIdPersonaje, id_reino: parsedIdReino } },
    });
    res.json({ message: 'Personaje_habita_reino deleted successfully' });
  } catch (error) {
    console.error('Error deleting personaje_habita_reino:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};


export default {
  createPersonajeHabitaReino,
  getAllPersonajeHabitaReino,
  getPersonajeHabitaReinoById,
  updatePersonajeHabitaReino,
  deletePersonajeHabitaReino,
};
