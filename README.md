# api_bzsp

## Visão Geral

Este projeto visa ser um sistema de controle de estoque e orçamento para um loja de material de construções.

## Sobre

Estaremos utilizando `express`, `typescript` o frame work de abstração do banco de dados do `prisma` para o desenvolvimento. Para um melhor controle das informações que estaram transitando pelas rotas, estaremos implementando o estratégia de camadas para essa aplicação, que são:

- DTO
- Repository
- Service
- Controller
- Routes

Para a organização do projeto estamos fazendo o controle no [Issue Aqui](https://github.com/schandon/api_bzsp/issues)

## Banco de Dados

Estaremos utilizando postgres como banco de dados, inicialmente local, com a utilização do Docker
