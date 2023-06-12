import prisma from '../prismaClient.js';

// Create
const createCharacter = async (req, res) => {
  try {
    const {id, nombre, fuerza, fecha_nacimiento, objeto } = req.body;
    const character = await prisma.Personajes.create({
      data: {
        id,
        nombre,
        fuerza,
        fecha_nacimiento,
        objeto,
      },
    });
    res.status(201).json(character);
  } catch (error) {
    console.error('Error creating character:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};

// Get all
const getCharacters = async (_, res) => {
  try {
    const characters = await prisma.Personajes.findMany();
    res.json(characters);
  } catch (error) {
    console.error('Error getting characters:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};

// Get by ID
const getCharacterById = async (req, res) => {
  try {
    const { id } = req.params;

    if (isNaN(id) || !Number.isInteger(parseInt(id))) {
      return res.status(400).json({ error: 'Invalid ID' });
    }

    const character = await prisma.Personajes.findUnique({
      where: { id: parseInt(id) },
    });

    if (!character) {
      return res.status(404).json({ error: 'Character not found' });
    }

    res.json(character);
  } catch (error) {
    console.error('Error getting character:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};


// Update
const updateCharacter = async (req, res) => {
  try {
    const { id } = req.params;
    const { nombre, fuerza, fecha_nacimiento, objeto } = req.body;

    if (isNaN(id) || !Number.isInteger(parseInt(id))) {
      return res.status(400).json({ error: 'Invalid ID' });
    }

    const updatedCharacter = await prisma.Personajes.update({
      where: { id: parseInt(id) },
      data: {
        nombre,
        fuerza,
        fecha_nacimiento,
        objeto,
      },
    });

    res.json(updatedCharacter);
  } catch (error) {
    console.error('Error updating character:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};


// Delete
const deleteCharacter = async (req, res) => {
  try {
    const { id } = req.params;

    if (isNaN(id) || !Number.isInteger(parseInt(id))) {
      return res.status(400).json({ error: 'Invalid ID' });
    }

    const deletedCharacter = await prisma.Personajes.delete({
      where: { id: parseInt(id) },
    });

    if (!deletedCharacter) {
      return res.status(404).json({ error: 'Character not found' });
    }

    res.json({ message: 'Character deleted successfully' });
  } catch (error) {
    console.error('Error deleting character:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};



export default {
  createCharacter,
  getCharacters,
  getCharacterById,
  updateCharacter,
  deleteCharacter,
};

