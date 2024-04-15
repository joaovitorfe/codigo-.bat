CLS
@ECHO OFF
title COLOCAR SENHA EM PASTA
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Private goto MDLOCKER
:CONFIRM
echo Tem certeza que deseja trancar esta pasta(S/N)
set/p "cho=>"
if %cho%==S goto LOCK
if %cho%==s goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Invalid choice.
goto CONFIRM
:LOCK
ren private "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Pasta trancada
goto End
:UNLOCK
echo insira sua senha por favor
set/p "pass=>"
if NOT %pass%== COLOCA UMA SENHA AQUI! goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Private
echo Destrnacada com sucesso
goto End
:FAIL
echo Senha Incorreta
goto end
:MDLOCKER
md Private
echo Pasta criada com sucesso
goto End
:End
