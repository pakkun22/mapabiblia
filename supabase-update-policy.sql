-- Permite que visitantes da aplicação colaborativa editem estudos existentes.
-- A política vale para anon e authenticated; ela não concede privilégios de banco.
-- Qualquer visitante com acesso público ao app poderá atualizar qualquer estudo.
drop policy if exists "public_update_studies" on public.studies;
grant update on table public.studies to anon, authenticated;
create policy "public_update_studies"
on public.studies
for update
to anon, authenticated
using (true)
with check (true);
