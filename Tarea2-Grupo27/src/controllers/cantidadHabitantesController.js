import prisma from '../prismaClient.js';

const getCantidadHabitantesByReinoId = async (req, res) => {
  try {
    const { id } = req.params;

    const cantidadHabitantes = await prisma.Personaje_habita_reino.count({
      where: {
        id_reino: parseInt(id),
      },
    });

    res.json({ cantidadHabitantes });
  } catch (error) {
    console.error('Error getting cantidad de habitantes:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};

export default {
    getCantidadHabitantesByReinoId
};