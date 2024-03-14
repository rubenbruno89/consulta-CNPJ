# consulta-CNPJ
Script em Lote para consulta de cnpj
Este script em lotes (batch script) é projetado para consulta de CNPJ utilizando a API do site "Receita WS" e exibição dos dados retornados. Abaixo está uma descrição linha por linha do que o script faz:

1. `@echo off`: Desativa a exibição dos comandos no prompt de comando do Windows.

2. `cls`: Limpa a tela do prompt de comando.

3. `:loop`: Define um rótulo chamado "loop", que será usado para criar um loop infinito.

4. `echo ==========================`: Exibe uma linha de igualdades para destacar o início da consulta.

5. `echo   Consulta de CNPJ`: Exibe um cabeçalho indicando que se trata de uma consulta de CNPJ.

6. `echo ==========================`: Exibe outra linha de igualdades para completar o cabeçalho.

7. `set /p cnpj=Digite o cnpj sem ponto:`: Solicita que o usuário digite o CNPJ sem pontos e armazena o valor digitado na variável de ambiente "cnpj".

8. `curl "https://www.receitaws.com.br/v1/cnpj/%cnpj%"`: Utiliza o utilitário curl para fazer uma requisição HTTP GET para a URL da API da Receita WS, com o CNPJ digitado pelo usuário inserido na URL.

9. `| findstr /C:"nome" /C:"cnpj" /C:"situacao" /C:"data_situacao" /C:"logradouro" /C:"numero" /C:"municipio" /C:"bairro" /C:"uf" /C:"cep" /C:"telefone"`: Utiliza o comando `findstr` para filtrar e exibir apenas as linhas que contêm as strings especificadas. Essas strings correspondem aos diferentes campos de dados retornados pela API, como nome, CNPJ, situação, etc.

10. `echo.`: Exibe uma linha em branco para separar as consultas.

11. `echo PARA SAI APERTE CTRL + C`: Exibe uma mensagem informando ao usuário como sair do script (pressionando Ctrl + C).

12. `goto loop`: Retorna ao rótulo ":loop", criando assim um loop infinito para que o script continue executando até ser interrompido manualmente.

Este script é útil para fazer consultas de CNPJ de forma rápida e simples no terminal do Windows, exibindo os dados básicos retornados pela API da Receita WS.
