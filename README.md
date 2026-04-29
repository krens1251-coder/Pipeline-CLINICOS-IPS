# Pipeline comercial Clinicos - Vercel multiusuario

Este paquete usa Supabase para que los cambios no queden solo en el navegador de cada usuario.

## Pasos

1. Crear un proyecto en Supabase.
2. Ir a SQL Editor y ejecutar `supabase_schema.sql`.
3. Ejecutar `supabase_seed.sql`.
4. En Supabase > Project Settings > API, copiar:
   - Project URL
   - anon public key
5. Editar `config.js` y pegar esos valores.
6. Subir todos los archivos a GitHub.
7. Conectar el repositorio en Vercel y desplegar.

## Importante

- Antes, la herramienta guardaba con `localStorage`, por eso cada usuario veía sus propios cambios.
- Ahora se guarda en `public.app_state`, fila `pipeline`, en Supabase.
- Si `config.js` queda vacío, la app funciona pero vuelve a modo local.
