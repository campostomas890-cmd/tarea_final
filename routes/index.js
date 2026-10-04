var express = require('express');
var router = express.Router();
var programadoresModel = require('../models/programadoresModel');

router.get('/', async function(req, res, next) {
  try {
    var novedades = await programadoresModel.getProgramadores();

    res.render('index', {
      title: 'Express',
      novedades,
      contactoEnviado: req.query.contacto === 'enviado',
      contactoError: req.query.contacto === 'error'
    });
  } catch (error) {
    next(error);
  }
});


module.exports = router;
