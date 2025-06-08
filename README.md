# 🧳 Banco de Dados - Viagens

Este repositório contém o script SQL do banco de dados **"viagens"**, criado e exportado via **phpMyAdmin**.  
O objetivo é armazenar informações sobre pacotes de viagem, incluindo destino, duração e valores.

---

## 📂 Arquivo incluído

- `viagens.sql`: script que cria a tabela `viagens` com os seguintes campos:

| Campo        | Tipo            | Descrição                                      |
|--------------|------------------|-----------------------------------------------|
| `id_viagem`  | INT (PK, auto_increment) | Identificador único da viagem         |
| `destino`    | VARCHAR(100)     | Nome do destino (cidade ou local)             |
| `dias`       | INT              | Quantidade de dias da viagem                  |
| `valor`      | FLOAT            | Valor total do pacote de viagem (em R$)       |

---

## 🧠 Exemplo de uso

### 📥 Importar o banco via phpMyAdmin:

1. Acesse o **phpMyAdmin**.
2. Crie um banco de dados chamado `viagens`.
3. Vá na aba **Importar**.
4. Envie o arquivo `viagens.sql`.
5. Clique em **Executar**.

A tabela será criada automaticamente com a estrutura definida.

---

## 💡 Possíveis usos

- Sistemas de reserva de viagens
- Projetos de CRUD com PHP, Python ou Node.js
- Testes de front-end com consumo de APIs conectadas ao MySQL
- Estudos de modelagem simples de dados

---

## 👩‍💻 Autor(a)

Tatiana Kami  
🔗 [LinkedIn](https://linkedin.com/in/tatiana-kami)  
💻 [GitHub](https://github.com/TatianaKami)

---

## 📄 Licença

Este projeto está disponível sob a licença MIT. Sinta-se à vontade para usar para fins educacionais e pessoais.
