# Pipeline comercial Clinicos IPS - Vercel multiusuario

Paquete generado usando la versión cargada por Karen (`preview (24).html`).

## Archivos

- `index.html`: aplicación principal.
- `config.js`: credenciales públicas de Supabase para activar modo multiusuario.
- `config.example`: plantilla de configuración.
- `supabase_schema.sql`: tabla y políticas para guardar el estado compartido.
- `supabase_seed.sql`: fila inicial del estado.
- `vercel.json`: configuración básica para Vercel.

## Publicar en GitHub + Vercel

1. Sube todos estos archivos a la raíz del repositorio.
2. En Supabase, abre el SQL Editor y ejecuta `supabase_schema.sql`.
3. Ejecuta `supabase_seed.sql`.
4. En Supabase > Project Settings > API, copia:
   - Project URL
   - anon public key
5. En `config.js`, pega esos valores.
6. Haz commit y deploy en Vercel.

Si `config.js` queda vacío, la app funciona en modo local del navegador; con Supabase configurado, los cambios quedan compartidos entre usuarios.
