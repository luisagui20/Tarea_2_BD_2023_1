import prisma from '../prismaClient.js';

const getTop5PersonajesConMasFuerza = async (req, res) => {
    try {
      const top5Personajes = await prisma.Personajes.findMany({
        orderBy: {
          fuerza: 'desc',
        },
        take: 5,
      });
  
      res.json(top5Personajes);
    } catch (error) {
      console.error('Error getting top 5 personajes:', error);
      res.status(500).json({ error: 'Internal server error' });
    }
  };

  export default {
    getTop5PersonajesConMasFuerza
  };