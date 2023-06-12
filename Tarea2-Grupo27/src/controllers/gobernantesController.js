import prisma from '../prismaClient.js';

const getGobernantes = async (req, res) => {
    const { id } = req.params;
  
    try {
      let gobernantes;
  
      if (id) {
        gobernantes = await prisma.Personaje_habita_reino.findMany({
          where: { id_reino: parseInt(id), es_gobernante: true },
          select: { id_personaje: true },
        });
      } else {
        gobernantes = await prisma.Personaje_habita_reino.findMany({
          where: { es_gobernante: true },
          select: { id_personaje: true, id_reino: true },
        });
      }
  
      const nombresGobernantes = await Promise.all(
        gobernantes.map(async (gobernante) => {
          const { id_personaje, id_reino } = gobernante;
          const personaje = await prisma.Personajes.findUnique({
            where: { id: id_personaje },
            select: { nombre: true },
          });
          return { id_personaje, id_reino, nombre: personaje.nombre };
        })
      );
  
      const result = id
        ? nombresGobernantes.map(({ nombre }) => ({ nombre }))
        : nombresGobernantes.map(({ id_personaje, id_reino, nombre }) => ({ id_reino, nombre }));
  
      res.json(result);
    } catch (error) {
      console.error(error);
      res.status(500).json({ error: "Ha ocurrido un error en el servidor." });
    }
  };

export default{
    getGobernantes
}