insert into public.app_state (key, data)
values ('clinicos_pipeline_rebuilt_v3', '{}'::jsonb)
on conflict (key) do nothing;
