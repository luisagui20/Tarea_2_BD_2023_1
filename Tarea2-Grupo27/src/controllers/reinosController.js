import prisma from '../prismaClient.js';

// Create a new reino
const createReino = async (req, res) => {
  try {
    const {id, nombre, ubicacion, superficie } = req.body;
    const reino = await prisma.Reinos.create({
      data: {
        id,
        nombre,
        ubicacion,
        superficie,
      },
    });
    res.status(201).json(reino);
  } catch (error) {
    console.error('Error creating reino:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};

// Get all
const getAllReinos = async (_, res) => {
  try {
    const reinos = await prisma.Reinos.findMany();
    res.json(reinos);
  } catch (error) {
    console.error('Error getting reinos:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};

// Get by ID
const getReinoById = async (req, res) => {
  try {
    const { id } = req.params;

    if (isNaN(id) || !Number.isInteger(parseInt(id))) {
      return res.status(400).json({ error: 'Invalid ID' });
    }

    const reino = await prisma.Reinos.findUnique({
      where: { id: parseInt(id) },
    });

    if (!reino) {
      return res.status(404).json({ error: 'Reino not found' });
    }

    res.json(reino);
  } catch (error) {
    console.error('Error getting reino:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};

// Update a reino
const updateReino = async (req, res) => {
  try {
    const { id } = req.params;
    const { nombre, ubicacion, superficie } = req.body;

    if (isNaN(id) || !Number.isInteger(parseInt(id))) {
      return res.status(400).json({ error: 'Invalid ID' });
    }

    const updatedReino = await prisma.Reinos.update({
      where: { id: parseInt(id) },
      data: {
        nombre,
        ubicacion,
        superficie,
      },
    });

    res.json(updatedReino);
  } catch (error) {
    console.error('Error updating reino:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};


// Delete
const deleteReino = async (req, res) => {
  try {
    const { id } = req.params;

    if (isNaN(id) || !Number.isInteger(parseInt(id))) {
      return res.status(400).json({ error: 'Invalid ID' });
    }

    const deletedReino = await prisma.Reinos.delete({
      where: { id: parseInt(id) },
    });

    if (!deletedReino) {
      return res.status(404).json({ error: 'Reino not found' });
    }

    res.json({ message: 'Reino deleted successfully' });
  } catch (error) {
    console.error('Error deleting reino:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};



export default {
  createReino,
  getAllReinos,
  getReinoById,
  updateReino,
  deleteReino,
};

