# 🎟️ Ingressos Evento API

API para gerenciamento de vendas de ingressos para eventos. Ele permite que os administradores realizem operações CRUD (Criar, Procurar, Atualizar, Deletar). 

## 🚀 Tecnologias Utilizadas

- [Node.js](https://nodejs.org/) (versão LTS recomendada).
- [Express](https://expressjs.com/) para a estrutura do servidor.
- Banco de Dados ([PostgreSQL](https://www.postgresql.org/)).
- [Dotenv](https://www.npmjs.com/package/dotenv) para configuração de variáveis de ambiente.

## 📌 Requisitos

Antes de iniciar, certifique-se de ter instalado:

- [Node.js](https://nodejs.org/) (LTS recomendado)
- [npm](https://www.npmjs.com/)
- [Git](https://git-scm.com/)
- Banco de dados compatível (PostgreSQL)

## 📥 Instalação

1. Clone o repositório:

   ```
   git clone https://github.com/seu-usuario/ingressos-evento-api.git
   cd ingressos-evento-api
   ```

2. Instale as dependências:

   ```
   npm install
   ```

3. Configure as variáveis de ambiente:

   Crie um arquivo `.env` na raiz do projeto e configure as variáveis necessárias, como a conexão com o banco de dados. Exemplo:

   ```env
    user: process.env.DB_USER,
    host: process.env.DB_HOST,
    database: process.env.DB_NAME,
    password: process.env.DB_PASSWORD,
    port: process.env.DB_PORT

   ```

## ▶️ Executando o Projeto

1. Inicie o servidor:

   ```
      npm run dev

   ```

3. O servidor estará rodando em `http://localhost:3000` (ou outra porta configurada).

## 🛠️ Scripts Disponíveis

- `npm run dev` / `yarn dev` - Inicia o servidor em modo de desenvolvimento.

## 📚 Endpoints Principais

| Método | Endpoint       | Descrição |
|---------|---------------|------------|
| GET     | `/ingressos`    | Lista todos os ingressos |
| POST    | `/ingressos`    | Cria um novo ingresso |
| GETById   | `/ingressos/:id`  | Lista os ingressos por id|
| POST Venda | `/ingressos`  | Vende um Ingresso |
| DELETE  | `/ingressos/:id` | Remove um ingresso |

----

Mais informações sobre os métodos CRUD em [Postman](https://documenter.getpostman.com/view/41677719/2sAYkKJdn7)
Criado por [Evelyn Oliveira](https://github.com/EvelynOliveira1200).


