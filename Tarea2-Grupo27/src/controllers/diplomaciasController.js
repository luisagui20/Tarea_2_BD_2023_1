import prisma from '../prismaClient.js';

// Create a new diplomacia
const createDiplomacia = async (req, res) => {
  try {
    const { id_reino_1, id_reino_2, es_aliado } = req.body;
    const newDiplomacia = await prisma.Diplomacias.create({
      data: {
        id_reino_1,
        id_reino_2,
        es_aliado,
      },
    });
    res.status(201).json(newDiplomacia);
  } catch (error) {
    console.error('Error creating diplomacia:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};

// Get all diplomacias
const getAllDiplomacias = async (_, res) => {
  try {
    const diplomacias = await prisma.Diplomacias.findMany();
    res.json(diplomacias);
  } catch (error) {
    console.error('Error getting diplomacias:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};


// Get a diplomacia by IDs
const getDiplomaciaById = async (req, res) => {
  try {
    const { id_reino_1, id_reino_2 } = req.params;

    if (isNaN(id_reino_1) || isNaN(id_reino_2)) {
      return res.status(400).json({ error: 'IDs must be integers' });
    }

    const diplomacia = await prisma.diplomacias.findUnique({
      where: {
        id_reino_1_id_reino_2: {
          id_reino_1: parseInt(id_reino_1),
          id_reino_2: parseInt(id_reino_2),
        },
      },
      include: {
        idreino1: true,
        idreino2: true,
      },
    });

    if (!diplomacia) {
      return res.status(404).json({ error: 'Diplomacia not found' });
    }

    res.json(diplomacia);
  } catch (error) {
    console.error('Error getting diplomacia:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};



// Update a diplomacia
const updateDiplomacia = async (req, res) => {
  try {
    const { id_reino_1, id_reino_2 } = req.params;

    if (isNaN(id_reino_1) || isNaN(id_reino_2)) {
      return res.status(400).json({ error: 'IDs must be integers' });
    }

    const { id_reino_1: newIdReino1, id_reino_2: newIdReino2, es_aliado: newEsAliado } = req.body;
    
    const updatedDiplomacia = await prisma.Diplomacias.update({
      where: {
        id_reino_1_id_reino_2: {
          id_reino_1: parseInt(id_reino_1),
          id_reino_2: parseInt(id_reino_2),
        },
      },
      data: {
        id_reino_1: newIdReino1,
        id_reino_2: newIdReino2,
        es_aliado: newEsAliado,
      },
      include: {
        idreino1: true,
        idreino2: true,
      },
    });

    res.json(updatedDiplomacia);
  } catch (error) {
    console.error('Error updating diplomacia:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};


// Delete a diplomacia
const deleteDiplomacia = async (req, res) => {
  try {
    const { id_reino_1, id_reino_2 } = req.params;

    if (isNaN(id_reino_1) || isNaN(id_reino_2)) {
      return res.status(400).json({ error: 'IDs must be integers' });
    }

    await prisma.Diplomacias.delete({
      where: {
        id_reino_1_id_reino_2: {
          id_reino_1: parseInt(id_reino_1),
          id_reino_2: parseInt(id_reino_2),
        },
      },
    });

    res.json({ message: 'Diplomacia deleted successfully' });
  } catch (error) {
    console.error('Error deleting diplomacia:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};


export default {
  createDiplomacia,
  getAllDiplomacias,
  getDiplomaciaById,
  updateDiplomacia,
  deleteDiplomacia,
};

