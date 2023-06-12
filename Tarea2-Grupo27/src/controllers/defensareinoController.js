import prisma from '../prismaClient.js';

// Create a new defensaReino
const createDefensaReino = async (req, res) => {
  try {
    const { id_reino, id_defensa } = req.body;
    const newDefensaReino = await prisma.Defensa_reino.create({
      data: {
        id_reino,
        id_defensa,
      },
    });
    res.status(201).json(newDefensaReino);
  } catch (error) {
    console.error('Error creating defensaReino:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};

// Get all defensaReinos
const getAllDefensaReinos = async (_, res) => {
  try {
    const defensaReinos = await prisma.Defensa_reino.findMany();
    res.json(defensaReinos);
  } catch (error) {
    console.error('Error getting defensaReinos:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};

// Get a defensaReino by ID
const getDefensaReinoById = async (req, res) => {
  try {
    const id_reino = parseInt(req.params.id_reino);
    const id_defensa = parseInt(req.params.id_defensa);

    if (isNaN(id_reino) || isNaN(id_defensa) || !Number.isInteger(id_reino) || !Number.isInteger(id_defensa)) {
      return res.status(400).json({ error: 'IDs must be integers' });
    }

    const defensaReino = await prisma.Defensa_reino.findUnique({
      where: { id_reino_id_defensa: { id_reino, id_defensa } },
      include: {
        idreino: true,
        idDefensa: true,
      },
    });

    if (!defensaReino) {
      return res.status(404).json({ error: 'DefensaReino not found' });
    }

    res.json(defensaReino);
  } catch (error) {
    console.error('Error getting defensaReino:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};


// Update a defensaReino
const updateDefensaReino = async (req, res) => {
  try {
    const id_reino = parseInt(req.params.id_reino);
    const id_defensa = parseInt(req.params.id_defensa);
    const { id_reino: newIdReino, id_defensa: newIdDefensa } = req.body;

    if (isNaN(id_reino) || isNaN(id_defensa) || isNaN(newIdReino) || isNaN(newIdDefensa)) {
      return res.status(400).json({ error: 'IDs must be integers' });
    }

    const existingDefensaReino = await prisma.Defensa_reino.findUnique({
      where: { id_reino_id_defensa: { id_reino, id_defensa } },
    });

    if (!existingDefensaReino) {
      return res.status(404).json({ error: "That id's doesn't exist in the defensaReino" });
    }

    const updatedDefensaReino = await prisma.Defensa_reino.update({
      where: { id_reino_id_defensa: { id_reino, id_defensa } },
      data: {
        id_reino: newIdReino,
        id_defensa: newIdDefensa,
      },
      include: {
        idreino: true,
        idDefensa: true,
      },
    });
    
    res.json(updatedDefensaReino);
  } catch (error) {
    console.error('Error updating defensaReino:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};



// Delete a defensaReino
const deleteDefensaReino = async (req, res) => {
  try {
    const id_reino = parseInt(req.params.id_reino);
    const id_defensa = parseInt(req.params.id_defensa);

    if (isNaN(id_reino) || isNaN(id_defensa)) {
      return res.status(400).json({ error: 'IDs must be integers' });
    }

    await prisma.Defensa_reino.delete({
      where: { id_reino_id_defensa: { id_reino, id_defensa } },
    });

    res.json({ message: 'DefensaReino deleted successfully' });
  } catch (error) {
    console.error('Error deleting defensaReino:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};

export default {
  createDefensaReino,
  getAllDefensaReinos,
  getDefensaReinoById,
  updateDefensaReino,
  deleteDefensaReino,
};

