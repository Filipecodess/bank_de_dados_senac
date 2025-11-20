# 🍔 Banco de Dados - iFood Study

Este repositório contém o projeto de banco de dados relacional desenvolvido para um sistema inspirado no **iFood**, com foco educacional. O objetivo é praticar **modelagem de dados**, **DDL**, **DML** e consultas SQL dentro de um cenário realista que envolve clientes, restaurantes, pratos e pedidos.

---

## 🎯 Objetivo do Projeto

Este projeto foi criado para aplicar os fundamentos essenciais de SQL enquanto desenvolvo um banco de dados completo do zero. Durante o processo, aprendi a:

* Estruturar tabelas relacionais (Clientes, Restaurantes, Pratos, Pedidos, Endereços etc.)
* Criar relacionamentos entre tabelas usando chaves primárias e estrangeiras
* Diferenciar e aplicar comandos de **DDL** e **DML** na prática
* Resolver erros comuns de sintaxe e restrições do MySQL

---

## 📚 Conteúdo Educacional: DDL vs DML

Para construir e manipular nosso banco inspirado no iFood, utilizamos dois grupos fundamentais de comandos SQL.

---

### 🧱 1. DDL — *Data Definition Language*

Define e altera a estrutura do banco de dados. É usada para criar, modificar ou excluir tabelas, colunas e restrições.

**Principais comandos:** `CREATE`, `ALTER`, `DROP`, `TRUNCATE`.

**Exemplo prático (extraído do arquivo `schema.sql`):**

```sql
CREATE TABLE restaurante (
    id_rest INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    categoria VARCHAR(80),
    avaliacao_media DECIMAL(2,1) DEFAULT 0.0,
    cidade VARCHAR(100)
);
```

Esse comando cria a tabela que armazena os restaurantes cadastrados na plataforma.

---

### 🍽️ 2. DML — *Data Manipulation Language*

Manipula os dados dentro das tabelas. É usada para cadastrar clientes, registrar pedidos, adicionar pratos etc.

**Principais comandos:** `INSERT`, `UPDATE`, `DELETE`, `MERGE`.

**Exemplo prático (extraído do arquivo `data.sql`):**

```sql
INSERT INTO prato (id_rest, nome, descricao, preco) 
VALUES (1, 'PF de Carne', 'Prato feito com arroz, feijão e carne', 18.50);
```

Esse comando insere um prato no cardápio de um restaurante.

---

## ▶️ Como Executar

1. Acesse a pasta raíz do repositório.
2. Baixe ou copie os arquivos SQL.
3. No MySQL Workbench (ou outro gerenciador), execute:

