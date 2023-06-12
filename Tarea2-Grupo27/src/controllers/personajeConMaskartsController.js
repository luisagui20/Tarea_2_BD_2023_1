import prisma from '../prismaClient.js';

const getPersonajeConMasKarts = async (req, res) => {
  try {
    const personajesConKarts = await prisma.Personajes.findMany({
      include: {
        karts: true,
      },
    });

    const personajeConMasKarts = personajesConKarts.reduce((max, personaje) => {
      if (personaje.karts.length > max.karts.length) {
        return personaje;
      }
      return max;
    });

    if (!personajeConMasKarts) {
      return res.status(404).json({ error: 'No se encontró ningún personaje con karts' });
    }

    res.json({
      nombre: personajeConMasKarts.nombre,
      cantidadKarts: personajeConMasKarts.karts.length,
    });
  } catch (error) {
    console.error('Error getting personaje con más karts:', error);
    res.status(500).json({ error: 'Error interno del servidor' });
  }
};

export default {
  getPersonajeConMasKarts
};
  