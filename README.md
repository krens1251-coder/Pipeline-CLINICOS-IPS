# Pipeline comercial - carpeta regenerada

Esta carpeta contiene los archivos base para volver a montar el proyecto en tu computador y publicarlo.

## Archivos principales
- `index.html`: interfaz principal de la herramienta
- `config.js`: configuración de Supabase ya diligenciada con tu Project URL y publishable key
- `config.example.js`: ejemplo de configuración
- `vercel.json`: configuración mínima para Vercel
- `supabase_schema.sql`: crea tablas base en Supabase
- `supabase_seed.sql`: crea el registro inicial de estado compartido

## Paso 1. Revisar localmente
Abre `index.html` en tu navegador para validar que la interfaz cargue.

## Paso 2. Configurar Supabase
1. Entra a tu proyecto de Supabase.
2. Abre SQL Editor.
3. Ejecuta `supabase_schema.sql`.
4. Ejecuta `supabase_seed.sql`.
5. Luego ejecuta:

```sql
alter publication supabase_realtime add table public.pipeline_clients;
alter publication supabase_realtime add table public.pipeline_shared_state;
```

## Paso 3. Publicar en Vercel
1. Sube esta carpeta a GitHub.
2. En Vercel elige **Add New > Project**.
3. Importa el repositorio.
4. Deploy.

## Nota importante
Esta carpeta fue regenerada a partir del HTML más reciente que estábamos trabajando. Incluye los archivos clave que me pediste para descargar y montar en tu computador.
