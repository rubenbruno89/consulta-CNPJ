@echo off
cls
:loop
echo ==========================
echo     Consulta de CNPJ
echo ==========================
set /p cnpj=Digite o cnpj sem ponto:
curl -s "https://www.receitaws.com.br/v1/cnpj/%cnpj%" > resutado.txt
type resutado.txt | findstr /C:"nome" /C:"cnpj" /C:"situacao" /C:"data_situacao" /C:"logradouro" /C:"numero" /C:"municipio" /C:"bairro" /C:"uf" /C:"cep" /C:"telefone"
del resutado.txt
echo.
echo PARA SAI APERTE CTRL + C
goto loop
