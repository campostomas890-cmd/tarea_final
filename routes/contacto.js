const express = require('express');
const nodemailer = require('nodemailer');
const router = express.Router();

function escapeHtml(value) {
  return value.replace(/[&<>"']/g, function(character) {
    return {
      '&': '&amp;',
      '<': '&lt;',
      '>': '&gt;',
      '"': '&quot;',
      "'": '&#39;'
    }[character];
  });
}

router.post('/', async function(req, res, next) {
  const nombre = typeof req.body.nombre === 'string' ? req.body.nombre.trim() : '';
  const apellido = typeof req.body.apellido === 'string' ? req.body.apellido.trim() : '';
  const email = typeof req.body.email === 'string' ? req.body.email.trim() : '';
  const mensaje = typeof req.body.mensaje === 'string' ? req.body.mensaje.trim() : '';

  if (!nombre || !email || !mensaje || !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email)) {
    return res.redirect('/?contacto=error#conocenos');
  }

  if (!process.env.SMTP_HOST || !process.env.SMTP_USER || !process.env.SMTP_PASS) {
    return next(new Error('Falta configurar SMTP_HOST, SMTP_USER o SMTP_PASS para enviar el formulario de contacto.'));
  }

  const port = Number(process.env.SMTP_PORT || 587);
  const transporter = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port,
    secure: port === 465,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS
    }
  });

  try {
    await transporter.sendMail({
      from: process.env.SMTP_FROM || process.env.SMTP_USER,
      to: process.env.SMTP_TO || process.env.SMTP_USER,
      replyTo: email,
      subject: 'Contacto desde la web',
      text: `${nombre} ${apellido} (${email}) envió este mensaje:\n\n${mensaje}`,
      html: `<p><strong>Nombre:</strong> ${escapeHtml(nombre)} ${escapeHtml(apellido)}</p>` +
        `<p><strong>Email:</strong> ${escapeHtml(email)}</p>` +
        `<p><strong>Mensaje:</strong><br>${escapeHtml(mensaje).replace(/\r?\n/g, '<br>')}</p>`
    });
    return res.redirect('/?contacto=enviado#conocenos');
  } catch (error) {
    return next(error);
  }
});

module.exports = router;
