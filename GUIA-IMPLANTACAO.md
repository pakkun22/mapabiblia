# Atualizar o Mapa Bíblico

Este pacote contém o `index.html` atualizado e uma instrução SQL separada para permitir edição no Supabase. O código continua usando a URL e a chave pública (`anon`/publishable) já existentes em `config.js`; não use nem envie uma chave `service_role`.

## 1. Atualizar o GitHub

1. Abra o repositório `pakkun22/mapabiblia` no GitHub.
2. Substitua o `index.html` da raiz pelo arquivo deste pacote.
3. Salve a alteração com **Commit changes** na branch principal.
4. Aguarde o GitHub Pages publicar a atualização e recarregue o site.

## 2. Liberar atualização no Supabase

1. Abra o projeto Supabase usado pelo mapa e entre em **SQL Editor**.
2. Cole o conteúdo de `supabase-update-policy.sql` e execute. O `supabase.sql` da raiz também foi atualizado e pode ser usado para configurar o banco completo; ele não apaga os estudos existentes.
3. A política existente de leitura precisa continuar ativa para carregar os estudos. A política nova permite `UPDATE` para `anon` e `authenticated`, conforme o modelo público colaborativo do app.

## O que mudou

- O painel de detalhes do estudo agora mostra **Editar estudo**.
- O formulário abre preenchido com os valores atuais e salva usando `UPDATE ... WHERE id = ...`, preservando a linha existente.
- O site agora verifica se uma linha realmente foi atualizada e avisa quando a política do Supabase ainda não permite a operação.
- O formulário de adicionar continua inserindo novos estudos.
- A ordenação da linha do tempo interpreta anos `a.C.` e `d.C.` numericamente; datas sem ano reconhecível usam ordenação textual como alternativa.

Como o aplicativo é público e não tem login, qualquer pessoa que tenha acesso ao site poderá editar qualquer estudo após a política ser aplicada. Não publique o arquivo `config.js` com credenciais secretas; a chave pública usada pelo navegador é a chave publishable/anon.
