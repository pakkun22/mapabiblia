# 🗺️ Mapa Bíblico — versão gratuita

## O que esta versão faz
- Funciona no celular e computador.
- Linha do tempo.
- Pesquisa.
- Filtro por período.
- Navegação por personagem.
- Fichas de estudo.
- Todos os integrantes podem adicionar estudos.
- Banco compartilhado via Supabase.

## Custo
A arquitetura foi escolhida para funcionar nos planos gratuitos:
- GitHub Pages: hospedagem do site.
- Supabase Free: banco de dados e, se desejado depois, autenticação.

## Publicação
1. Crie uma conta gratuita no GitHub.
2. Crie um repositório público chamado `mapa-biblico`.
3. Envie `index.html`, `config.js` e `supabase.sql`.
4. No repositório, vá em Settings > Pages e publique a branch principal.
5. Crie uma conta gratuita no Supabase e um projeto.
6. No SQL Editor do Supabase, cole e execute o conteúdo de `supabase.sql`.
7. Em Settings > API, copie a Project URL e a chave pública `anon`.
8. Abra `config.js` e substitua:
   - `https://SEU-PROJETO.supabase.co`
   - `SUA-ANON-KEY`
9. Salve o arquivo no GitHub. O GitHub Pages republicará o site.

O endereço final será parecido com:
`https://SEU-USUARIO.github.io/mapa-biblico/`

## Importante
A política SQL desta primeira versão permite que qualquer visitante do link leia e crie estudos. Ela NÃO permite apagar estudos. Para um grupo pequeno, isso é simples e prático. Se quiser controle de acesso, podemos adicionar login gratuito depois.

## Limite
O Supabase Free é suficiente para um projeto pequeno como este, mas possui limites de uso e pode pausar projetos inativos. Consulte a documentação atual do Supabase antes de depender dele para algo crítico.
