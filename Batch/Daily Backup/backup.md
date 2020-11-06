Algoritmo .bat que cria um backup dos arquivos criados e modificados a partir do dia anterior, ou seja, pode ser usado como um backup diário.

- Como funcina?

Este algoritmo funciona apenas para máquinas Windows, já que um arquivo .bat utiliza os comandos do prompt de comando.

Segui estes passos:
- - Setar em variáveis o diretório dos arquivos a serem copiados e o diretório final de backup.
- - Pegar a data do dia anterior no formaro MM-dd-yyyy (para ser usado como parâmetro da data de modificação)
- - Definir o nome do novo diretório na pasta de backup com um nome + data
- - Copiar os arquivos usando o comando xcopy


```bat
@REM Diretórios utilizados
set arquivos=C:\source\
set destino=C:\backup\
```

Para pegar a data do dia anterior, foi preciso utilizar comandos do PowerShell do Windows, já que o prompt não disponibilizava uma solução pra isso.

```bat
@REM Pegando a data do dia anterior em mm-dd-yyyy
for /F %%i In ('powershell -Command "& {$date = Get-Date; $date = $date.AddDays(-1); $date.ToString('MM-dd-yyyy')}"') do set yesterday_date=%%i
```

E assim, usamos o comando para fazer a cópia

```bat
@REM Copia os arquivos para a nova pasta criada
xcopy %arquivos%* %destino%%novo_diretorio% /s /d:%yesterday_date% /y /c /v /r
```

OBS: O parâmetro "/d" é o que define que serão copiados os arquivos modificados a partir de determinada data
