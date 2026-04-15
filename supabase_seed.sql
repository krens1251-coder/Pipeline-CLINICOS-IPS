insert into public.pipeline_shared_state (id, state_json)
values ('global', '{}'::jsonb)
on conflict (id) do update
set state_json = excluded.state_json,
    updated_at = now();
