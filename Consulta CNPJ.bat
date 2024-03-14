@echo off
cls
:loop
echo ==========================
echo     Consulta de CNPJ
echo ==========================
set /p cnpj=Digite o cnpj sem ponto:
curl "https://www.receitaws.com.br/v1/cnpj/%cnpj%" | findstr /C:"nome" /C:"cnpj" /C:"situacao" /C:"data_situacao" /C:"logradouro" /C:"numero" /C:"municipio" /C:"bairro" /C:"uf" /C:"cep" /C:"telefone"
echo.
echo PARA SAI APERTE CTRL + C
goto loop