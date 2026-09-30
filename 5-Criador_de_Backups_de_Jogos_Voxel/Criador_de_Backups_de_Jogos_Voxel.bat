@echo off
@chcp 65001 >nul

mode 82,30
color 06
title Backup dos Jogos Voxel

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

set backupDirMJExist=0
set backupDirMBExist=0
set backupDirHExist=0

if %jogob%==1 (
    if exist "%homedrive%\Users\%username%\AppData\Roaming\.minecraft\saves\*" (
        %backupDirMJExist%=1
    )
    if exist "%homedrive%\Users\%username%\AppData\Roaming\.sklauncher\instances\*\saves\*" (
        %backupDirMJExist%=1
    )
    else (
        %backupDirMJExist%=0
        echo ERRO! O Diretório do Jogo não existe. Verifique sua Pasta de Usuário ou sua Unidade de Disco e tente novamente.
    )
)

if %backupDirMJExist%==1 (
    md "%backupDir%\Minecraft Java Backups"
    xcopy "%homedrive%\Users\%username%\AppData\Roaming\.minecraft\saves\*" "%backupDir%\Minecraft Java Backups" /E /C /H /-Y
)



if %jogob%==2 (
    if exist "%homedrive%\Users\%username%\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\minecraftWorlds\*" (
        backupDirMBExist=1
    )
    else (
        %backupDirMBExist%=0
        echo ERRO! O Diretório do Jogo não existe. Verifique sua Pasta de Usuário ou sua Unidade de Disco e tente novamente.
    )
)

if %backupDirMBExist%==1 (
    md "%backupDir%\Minecraft Bedrock Backups"
    xcopy "%homedrive%\Users\%username%\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\minecraftWorlds\*" "%backupDir%\Minecraft Bedrock Backups" /E /C /H /-Y
)



if %jogob%==3 (
    if exist "%homedrive%\Users\%username%\AppData\Roaming\Hytale\UserData\Saves\*" (
        %backupDirHExist%=1
    )
    else (
        %backupDirHExist%=0
        echo ERRO! O Diretório do Jogo não existe. Verifique sua Pasta de Usuário ou sua Unidade de Disco e tente novamente.
    )
)

if %backupDirHExist%=1 (
    md "%backupDir%\Hytale Backups"
    xcopy "%homedrive%\Users\%username%\AppData\Roaming\Hytale\UserData\Saves\*" "%backupDir%\Hytale Backups" /E /C /H /-Y
)



if %jogob%==4 (
    if exist "%homedrive%\Users\%username%\AppData\Roaming\.minecraft\saves\*" (
        if exist "%homedrive%\Users\%username%\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\minecraftWorlds\*" (
            if exist "%homedrive%\Users\%username%\AppData\Roaming\Hytale\UserData\Saves\*" (
                %backupDirMJExist%=1
                %backupDirMBExist%=1
                %backupDirHExist%=1
            )
            else (
                %backupDirHExist%=0
                echo ERRO! O Diretório do Jogo 'Hytale' não existe. Verifique sua Pasta de Usuário ou sua Unidade de Disco e tente novamente.
            )
        )
        else (
            %backupDirMBExist%=0
            echo ERRO! O Diretório do Jogo 'Minecraft Bedrock' não existe. Verifique sua Pasta de Usuário ou sua Unidade de Disco e tente novamente.
        )
    )
    else (
        %backupDirMJExist%=0
        echo ERRO! O Diretório do Jogo 'Minecraft Java' não existe. Verifique sua Pasta de Usuário ou sua Unidade de Disco e tente novamente.
    )
    if exist "%homedrive%\Users\%username%\AppData\Roaming\.sklauncher\instances\*\saves\*" (
        %backupDirMJExist%=1
    )
)

if %backupDirMJExist%==1 (
    if %backupDirMBExist%==1 (
        if %backupDirHExist%==1 (
            md "%backupDir%\Minecraft Java Backups"
            xcopy "%homedrive%\Users\%username%\AppData\Roaming\.minecraft\saves\*" "%backupDir%\Minecraft Java Backups" /E /C /H /-Y

            md "%backupDir%\Minecraft Bedrock Backups"
            xcopy "%homedrive%\Users\%username%\AppData\Local\Packages\Microsoft.MinecraftUWP_8wekyb3d8bbwe\LocalState\games\com.mojang\minecraftWorlds\*" "%backupDir%\Minecraft Bedrock Backups" /E /C /H /-Y

            md "%backupDir%\Hytale Backups"
            xcopy "%homedrive%\Users\%username%\AppData\Roaming\Hytale\UserData\Saves\*" "%backupDir%\Hytale Backups" /E /C /H /-Y
        )
    )
)



cls
echo Backup concluído com sucesso!
echo Pressione qualquer tecla para sair...

pause >nul
exit
