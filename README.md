# 🍔 Banco de Dados - iFood Study

Este repositório contém o projeto de banco de dados relacional desenvolvido para um sistema inspirado no **iFood**, com foco educacional. O objetivo é praticar **modelagem de dados**, **DDL**, **DML** e consultas SQL dentro de um cenário realista que envolve clientes, restaurantes, pratos e pedidos.

---

## 🎯 Objetivo do Projeto

Este projeto foi criado para aplicar os fundamentos essenciais de SQL enquanto desenvolvo um banco de dados completo do zero. Durante o processo, aprendi a:

* Estruturar tabelas relacionais (Clientes, Restaurantes, Pratos, Pedidos, Endereços etc.)
* Criar relacionamentos entre tabelas usando chaves primárias e estrangeiras
* Diferenciar e aplicar comandos de **DDL** e **DML** na prática
* Resolver erros comuns de sintaxe e restrições do MySQL/phpMyadmin - Apache

---

## 📚 Conteúdo Educacional: DDL e DML

Para construir e manipular nosso banco inspirado no iFood, utilizamos dois grupos fundamentais de comandos SQL.

---

### 🧱 1. DDL — *Data Definition Language*

Define e altera a estrutura do banco de dados. É usada para criar, modificar ou excluir tabelas, colunas e restrições.
Quando você pensa na arquitetura de um banco de dados, o DDL é o conjunto de comandos que organiza essa estrutura.

**Principais comandos:** `CREATE`, `ALTER`, `DROP`, `TRUNCATE`.
*CREATE*: Cria novos objetos no banco de dados (como tabelas, índices, etc.).
*ALTER*: Modifica objetos já existentes.
*DROP*: Remove objetos do banco de dados.
*TRUNCATE*: Remove todos os dados de uma tabela, mantendo sua estrutura.

**Exemplo prático (extraído do arquivo `script_ifoodSenac.sql`):**

```sql
CREATE TABLE restaurante (
    id_rest INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    categoria VARCHAR(80) NOT NULL,
    avaliacao_media DECIMAL(2,1) DEFAULT 0.0,
    cidade VARCHAR(100) NOT NULL
);
```

Esse comando cria a tabela que armazena os restaurantes cadastrados na plataforma.

---

### 🍽️ 2. DML — *Data Manipulation Language*

Manipula os dados dentro das tabelas. É usada para cadastrar clientes, registrar pedidos, adicionar pratos etc.
Para quem lida diretamente com a gestão de dados, os comandos DML são uma ferramenta fundamental.

**Principais comandos:** `INSERT`, `UPDATE`, `DELETE`.
*INSERT*: Adiciona novos registros em uma tabela (são atribuições de uma coluna).
*UPDATE*: Atualiza dados existentes.
*DELETE*: Remove registros específicos de uma tabela.


**Exemplo prático (extraído do arquivo `script_ifoodSenac.sql`):**

```sql
INSERT INTO restaurante (nome, categoria, avaliacao_media, cidade) 
VALUES ('Bar do Zé', 'Almoço', 9.2 , 'Recife');
```

Esse comando insere caracteristica de um restaurante.

---

## ▶️ Como Executar

1. Acesse a pasta raíz do repositório.
2. Baixe ou copie os arquivos SQL.
3. No MySQL Workbench (ou outro gerenciador - no meu caso, foi usado no XAMPP - phpMyadmin), execute:

