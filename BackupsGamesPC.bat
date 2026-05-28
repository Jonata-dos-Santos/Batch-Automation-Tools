@echo off
@chcp 65001 >nul

mode 82,30
color 06
title Backup de Jogos para PC

:inicio

echo                        ╔════════════════════════════════╗
echo                        ║ (1) Minecraft Java Edition     ║
echo                        ║ (2) Minecraft Bedrock Edition  ║
echo                        ║ (3) Hytale                     ║
echo                        ╠════════════════════════════════╣
echo                        ║ (4) Todos os jogos             ║
echo                        ╠════════════════════════════════╣
echo                        ║ (5) Sair                       ║ 
echo                        ╚════════════════════════════════╝

echo.

echo ╔════════════════════════════════════════════════════════════════════════════════╗
echo ║ INSTRUÇÕES E AVISOS:                                                           ║
echo ╠════════════════════════════════════════════════════════════════════════════════╣
echo ║ Se, durante o processo, parecer que travou, espere. Seus arquivos são grandes. ║
echo ║ Quando acabar, você verá a mensagem "Backup concluído com sucesso!".           ║
echo ║ QUANDO COMEÇAR O PROCESSO, NÃO FECHE ESTA JANELA ATÉ O BACKUP SER CONCLUÍDO!   ║
echo ╚════════════════════════════════════════════════════════════════════════════════╝

echo.

set /p "jogob=Escolha um número para fazer backup dos seus saves ou sair: "

if %jogob%==5 (
cls
exit
) 

if %jogob% lss 1 (
cls
goto inicio
)

if %jogob% gtr 5 (
cls
goto inicio
)

set /p "backupDir=Defina o diretório onde será salvo o backup: "
set "backupDir=%backupDir:"=%"

::set /p "backupLet=Por último, defina a letra da unidade onde será salvo o backup (ex: "C:" sem aspas) "

if %jogob%==1 (
md "%backupDir%\Minecraft Java Backups"
xcopy "%homedrive%\Users\%username%\AppData\Roaming\.minecraft\saves\*" "%backupDir%\Minecraft Java Backups" /E /C /H /-Y
)

if %jogob%==2 (
md "%backupDir%\Minecraft Bedrock Backups"
xcopy "%homedrive%\Users\%username%\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\minecraftWorlds\*" "%backupDir%\Minecraft Bedrock Backups" /E /C /H /-Y
)

if %jogob%==3 (
md "%backupDir%\Hytale Backups"
xcopy "%homedrive%\Users\%username%\AppData\Roaming\Hytale\UserData\Saves\*" "%backupDir%\Hytale Backups" /E /C /H /-Y
)

if %jogob%==4 (
md "%backupDir%\Minecraft Java Backups"
xcopy "%homedrive%\Users\%username%\AppData\Roaming\.minecraft\saves\*" "%backupDir%\Minecraft Java Backups" /E /C /H /-Y

md "%backupDir%\Minecraft Bedrock Backups"
xcopy "%homedrive%\Users\%username%\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\minecraftWorlds\*" "%backupDir%\Minecraft Bedrock Backups" /E /C /H /-Y

md "%backupDir%\Hytale Backups"
xcopy "%homedrive%\Users\%username%\AppData\Roaming\Hytale\UserData\Saves\*" "%backupDir%\Hytale Backups" /E /C /H /-Y
)

cls
echo Backup concluído com sucesso!
echo Pressione qualquer tecla para sair...

pause >nul
exit
