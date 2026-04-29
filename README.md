# Pipeline comercial Clinicos - Multiusuario

Esta versión elimina el guardado local (`localStorage`) y usa Supabase como base compartida. Así todos los usuarios ven los mismos cambios en el link publicado.

## Archivos

- `index.html`: aplicación.
- `api/config.js`: lee variables de entorno en Vercel.
- `config.js`: opcional para pruebas locales.
- `supabase_schema.sql`: crea la tabla compartida y permisos.
- `vercel.json`: configuración para publicar como SPA.

## Configuración

1. Crear proyecto en Supabase.
2. En Supabase > SQL Editor, ejecutar `supabase_schema.sql`.
3. En Vercel, abrir el proyecto > Settings > Environment Variables y agregar:
   - `SUPABASE_URL`
   - `SUPABASE_ANON_KEY`
4. Subir estos archivos a GitHub y redeploy en Vercel.

## Importante

Si Supabase no está configurado, la app muestra una alerta y no guarda cambios en local. Esto evita que cada usuario tenga una versión distinta.
