# CRUD de Eventos

CRUD de eventos contendo Nome, Idade, Gênero: [Masculino, Feminino, Outro], Categoria: [Organização, Visitante, Parceiro], Endereço Rua, Endereço Bairro, Endereço Cep, Endereço Número ,Endereço Estado e até 5 Telefones com máscara.

[![rubyBadge](https://img.shields.io/badge/Ruby-2.4.10-5a4272)](https://ruby-doc.org/stdlib-2.4.10/)
[![railsBadge](https://img.shields.io/badge/Rails-4.2.11-5a4272)](https://rubygems.org/gems/rails/versions/4.2.11)
[![postgresqlBadge](https://img.shields.io/badge/PostgreSQL-12.4.0-5a4272)](https://www.postgresql.org/docs/12/index.html)
[![pgBadge](https://img.shields.io/badge/pg-0.20.0-5a4272)](https://rubygems.org/gems/pg/versions/0.20.0)
[![bootstrapBadge](https://img.shields.io/badge/Bootstrap-4.5.2-5a4272)](https://rubygems.org/gems/bootstrap/versions/4.5.2)

## :zap: Getting Started

1. Baixe esse repositório utilizando o comando git clone:
<pre><code>git clone https://github.com/TheNamori/CRUD-de-Eventos.git</code></pre>

2. Instalar dependências da aplicação:
<pre><code>cd CRUD-de-Eventos/
bundle install</code></pre>

3. Declarar variaveis de ambiente em um arquivo .env:
<pre>
  <code>CRUD-DE-EVENTOS_DATABASE_USERNAME=#{DATABASE USERNAME} 
  CRUD-DE-EVENTOS_DATABASE_PASSWORD=#{DATABASE PASSWORD}</code>
</pre>

4. Configurar Banco de Dados:
<pre><code>rake db:create db:migrate db:seed</code></pre>

5. Rode a aplicação `rails server`.

## :ballot_box_with_check: To Do List

- [x] Deve ser possível rodar a aplicação;
- [x] Deve ser possível criar um Participante;
- [x] O telefone de um participante deve possuir Máscara;
- [x] Deve ser possível Adicionar mais de um telefone a um participante;
- [x] Não Deve ser possível adicionar mais que cinco telefones a um participante;
- [x] Deve ser possível Listar todos os participantes;
- [x] Deve ser possível Editar um participante;
- [x] Deve ser possível Excluir um participante;
- [x] Tela: Adicionar em bootstrap;
- [x] Tela: Editar em bootstrap;
- [x] Tela: Exibir em bootstrap;
- [x] Tela: Listar em bootstrap;
