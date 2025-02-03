# Sistema de Gerenciamento de Ordens de Serviço para Oficina Mecânica 🚗🔧

Este projeto tem como objetivo desenvolver um sistema de controle e gerenciamento de ordens de serviços para oficinas mecânicas. Ele permite irá permitir o cadastro e gerenciamento de clientes, veículos e ordens de serviços, com funcionalidade voltadas para um ambiente eficiente e integrado.

------------------------------------------------------------------------------

## 🛠️ Tecnologias Utilizadas

Obs.: Inicialmente irei partir com essas tecnologias, a medida que for progredindo no projeto, irei adicionando novas tecnologias de acordo com a necessidade.

Backend: Node.js, Express.js
Frontend: Vue.js, TypeScript, JavaScript, HTML, CSS
Banco de Dados: MySQL
Ferramentas: DBeaver, Trello

------------------------------------------------------------------------------

  ## 📋 Funcionalidades Planejadas

  **Clientes:**
  - Cadastro de clientes com dados pessoais.
  - Listagem, edição e exclusão de clientes.

  **Veículos:**
  - Cadastro de veículos associados a um cliente.
  - Listagem e gerenciamento de veículos.

  **Ordens de Serviços (OS):**
  - Emissão de ordens de serviço para veículos.
  - Cadastro de serviços e peças associadas a uma OS.
  - Atualização de status e cálculo de valores.

  **Serviços e Peças:**
  - Cadastro de Serviços disponíveis.
  - Registro de peças e controle de estoque.

**Mecânicos**
- Cadastro e gestão de mecânicos.
- Alocação de mecânicos a ordens de serviço com papéis definidos.

------------------------------------------------------------------------------
## 🗂️ Estrutura do Banco de Dados (concluída)
- A estrutura do banco de dados foi desenvolvida para garantir a eficiência no gerenciamento das informações, com foco em integridade referencial e performace.

### Principais Características:
- **Relacionamentos** bem definidos entre clientes, veículos, ordens de serviço e peças, utilizndo chaves primárias e estrangeiras. 🔗
- **Funções armazenadas** para automatizar cálculos, como previsão de entrega.⏳
- Controle detalhado do **estoque de peças** e histórico de serviços realizados. 🛠️
------------------------------------------------------------------------------
1. Configuração do ambiente de desenvolvimento no **Visual Studio Code**.

- Inicializar o Repositório Git: Executar git init no terminal integrado do VS Code.
- riar o arquivo .gitignore: Excluir arquivos desnecessários do repositório.
- Configurar o Gerenciador de Pacotes: Executar npm init -y para criar o package.json.
-----------------------------------------------------------------------------
2. Integração com o backend utilizando **Node.js** e **Express.js**

- adicionando as bibliotecas necessárias para o backend e frontend
- Backend 

  npm install express mysql2 dotenv
  npm install --save-dev nodemon

- Frontend
  npm install vue@next vue-router@4
  npm install --save-dev vite
------------------------------------------------------------------------------
## 🗒️ Próximos Passos

Com a estrutura do banco de dados concluída, as próximas etapas incluem:

3. Desenvolvimento do frontend com **Vue.js**.
4. Implementação e testes das funcionalidades planejadas.
------------------------------------------------------------------------------
## 📆 Atualizações

As seguintes etapas foram concluídas:

- Configuração do banco de dados
- Ambiente de desenvolvimento no Visual Studio Code
- Integração do backend com Node.js e Express.js

A partir deste ponto, o foco será exclusivamente no desenvolvimento do backend, utilizando o Postman para testar as funcionalidades.
git
Última atualização: **02/02/2025**

------------------------------------------------------------------------------
## Estruturar o Projeto - Inicial

sistema-oficina-mecanica/
├── backend/
│   ├── src/
│   │   ├── controllers/
│   │   ├── routes/
│   │   ├── models/
│   │   └── index.js
│   └── .env
├── frontend/
│   ├── src/
│   │   ├── components/
│   │   ├── views/
│   │   └── App.vue
│   └── vite.config.js
├── .gitignore
├── package.json
└── README.md
