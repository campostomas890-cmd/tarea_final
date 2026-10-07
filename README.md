# Cervecería X

Sitio web de una cervecería artesanal desarrollado con Node.js, Express y Handlebars. Incluye secciones informativas, novedades administrables con operaciones CRUD sobre MySQL y un formulario de contacto con envío de correo SMTP.

## Requisitos

- Node.js y npm
- MySQL
- Una cuenta o servicio SMTP para probar el envío del formulario

## Instalación

1. Instalar las dependencias:

   ```sh
   npm install
   ```

2. Crear la base de datos e importar el archivo incluido:

   ```sql
   CREATE DATABASE programadores CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
   ```

   Luego, desde la terminal, importar `programadores.sql` en esa base de datos.

3. Copiar `.env.example` a `.env` y configurar las credenciales de MySQL y SMTP. La plantilla viene preparada para Mailtrap Sandbox: cargar el usuario y la contraseña SMTP de la bandeja. Los correos de prueba se capturan en Mailtrap y no se entregan a destinatarios reales. `SMTP_TO` es la dirección indicada en el mensaje y, si se omite, se usa `SMTP_USER`.

4. Iniciar la aplicación:

   ```sh
   npm start
   ```

   Abrir `http://localhost:3000`. Desde «Login» se puede registrar el primer usuario administrador; el volcado SQL no incluye una cuenta con contraseña predeterminada.

## Funcionalidades

- Navegación por las secciones Inicio, Novedades, Historia, Nosotros y Conócenos.
- Consulta de novedades en la página principal.
- Registro e inicio de sesión para administrar las novedades: listar/buscar, crear, editar y eliminar.
- Formulario de contacto con validación y envío por SMTP.

No se debe subir `.env` ni `node_modules/` al repositorio. El archivo `.env.example` contiene únicamente los nombres de las variables necesarias.
