import prisma from '../prismaClient.js';

// Create a new 
const createEntry = async (req, res) => {
  try {
    const { id_trabajo, id_personaje, fecha_inicio, fecha_termino } = req.body;
    const entry = await prisma.personaje_tiene_trabajo.create({
      data: {
        id_trabajo,
        id_personaje,
        fecha_inicio,
        fecha_termino,
      },
    });
    res.status(201).json(entry);
  } catch (error) {
    if (error.code === 'P2002') {
      console.error('Error creating entry: Unique constraint violation');
      res.status(400).json({ error: 'Duplicate entry' });
    } else {
      console.error('Error creating entry:', error);
      res.status(500).json({ error: 'Internal server error' });
    }
  }
};

// Get all 
const getEntries = async (_, res) => {
  try {
    const entries = await prisma.personaje_tiene_trabajo.findMany();
    res.json(entries);
  } catch (error) {
    console.error('Error getting entries:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};

// Get an entry by ID (id_trabajo and id_personaje)
const getEntryById = async (req, res) => {
  try {
    const id_trabajo = parseInt(req.params.id_trabajo);
    const id_personaje = parseInt(req.params.id_personaje);

    const entry = await prisma.personaje_tiene_trabajo.findUnique({
      where: { id_trabajo_id_personaje: { id_trabajo, id_personaje } },
    });
    if (!entry) {
      return res.status(404).json({ error: 'Entry not found' });
    }
    res.json(entry);
  } catch (error) {
    console.error('Error getting entry:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};

// Update 
const updateEntry = async (req, res) => {
  try {
    const id_trabajo = parseInt(req.params.id_trabajo);
    const id_personaje = parseInt(req.params.id_personaje);

    if (isNaN(id_trabajo) || isNaN(id_personaje)) {
      // Verificar si los identificadores no son enteros válidos
      console.error('Invalid ID');
      res.status(400).json({ error: 'Invalid ID' });
      return;
    }

    const { fecha_inicio, fecha_termino } = req.body;
    const updatedEntry = await prisma.personaje_tiene_trabajo.update({
      where: { id_trabajo_id_personaje: { id_trabajo, id_personaje } },
      data: {
        fecha_inicio,
        fecha_termino,
      },
    });
    res.json(updatedEntry);
  } catch (error) {
    console.error('Error updating entry:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};

// Delete
const deleteEntry = async (req, res) => {
  try {
    const id_trabajo = req.params.id_trabajo;
    const id_personaje = req.params.id_personaje;

    const existingEntry = await prisma.personaje_tiene_trabajo.findUnique({
      where: { id_trabajo_id_personaje: { id_trabajo: parseInt(id_trabajo), id_personaje: parseInt(id_personaje) } },
    });

    if (existingEntry) {
      await prisma.personaje_tiene_trabajo.delete({
        where: { id_trabajo_id_personaje: { id_trabajo: parseInt(id_trabajo), id_personaje: parseInt(id_personaje) } },
      });
      res.json({ message: 'Entry deleted successfully' });
    } else {
      res.status(404).json({ error: 'Entry not found' });
    }
  } catch (error) {
    console.error('Error deleting entry:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};


export default {
  createEntry,
  getEntries,
  getEntryById,
  updateEntry,
  deleteEntry,
};
