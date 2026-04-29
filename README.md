# Pipeline Comercial Clinicos IPS - Vercel multiusuario

## Archivos incluidos

- `index.html`: aplicacion principal.
- `config.js`: configuracion de Supabase usada por la aplicacion.
- `config.example`: plantilla de configuracion.
- `supabase_schema.sql`: crea tabla y politicas en Supabase.
- `supabase_seed.sql`: crea el registro inicial.
- `vercel.json`: configuracion basica para Vercel.

## Pasos para publicar

1. Crear un proyecto en Supabase.
2. Abrir SQL Editor y ejecutar `supabase_schema.sql`.
3. Ejecutar `supabase_seed.sql`.
4. En Supabase, ir a Project Settings > API y copiar:
   - Project URL
   - anon public key
5. Abrir `config.js` y pegar esos valores.
6. Subir todos los archivos a un repositorio de GitHub.
7. Conectar el repositorio en Vercel y desplegar.

## Nota

Si `config.js` queda vacio, la aplicacion funciona solo en el navegador con `localStorage`.
Con Supabase configurado, los cambios se guardan en la tabla `app_state` y quedan visibles para todos los usuarios que abran la misma URL.
