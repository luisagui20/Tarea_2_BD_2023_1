import prisma from '../prismaClient.js';

// Create
const createJob = async (req, res) => {
  try {
    const { descripcion, sueldo } = req.body;
    const job = await prisma.Trabajos.create({
      data: {
        descripcion,
        sueldo,
      },
    });
    res.status(201).json(job);
  } catch (error) {
    console.error('Error creating job:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};

// Get all
const getJobs = async (_, res) => {
  try {
    const jobs = await prisma.Trabajos.findMany();
    res.json(jobs);
  } catch (error) {
    console.error('Error getting jobs:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};

// Get by ID
const getJobById = async (req, res) => {
  try {
    const { id } = req.params;

    if (isNaN(id) || !Number.isInteger(parseInt(id))) {
      return res.status(400).json({ error: 'Invalid ID' });
    }

    const job = await prisma.Trabajos.findUnique({
      where: { id: parseInt(id) },
    });

    if (!job) {
      return res.status(404).json({ error: 'Job not found' });
    }

    res.json(job);
  } catch (error) {
    console.error('Error getting job:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};


// Update
const updateJob = async (req, res) => {
  try {
    const { id } = req.params;
    const { descripcion, sueldo } = req.body;

    if (isNaN(id) || !Number.isInteger(parseInt(id))) {
      return res.status(400).json({ error: 'Invalid ID' });
    }

    const updatedJob = await prisma.Trabajos.update({
      where: { id: parseInt(id) },
      data: {
        descripcion,
        sueldo,
      },
    });

    if (!updatedJob) {
      return res.status(404).json({ error: 'Job not found' });
    }

    res.json(updatedJob);
  } catch (error) {
    console.error('Error updating job:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};


// Delete
const deleteJob = async (req, res) => {
  try {
    const { id } = req.params;

    if (isNaN(id) || !Number.isInteger(parseInt(id))) {
      return res.status(400).json({ error: 'Invalid ID' });
    }

    const deletedJob = await prisma.Trabajos.delete({
      where: { id: parseInt(id) },
    });

    if (!deletedJob) {
      return res.status(404).json({ error: 'Job not found' });
    }

    res.sendStatus(204);
  } catch (error) {
    console.error('Error deleting job:', error);
    res.status(500).json({ error: 'Internal server error' });
  }
};


export default {
  createJob,
  getJobs,
  getJobById,
  updateJob,
  deleteJob,
};

