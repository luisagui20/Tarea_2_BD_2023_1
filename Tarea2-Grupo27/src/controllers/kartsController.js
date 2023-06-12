import prisma from '../prismaClient.js';

// Create
const createKart = async (req, res) => {
  try {
    const {id, modelo, color, velocidad_maxima, id_personaje } = req.body;
    const kart = await prisma.Karts.create({
      data: {
        id,
        modelo,
        color,
        velocidad_maxima,
        id_personaje,
      },
    });
    res.status(201).json(kart);
  } catch (error) {
    console.error('Error creating kart:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};

// Get all
const getAllKarts = async (_, res) => {
  try {
    const karts = await prisma.Karts.findMany();
    res.json(karts);
  } catch (error) {
    console.error('Error getting karts:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};

// Get by ID
const getKartById = async (req, res) => {
  try {
    const { id } = req.params;

    if (isNaN(id) || !Number.isInteger(parseInt(id))) {
      return res.status(400).json({ error: 'Invalid ID' });
    }

    const kart = await prisma.Karts.findUnique({
      where: { id: parseInt(id) },
    });

    if (!kart) {
      return res.status(404).json({ error: 'Kart not found' });
    }

    res.json(kart);
  } catch (error) {
    console.error('Error getting kart:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};


// Update
const updateKart = async (req, res) => {
  try {
    const { id } = req.params;
    const { modelo, color, velocidad_maxima, id_personaje } = req.body;

    if (isNaN(id) || !Number.isInteger(parseInt(id))) {
      return res.status(400).json({ error: 'Invalid ID' });
    }

    const updatedKart = await prisma.Karts.update({
      where: { id: parseInt(id) },
      data: {
        modelo,
        color,
        velocidad_maxima,
        id_personaje,
      },
    });

    res.json(updatedKart);
  } catch (error) {
    console.error('Error updating kart:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};


// Delete
const deleteKart = async (req, res) => {
  try {
    const { id } = req.params;

    if (isNaN(id) || !Number.isInteger(parseInt(id))) {
      return res.status(400).json({ error: 'Invalid ID' });
    }

    const deletedKart = await prisma.Karts.delete({
      where: { id: parseInt(id) },
    });

    if (!deletedKart) {
      return res.status(404).json({ error: 'Kart not found' });
    }

    res.json({ message: 'Kart deleted successfully' });
  } catch (error) {
    console.error('Error deleting kart:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};



export default {
  createKart,
  getAllKarts,
  getKartById,
  updateKart,
  deleteKart,
};

