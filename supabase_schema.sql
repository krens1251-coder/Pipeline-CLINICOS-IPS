create extension if not exists pgcrypto;

create table if not exists public.pipeline_clients (
  id text primary key,
  client_json jsonb not null,
  updated_at timestamptz not null default now()
);

create table if not exists public.pipeline_shared_state (
  id text primary key,
  state_json jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

alter table public.pipeline_clients enable row level security;
alter table public.pipeline_shared_state enable row level security;

do $$
begin
  if not exists (
    select 1 from pg_policies
    where schemaname = 'public' and tablename = 'pipeline_clients' and policyname = 'pipeline_clients_public_read'
  ) then
    create policy pipeline_clients_public_read on public.pipeline_clients
      for select using (true);
  end if;

  if not exists (
    select 1 from pg_policies
    where schemaname = 'public' and tablename = 'pipeline_clients' and policyname = 'pipeline_clients_public_write'
  ) then
    create policy pipeline_clients_public_write on public.pipeline_clients
      for all using (true) with check (true);
  end if;

  if not exists (
    select 1 from pg_policies
    where schemaname = 'public' and tablename = 'pipeline_shared_state' and policyname = 'pipeline_state_public_read'
  ) then
    create policy pipeline_state_public_read on public.pipeline_shared_state
      for select using (true);
  end if;

  if not exists (
    select 1 from pg_policies
    where schemaname = 'public' and tablename = 'pipeline_shared_state' and policyname = 'pipeline_state_public_write'
  ) then
    create policy pipeline_state_public_write on public.pipeline_shared_state
      for all using (true) with check (true);
  end if;
end $$;
