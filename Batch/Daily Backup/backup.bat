@REM @author bsantos.cpp@gmail.com

ECHO OFF
SETLOCAL ENABLEDELAYEDEXPANSION

@REM Diretórios utilizados
set arquivos=C:\source\
set destino=C:\backup\

@REM Pegando a data do dia anterior em mm-dd-yyyy
for /F %%i In ('powershell -Command "& {$date = Get-Date; $date = $date.AddDays(-1); $date.ToString('MM-dd-yyyy')}"') do set yesterday_date=%%i

@REM Criando o nome do novo diretório no formato backup_aaaammdd
for /F "tokens=1,2,3 delims=-" %%i In ("%yesterday_date%") do set novo_diretorio=backup_%%k%%i%%j

if exist %destino% goto GO
:GO

@REM Cria nova pasta
mkdir %destino%%novo_diretorio%

@REM Copia os arquivos para a nova pasta criada
xcopy %arquivos%* %destino%%novo_diretorio% /s /d:%yesterday_date% /y /c /v /r

echo Arquivos copiados com sucesso, Da pasta %arquivos% para %destino%%novo_diretorio%
echo.

pause