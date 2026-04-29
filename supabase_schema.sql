-- Ejecutar en Supabase SQL Editor.
create table if not exists public.app_state (
  id text primary key,
  data jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

create or replace function public.set_updated_at()
returns trigger language plpgsql as $$
begin
  new.updated_at = now();
  return new;
end $$;

drop trigger if exists set_app_state_updated_at on public.app_state;
create trigger set_app_state_updated_at
before update on public.app_state
for each row execute function public.set_updated_at();

alter table public.app_state enable row level security;

drop policy if exists app_state_select on public.app_state;
drop policy if exists app_state_insert on public.app_state;
drop policy if exists app_state_update on public.app_state;

create policy app_state_select on public.app_state
  for select using (true);
create policy app_state_insert on public.app_state
  for insert with check (true);
create policy app_state_update on public.app_state
  for update using (true) with check (true);

insert into public.app_state (id, data)
values ('pipeline', '{}'::jsonb)
on conflict (id) do nothing;
