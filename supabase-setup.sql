create table if not exists public.rsvps (
  id bigint generated always as identity primary key,
  family_name text not null check (char_length(trim(family_name)) between 2 and 90),
  family_key text not null unique check (char_length(trim(family_key)) between 2 and 120),
  attendees integer not null check (attendees between 1 and 15),
  created_at timestamptz not null default now()
);
alter table public.rsvps enable row level security;
revoke all on table public.rsvps from anon, authenticated;
grant insert (family_name, family_key, attendees) on table public.rsvps to anon;
drop policy if exists "Anyone can submit an RSVP" on public.rsvps;
create policy "Anyone can submit an RSVP" on public.rsvps for insert to anon
with check (char_length(trim(family_name)) between 2 and 90 and char_length(trim(family_key)) between 2 and 120 and attendees between 1 and 15);
create or replace function public.public_rsvp_totals()
returns json language sql security definer set search_path = '' stable as $$
  select json_build_object('families', count(*)::integer, 'people', coalesce(sum(attendees), 0)::integer, 'confirmations', count(*)::integer)
  from public.rsvps;
$$;
revoke all on function public.public_rsvp_totals() from public;
grant execute on function public.public_rsvp_totals() to anon, authenticated;
