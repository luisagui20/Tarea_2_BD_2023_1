import prisma from '../prismaClient.js';

// Create
const createDefensa = async (req, res) => {
  try {
    const {id, defensa } = req.body;
    const newDefensa = await prisma.Defensas.create({
      data: {
        id,
        defensa,
      },
    });
    res.status(201).json(newDefensa);
  } catch (error) {
    console.error('Error creating defensa:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};

// Get all
const getAllDefensas = async (_, res) => {
  try {
    const defensas = await prisma.Defensas.findMany();
    res.json(defensas);
  } catch (error) {
    console.error('Error getting defensas:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};

// Get by ID
const getDefensaById = async (req, res) => {
  try {
    const { id } = req.params;

    if (isNaN(id) || !Number.isInteger(parseInt(id))) {
      return res.status(400).json({ error: 'Invalid ID' });
    }

    const defensa = await prisma.Defensas.findUnique({
      where: { id: parseInt(id) },
    });

    if (!defensa) {
      return res.status(404).json({ error: 'Defensa not found' });
    }

    res.json(defensa);
  } catch (error) {
    console.error('Error getting defensa:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};


// Update
const updateDefensa = async (req, res) => {
  try {
    const { id } = req.params;
    const { defensa } = req.body;

    if (isNaN(id) || !Number.isInteger(parseInt(id))) {
      return res.status(400).json({ error: 'Invalid ID' });
    }

    const updatedDefensa = await prisma.Defensas.update({
      where: { id: parseInt(id) },
      data: {
        defensa,
      },
    });

    res.json(updatedDefensa);
  } catch (error) {
    console.error('Error updating defensa:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};


// Delete
const deleteDefensa = async (req, res) => {
  try {
    const { id } = req.params;

    if (isNaN(id) || !Number.isInteger(parseInt(id))) {
      return res.status(400).json({ error: 'Invalid ID' });
    }

    await prisma.Defensas.delete({
      where: { id: parseInt(id) },
    });

    res.json({ message: 'Defensa deleted successfully' });
  } catch (error) {
    console.error('Error deleting defensa:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};


export default {
  createDefensa,
  getAllDefensas,
  getDefensaById,
  updateDefensa,
  deleteDefensa,
};

