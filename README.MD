# Desafio: Modelagem de Banco de Dados - Loja de Livros

## 📝 O que o desafio pede

1. Crie um modelo Relacional para uma loja de livros.  Descrevendo as tabelas, atributos, chaves primarias e estrangeiras. As entidades são:
•	Livro: representa um livro vendido na loja. Deve incluir informações como título, autor, editora, ISBN, número páginas, gênero preço.
•	Autor: representa um autor dos livros vendidos na loja. Deve incluir informações como nome, país de origem, título do livro.
•	Editora: representa a editora dos livros vendidos na loja. Deve incluir informações como nome, localização, livros editados.
2. Crie as relações entre as entidades de acordo com a seguinte descrição:
•	Um livro pode ser escrito por vários autores.
•	Um autor pode escrever vários livros.
•	Um livro é publicado por uma editora.
•	Uma editora pode publicar vários livros.
---

## 🛠️ O que eu fiz

Criei a estrutura do banco de dados

### 1. Esquema Relacional Desenvolvido

* **Tabela `Editora`:** Contém o ID (Chave Primária), nome e localização da empresa.
* **Tabela `Autor`:** Contém o ID (Chave Primária), nome e país de origem do escritor.
* **Tabela `Livro`:** Contém os dados técnicos da obra (Título, ISBN, Páginas, Gênero, Preço) e armazena a **Chave Estrangeira (`id_editora`)**, conectando cada livro diretamente à sua editora (resolvendo a *Obs. 02*).
* **Tabela Associativa `Livro_Autor`:** Tabela intermediária criada especificamente para ligar as Chaves Primárias de `Livro` e `Autor`, permitindo que um livro tenha múltiplos autores e um autor tenha várias obras (resolvendo a *Obs. 01*).

### 2. Script SQL de Criação

O código fonte com todos os comandos `CREATE TABLE`, definições de tipos de dados (como `INT`, `VARCHAR`, `DECIMAL`) e mapeamento de chaves primárias e estrangeiras foi adicionado a este repositório.

🔗 [Acessar o Script SQL de Criação](./squema.sql)