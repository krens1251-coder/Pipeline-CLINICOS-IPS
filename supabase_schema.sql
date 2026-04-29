-- Ejecutar en Supabase SQL Editor antes de publicar en Vercel.
create table if not exists public.app_state (
  key text primary key,
  data jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.app_state enable row level security;

drop policy if exists "app_state_read_all" on public.app_state;
drop policy if exists "app_state_insert_all" on public.app_state;
drop policy if exists "app_state_update_all" on public.app_state;

create policy "app_state_read_all"
on public.app_state for select
using (true);

create policy "app_state_insert_all"
on public.app_state for insert
with check (true);

create policy "app_state_update_all"
on public.app_state for update
using (true)
with check (true);
