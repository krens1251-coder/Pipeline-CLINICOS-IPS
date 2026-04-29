-- Crea la fila compartida inicial. Ejecutar después de supabase_schema.sql.
insert into public.app_state (id, data, updated_at)
values ('pipeline', '{}'::jsonb, now())
on conflict (id) do nothing;
