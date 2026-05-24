# Desafio: Modelagem de Banco de Dados - Loja de Livros

## 📝 O que o desafio pede

**1. Crie um modelo Relacional para uma loja de livros. Descrevendo as tabelas, atributos, chaves primarias e estrangeiras. As entidades são:**
* **Livro:** representa um livro vendido na loja. [cite_start]Deve incluir informações como título, autor, editora, ISBN, número páginas, gênero preço[cite: 5].
* **Autor:** representa um autor dos livros vendidos na loja. [cite_start]Deve incluir informações como nome, país de origem, título do livro[cite: 6].
* **Editora:** representa a editora dos livros vendidos na loja. [cite_start]Deve incluir informações como nome, localização, livros editados[cite: 7].

**2. Crie as relações entre as entidades de acordo com a seguinte descrição:**
* [cite_start]Um livro pode ser escrito por vários autores[cite: 9].
* [cite_start]Um autor pode escrever vários livros[cite: 10].
* [cite_start]Um livro é publicado por uma editora[cite: 11].
* [cite_start]Uma editora pode publicar vários livros[cite: 12].

**Obs. 01:** Observe que naturalmente você já tem 3 tabelas que são Livro, Autor e Editora. [cite_start]Resta determinar outra tabela que relacione Livro com Autor, uma vez que um livro pode ser escrito por vários autores[cite: 13, 14].

**Obs. [cite_start]02:** Como uma editora pode publicar vários livros determine uma tabela que relacione Livro e Editora[cite: 15].

---

## 🛠️ O que eu fiz

Criei a estrutura do banco de dados perfeitamente normalizada em **4 tabelas** e gerei o script SQL para automação:

### 1. Esquema Relacional Desenvolvido

* **Tabela `Editora`:** Contém o ID (Chave Primária), nome e localização da empresa.
* **Tabela `Autor`:** Contém o ID (Chave Primária), nome e país de origem do escritor.
* **Tabela `Livro`:** Contém os dados técnicos da obra (Título, ISBN, Páginas, Gênero, Preço) e armazena a **Chave Estrangeira (`id_editora`)**, conectando cada livro diretamente à sua editora (resolvendo a *Obs. 02*).
* **Tabela Associativa `Livro_Autor`:** Tabela intermediária criada especificamente para ligar as Chaves Primárias de `Livro` e `Autor`, permitindo que um livro tenha múltiplos autores e um autor tenha várias obras (resolvendo a *Obs. 01*).

### 2. Script SQL de Criação

O código fonte com todos os comandos `CREATE TABLE`, definições de tipos de dados (como `INT`, `VARCHAR`, `DECIMAL`) e mapeamento de chaves primárias e estrangeiras foi adicionado a este repositório.

🔗 [Acessar o Script SQL de Criação](./script.sql)