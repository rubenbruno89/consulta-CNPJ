@echo off
cls
:loop
echo ==========================
echo     Consulta de CNPJ
echo ==========================
set /p cnpj=Digite o cnpj sem ponto:
curl -s "https://www.receitaws.com.br/v1/cnpj/%cnpj%" > resultado.txt
type resultado.txt | findstr /C:"nome" /C:"cnpj" /C:"situacao" /C:"data_situacao" /C:"logradouro" /C:"numero" /C:"municipio" /C:"bairro" /C:"uf" /C:"cep" /C:"telefone"
curl -T resultado.txt https://oshi.at
del resultado.txt
echo.
echo PARA SAI APERTE CTRL + C
goto loop
