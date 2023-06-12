import prisma from './prismaClient.js'

async function fillTrabajos() {
    try {
      const Descripciones = [
        "Desarrollador",
        "Diseñador gráfico",
        "Contador",
        "Abogado",
        "Médico",
        "Ingeniero civil",
        "Escritor",
        "Carpintero",
        "Electricista",
        "Chef",
        "Enfermero",
        "Arquitecto",
        "Profesor",
        "Traductor",
        "Pintor",
        "Mecánico",
        "Periodista",
        "Programador",
        "Fontanero",
        "Astrónomo",
        "Bombero",
        "Fotógrafo",
        "Psicólogo",
        "Actor",
        "Dentista",
        "Piloto",
        "Investigador",
        "Agente de viajes",
        "Dibujante",
        "Estilista",
        "Banquero",
        "Jardinero",
        "Biólogo",
        "Policía",
        "Vendedor",
        "Consultor",
        "Farmacéutico",
        "Atleta",
        "Científico",
        "Recepcionista",
        "Decorador",
        // Repite los elementos anteriores para completar la longitud 40
      ];
      
      const Sueldos = [
        50000,
        60000,
        45000,
        80000,
        70000,
        55000,
        40000,
        35000,
        45000,
        65000,
        55000,
        70000,
        50000,
        55000,
        40000,
        45000,
        60000,
        50000,
        45000,
        55000,
        60000,
        45000,
        55000,
        70000,
        60000,
        75000,
        80000,
        55000,
        45000,
        55000,
        50000,
        60000,
        45000,
        40000,
        55000,
        50000,
        45000,
        70000,
        55000,
        60000,
        45000,
        // Repite los elementos anteriores para completar la longitud 40
      ];
  
      if (Descripciones.length !== Sueldos.length) {
        console.error("Las listas no tienen la misma longitud.");
        return;
      }
  
      for (let i = 0; i < Descripciones.length; i++) {
        const valorColumna1 = Descripciones[i];
        const valorColumna2 = Sueldos[i];
  
        try {
          const nuevoRegistro = await prisma.Trabajos.create({
            data: {
              descripcion: valorColumna1,
              sueldo: valorColumna2,
              // ... más columnas y valores
            },
          });
  
          console.log("Nuevo registro creado:", nuevoRegistro);
        } catch (error) {
          console.error("Error al insertar el registro:", error);
        }
      }
    } catch (error) {
      console.error("Error al llenar la tabla:", error);
    } finally {
      await prisma.$disconnect();
    }
  }
  
  
  
  
  function generarFechaAleatoria() {
      const year = Math.floor(Math.random() * (2005 - 1970 + 1)) + 1970;
      const month = Math.floor(Math.random() * 12) + 1;
      const day = Math.floor(Math.random() * 28) + 1;
      
      const fecha = new Date(year, month - 1, day);
      
      return fecha;
    }
  
  
  async function fillPersonajes() {
      try {
        const nombresPersonajes = [
          "Elena Rivers",
          "Nathan Gallagher",
          "Sophie Parker",
          "Liam Anderson",
          "Amelia Brooks",
          "Caleb Mitchell",
          "Victoria Foster",
          "Elijah Thompson",
          "Isabella Reed",
          "Gabriel Cooper",
          "Emily Campbell",
          "Julian Martinez",
          "Scarlett Morgan",
          "Sebastian Hayes",
          "Ava Harrison",
          "Xavier Phillips",
          "Olivia Russell",
          "Maxwell Coleman",
          "Aria Peterson",
          "Ethan Wright",
          "Chloe Bennett",
          "Jackson Murphy",
          "Grace Foster",
          "Benjamin Turner",
          "Lily Simmons",
          "Daniel Ramirez",
          "Samantha Powell",
          "Henry Cox",
          "Ella Roberts",
          "Leo Richardson",
          "Stella Walker",
          "Owen Price",
          "Hannah Thompson",
          "Nathaniel Stewart",
          "Mia Cox",
          "Zachary Hughes",
          "Nora Brooks",
          "Ezra Turner",
          "Avery Morgan",
          "Andrew Phillips",
          "Violet Hayes",
          "Dominic Sullivan",
          "Mila Parker",
          "Tyler Mitchell",
          "Scarlet Adams",
          "Christopher Foster",
          "Harper Ramirez",
          "Nicholas Bennett",
          "Penelope Wright",
          "Samuel Richardson",
          "Evelyn Simmons"
          ];
        
        const objetosDistintivos = [
          "Amuleto mágico",
          "Espada legendaria",
          "Poción de curación",
          "Capa de invisibilidad",
          "Anillo de poder",
          "Varita encantada",
          "Armadura de dragón",
          "Escudo divino",
          "Botas veloces",
          "Lanza de hielo",
          "Martillo sagrado",
          "Grimorio antiguo",
          "Arco celestial",
          "Gema de teletransportación",
          "Daga envenenada",
          "Orbe de sabiduría",
          "Báculo de fuego",
          "Escudo reflectante",
          "Talismán de suerte",
          "Casco impenetrable",
          "Guantes de fuerza",
          "Flauta encantada",
          "Máscara de ilusión",
          "Bolsa de objetos infinitos",
          "Túnica de sanación",
          "Espada de luz",
          "Botella de aire comprimido",
          "Reloj temporal",
          "Armadura acuática",
          "Guantes de agilidad",
          "Anillo de invisibilidad",
          "Llave misteriosa",
          "Martillo de guerra",
          "Bálsamo revitalizante",
          "Lupa mágica",
          "Ballesta de precisión",
          "Orbe de protección",
          "Pergamino de conjuros",
          "Manto de sombras",
          "Gafas de visión nocturna",
          "Pendientes encantados",
          "Garra afilada",
          "Escudo de luz",
          "Cetro ancestral",
          "Botas de salto",
          "Colgante de resistencia",
          "Escudo de tierra",
          "Armadura celestial",
          "Anillo de telepatía",
          "Espada de veneno",
          "Amuleto de fuerza",
          ];
    
    
        for (let i = 0; i < nombresPersonajes.length; i++) {
          const valorColumna1 = nombresPersonajes[i];
          const valorColumna2 = Math.floor(Math.random() * 81) + 20;
          const valorColumna3 = generarFechaAleatoria();
          const valorColumna4 = objetosDistintivos[Math.floor(Math.random() * objetosDistintivos.length)];
    
          try {
            const nuevoRegistro = await prisma.Personajes.create({
              data: {
                nombre: valorColumna1,
                fuerza: valorColumna2,
                fecha_nacimiento: valorColumna3,
                objeto: valorColumna4,
                
                // ... más columnas y valores
              },
            });
    
            console.log("Nuevo registro creado:", nuevoRegistro);
          } catch (error) {
            console.error("Error al insertar el registro:", error);
          }
        }
      } catch (error) {
        console.error("Error al llenar la tabla:", error);
      } finally {
        await prisma.$disconnect();
      }
    }
    
    
  
    
  
    function generarFechaAleatoria2() {
      const year = Math.floor(Math.random() * (2022 - 2020 + 1)) + 2020;
      const month = Math.floor(Math.random() * 12) + 1;
      const day = Math.floor(Math.random() * 28) + 1;
    
      const fecha = new Date(year, month - 1, day);
    
      return fecha;
    }
  
    function generarFechaAleatoria3() {
      const randomYear = Math.floor(Math.random() * (2026 - 2024 + 1)) + 2024;
      const randomMonth = Math.floor(Math.random() * 12) + 1;
      const randomDay = Math.floor(Math.random() * 28) + 1;
    
      const formattedDate = `${randomYear}-${String(randomMonth).padStart(2, '0')}-${String(randomDay).padStart(2, '0')}`;
    
      if (Math.random() < 0.5) {
        return null; // Devuelve valor nulo con un 50% de probabilidad
      } else {
        return new Date(formattedDate);
      }
    }
    
    
    async function fillPersonaje_tiene_trabajo() {
      try {
        const personajesCount = 51;
        const maxTrabajosPorPersonaje = 3;
        const trabajosCount = 41;
    
        for (let i = 1; i <= personajesCount; i++) {
          const idPersonaje = i;
          const numTrabajos = getRandomNumber(1, maxTrabajosPorPersonaje);
          const trabajos = getRandomTrabajos(numTrabajos, trabajosCount);
    
          for (let j = 0; j < numTrabajos; j++) {
            const idTrabajo = trabajos[j];
    
            await prisma.Personaje_tiene_trabajo.create({
              data: {
                id_personaje: idPersonaje,
                id_trabajo: idTrabajo,
                fecha_inicio: generarFechaAleatoria2(),
                fecha_termino: generarFechaAleatoria3(),
              },
            });
          }
        }
    
        console.log('La tabla se ha llenado correctamente.');
      } catch (error) {
        console.error('Error al llenar la tabla:', error);
      } finally {
        await prisma.$disconnect();
      }
    }
  
  
  
    
    // Función para generar un número aleatorio entre un rango de valores
    function getRandomNumber(min, max) {
      return Math.floor(Math.random() * (max - min + 1)) + min;
    }
    
    // Función para generar un arreglo de trabajos aleatorios
    function getRandomTrabajos(numTrabajos, trabajosCount) {
      const trabajos = [];
      const availableTrabajos = Array.from({ length: trabajosCount }, (_, index) => index + 1);
      for (let i = 0; i < numTrabajos; i++) {
        const randomIndex = getRandomNumber(0, availableTrabajos.length - 1);
        trabajos.push(availableTrabajos[randomIndex]);
        availableTrabajos.splice(randomIndex, 1);
      }
      return trabajos;
    }
    
    
  
  
  
  
  const modeloskarts = [
      "Marvella Vortex",
      "Spectron Thunder",
      "Zephyr Blaze",
      "Velocity Prime",
      "Eclipse Vanguard",
      "Nebula Titan",
      "Horizon Nova",
      "Aerojet Enigma",
      "Phoenix Striker",
      "Nebula Blaze",
      "Quantum Racer",
      "Turbo Xcelerate",
      "Solaris Fusion",
      "Velocity Surge",
      "Electra Zephyr",
      "Hyperion Sprinter",
      "Dynamo Spark",
      "Pulse Accelerator",
      "Zenith Turbo",
      "Stellar Prodigy",
      "Quantum Aurora",
      "Nebula Elite",
      "Radiant Ignite",
      "Aerojet Thrust",
      "Eclipse Phantom",
      "Orion Blitz",
      "Spectron Thunderbolt",
      "Velocity Viper",
      "Hyperion Stinger",
      "Phoenix Blitz",
      "Solaris Flash",
      "Nebula Jetstream",
      "Quantum Nova",
      "Turbostrike Raptor",
      "Electra Thunderstorm",
      "Stellar Eclipse",
      "Dynamo Blitz",
      "Pulse Velocity",
      "Zenith Ignition",
      "Radiant Meteor"
    ];
  
    const colores = [
      "blanco",
      "negro",
      "gris",
      "plateado",
      "rojo",
      "azul",
      "verde",
      "amarillo",
      "naranja",
      "morado",
      "rosa",
      "marrón",
      "beige",
      "turquesa",
      "violeta",
      "celeste",
      "dorado",
      "plata",
      "bronce"
    ];
  
    async function fillKarts() {
      try {
        for (let i = 0; i < modeloskarts.length; i++) {
          const valorColumna1 = modeloskarts[i];
          const valorColumna2 = colores[Math.floor(Math.random() * colores.length)];
          const valorColumna3 = Math.floor(Math.random() * 121) + 120;
          const valorColumna4 = Math.floor(Math.random() * 51) + 1;
          try {
            const nuevoRegistro = await prisma.Karts.create({
              data: {
                modelo: valorColumna1,
                color: valorColumna2,
                velocidad_maxima: valorColumna3,
                id_personaje: valorColumna4,
                
                // ... más columnas y valores
              },
            });
    
            console.log("Nuevo registro creado:", nuevoRegistro);
          } catch (error) {
            console.error("Error al insertar el registro:", error);
          }
        }
      } catch (error) {
        console.error("Error al llenar la tabla:", error);
      } finally {
        await prisma.$disconnect();
      }
    }
    
  
  
  
  
  const nombresReinos = [
      'Pythonia',
      'Javaland',
      'Rubinia',
      'Cplusplusia',
      'JavaScriptia',
      'Gothamlisp',
      'Swiftopia',
      'Perlania',
      'Schemeland',
      'Csharpdom'
    ];
  
    const ubicacionesReinos = [
      'Montañas de la Programación',
      'Valle de los Algoritmos',
      'Isla del Código',
      'Ciudad de los Compiladores',
      'Desierto de los Sintaxis',
      'Bosque de la Programacion',
      'Lago de los Frameworks',
      'Meseta de los Paradigmas',
      'Archipiélago de las Librerías',
      'Cañón de los Debuggers'
    ];
  
  
  
    async function fillReinos() {
      try {
        for (let i = 0; i < nombresReinos.length; i++) {
          const valorColumna1 = nombresReinos[i];
          const valorColumna2 = ubicacionesReinos[i];
          const valorColumna3 = Math.floor(Math.random() * (10001 - 3500) + 3500);
          try {
            const nuevoRegistro = await prisma.Reinos.create({
              data: {
                nombre: valorColumna1,
                ubicacion: valorColumna2,
                superficie: valorColumna3,
                
              },
            });
    
            console.log("Nuevo registro creado:", nuevoRegistro);
          } catch (error) {
            console.error("Error al insertar el registro:", error);
          }
        }
      } catch (error) {
        console.error("Error al llenar la tabla:", error);
      } finally {
        await prisma.$disconnect();
      }
    }
    
  
  
  function generartimestamp() {
      const inicio = new Date(2010, 0, 1); // Fecha de inicio: 1 de enero de 2010
      const fin = new Date(2022, 11, 31); // Fecha de fin: 31 de diciembre de 2022
    
      const tiempoInicio = inicio.getTime(); // Obtener el valor de tiempo en milisegundos de la fecha de inicio
      const tiempoFin = fin.getTime(); // Obtener el valor de tiempo en milisegundos de la fecha de fin
    
      const tiempoAleatorio = Math.random() * (tiempoFin - tiempoInicio) + tiempoInicio; // Generar un valor de tiempo aleatorio entre el inicio y el fin
    
      const fechaAleatoria = new Date(tiempoAleatorio); // Crear un objeto de fecha a partir del valor de tiempo aleatorio
    
      return fechaAleatoria.toISOString(); // Devolver la fecha en formato de fecha y hora (datetime) ISO 8601
    }
  async function fillPersonaje_habita_reino() {
      try {
        const personajesCount = 51;
        const maxreinos_habitados_PorPersonaje = 10;
        const reinoscount = 10;
    
        for (let i = 1; i <= personajesCount; i++) {
          const idPersonaje = i;
          const numreinos = getRandomNumber(1, maxreinos_habitados_PorPersonaje);
          const reinos = getRandomTrabajos(numreinos, reinoscount);
    
          for (let j = 0; j < numreinos; j++) {
            const idreino = reinos[j];
    
            await prisma.Personaje_habita_reino.create({
              data: {
                id_personaje: idPersonaje,
                id_reino: idreino,
                fecha_registro: generartimestamp(),
                es_gobernante: Boolean(Math.round(Math.random())),
              },
            });
          }
        }
    
        console.log('La tabla se ha llenado correctamente.');
      } catch (error) {
        console.error('Error al llenar la tabla:', error);
      } finally {
        await prisma.$disconnect();
      }
    }
    
  
  
  
  
  async function fillDefensas() {
      try {
        const var_Defensas = [
          "Escudo de la Eternidad",
          "Manto de las Sombras",
          "Muralla de Fuego",
          "Esfera de Protección",
          "Campo de Fuerza Arcano",
          "Barrera de Hielo",
          "Escudo de Luz Divina",
          "Velo de Invisibilidad",
          "Red de Teleportación",
          "Escudo de Resonancia",
          "Campo de Distorsión Temporal",
          "Barrera de Viento",
          "Amuleto de Absorción",
          "Campo de Protección Electromagnética",
          "Escudo de Tierra y Piedra",
          "Aura de Invulnerabilidad",
          "Guardianes del Destino",
          "Campo de Energía Vital",
          "Espejo de Reflexión",
          "Coraza de Oscuridad",
        ];
    
    
        for (let i = 0; i < var_Defensas.length; i++) {
          const valorColumna1 = var_Defensas[i];
    
          try {
            const nuevoRegistro = await prisma.Defensas.create({
              data: {
                defensa: valorColumna1,
                // ... más columnas y valores
              },
            });
    
            console.log("Nuevo registro creado:", nuevoRegistro);
          } catch (error) {
            console.error("Error al insertar el registro:", error);
          }
        }
      } catch (error) {
        console.error("Error al llenar la tabla:", error);
      } finally {
        await prisma.$disconnect();
      }
    }
  
  
  
  async function fill_Defensa_reino() {
      try {
        const numReinos = 10; // Número de reinos (id_reino) disponibles
        const numDefensas = 20; // Número de defensas (id_defensa) disponibles
    
        for (let i = 1; i <= numReinos; i++) {
          const idReino = i;
    
          // Generar un número aleatorio para determinar cuántas defensas asignar a cada reino
          const numDefensasAsignadas = Math.floor(Math.random() * (numDefensas - 1)) + 1;
    
          // Generar un conjunto de índices de defensas aleatorios sin repetición
          const indicesDefensas = new Set();
          while (indicesDefensas.size < numDefensasAsignadas) {
            const indiceDefensa = Math.floor(Math.random() * numDefensas) + 1;
            indicesDefensas.add(indiceDefensa);
          }
    
          // Insertar los registros en la tabla
          for (const idDefensa of indicesDefensas) {
            await prisma.Defensa_reino.create({
              data: {
                id_reino: idReino,
                id_defensa: idDefensa,
              },
            });
          }
        }
    
        console.log('La tabla se ha llenado correctamente.');
      } catch (error) {
        console.error('Error al llenar la tabla:', error);
      } finally {
        await prisma.$disconnect();
      }
    }
    
  
  
  
  async function fill_diplomacias() {
      try {
        const numReinos = 10; // Número de reinos disponibles (id_reino_1 e id_reino_2)
    
        const combinaciones = [];
    
        // Generar todas las combinaciones posibles
        for (let idReino1 = 1; idReino1 <= numReinos; idReino1++) {
          for (let idReino2 = idReino1 + 1; idReino2 <= numReinos; idReino2++) {
            combinaciones.push([idReino1, idReino2]);
          }
        }
    
        // Mezclar aleatoriamente las combinaciones
        for (let i = combinaciones.length - 1; i > 0; i--) {
          const j = Math.floor(Math.random() * (i + 1));
          [combinaciones[i], combinaciones[j]] = [combinaciones[j], combinaciones[i]];
        }
    
        // Insertar las combinaciones en la tabla
        for (const [idReino1, idReino2] of combinaciones) {
          const esAliado = Math.random() < 0.5; // Generar un valor booleano aleatorio
    
          await prisma.Diplomacias.create({
            data: {
              id_reino_1: idReino1,
              id_reino_2: idReino2,
              es_aliado: esAliado,
            },
          });
        }
    
        console.log('La tabla se ha llenado correctamente.');
      } catch (error) {
        console.error('Error al llenar la tabla:', error);
      } finally {
        await prisma.$disconnect();
      }
    }
    
    async function main() {
        await fillTrabajos();
        await fillPersonajes();
        await fillPersonaje_tiene_trabajo();
        await fillKarts();
        await fillReinos();
        await fillPersonaje_habita_reino();
        await fillDefensas();
        await fill_Defensa_reino();
        await fill_diplomacias();

      }
      
      main().catch((error) => {
        console.error('An error occurred:', error);
      });