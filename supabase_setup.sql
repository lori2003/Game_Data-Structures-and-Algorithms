-- ============================================================
-- ALGO STRIKE — Setup Supabase  (esegui UNA volta)
-- Dashboard Supabase → SQL Editor → New query → incolla tutto → Run
-- Progetto: https://bwngdzoaxtyznuuhjuau.supabase.co
-- ============================================================

-- 1) Tabella che registra ogni completamento di missione
create table if not exists public.mission_completions (
  id            bigint generated always as identity primary key,
  created_at    timestamptz  not null default now(),
  player_id     text         not null,                 -- id anonimo del dispositivo (localStorage)
  player_name   text         not null default 'Anonimo',
  mission_key   text         not null,                 -- es. 'array', 'stack', 'boss'
  mission_index int          not null default 0,
  mission_title text,
  score         int          not null default 0,
  combo_max     int          not null default 0,
  accuracy      int          not null default 0,        -- percentuale 0..100
  xp            int          not null default 0
);

-- 2) Indice per la classifica (ordinata per punteggio decrescente)
create index if not exists mission_completions_score_idx
  on public.mission_completions (score desc);

-- 3) Row Level Security
alter table public.mission_completions enable row level security;

-- 4) Permessi al ruolo "anon" (la publishable key) e "authenticated"
grant usage on schema public to anon, authenticated;
grant select, insert on public.mission_completions to anon, authenticated;

-- 5) Politiche: con la chiave pubblica si può INSERIRE e LEGGERE
drop policy if exists "algostrike insert" on public.mission_completions;
create policy "algostrike insert" on public.mission_completions
  for insert to anon, authenticated
  with check (true);

drop policy if exists "algostrike read" on public.mission_completions;
create policy "algostrike read" on public.mission_completions
  for select to anon, authenticated
  using (true);

-- Fatto! Il gioco ora salverà automaticamente ogni livello completato.
-- (Nota: la publishable key è pensata per stare nel codice client; non è un segreto.)
