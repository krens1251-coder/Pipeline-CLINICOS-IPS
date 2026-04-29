# Pipeline comercial Clinicos IPS - Vercel multiusuario

Paquete generado con la versión subida como `preview (23).html`.

## Archivos

- `index.html`: aplicación principal basada en la versión cargada.
- `config.js`: configuración pública de Supabase para modo multiusuario.
- `config.example`: plantilla para completar credenciales.
- `supabase_schema.sql`: crea la tabla compartida y políticas básicas.
- `supabase_seed.sql`: crea el registro inicial del estado.
- `vercel.json`: configuración de despliegue para Vercel.

## Publicación en GitHub + Vercel

1. Sube todos los archivos de esta carpeta a la raíz del repositorio.
2. En Supabase, abre **SQL Editor** y ejecuta `supabase_schema.sql`.
3. Luego ejecuta `supabase_seed.sql`.
4. En **Project Settings > API**, copia:
   - Project URL
   - anon public key
5. Pega esos valores en `config.js`.
6. Haz commit al repositorio y despliega en Vercel.

## Notas

- Si `config.js` queda vacío, la app seguirá funcionando en modo local del navegador.
- Cuando `config.js` tenga las credenciales, los cambios se comparten entre usuarios.
- La estructura visual y funcional parte de la versión cargada por ti.
