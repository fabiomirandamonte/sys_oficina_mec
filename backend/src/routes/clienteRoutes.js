const express = require ('express');
const ClienteController = require ('controllers/clienteController')

const router = express.router();
router.get ('/', ClienteController.getAll);

module.exports = routes;