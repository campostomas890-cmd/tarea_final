var express = require('express');
var router = express.Router();
<<<<<<< HEAD
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


=======

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', {
    title: 'Express',
    contactoEnviado: req.query.contacto === 'enviado',
    contactoError: req.query.contacto === 'error'
  });
});

>>>>>>> 3f9248e34535cfc71dca27efb323b9bdaebaea10
module.exports = router;
