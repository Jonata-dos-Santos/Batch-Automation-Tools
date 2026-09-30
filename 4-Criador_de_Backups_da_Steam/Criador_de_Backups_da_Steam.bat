@echo off
chcp 65001 >nul

mode 50,20
color 09
title  

set data=%date:/=-%
set hora=%time::=-%
set tempo=%data%_%hora:~0,8%

:inicio

if exist "D:\Backups Steam Local" (

    if exist "C:\Program Files (x86)\Steam\userdata" (

        if exist "D:\SteamLibrary\steamapps\common\Mighty Goose\storage.dat" (
        tar -a -cf "D:\Backups Steam Local\Mighty Goose\Save Mighty Goose %tempo%.zip" -C "D:\SteamLibrary\steamapps\common\Mighty Goose" "storage.dat"
        )
        else (
            echo O seu save do Mighty Goose não foi encontrado.
        )

        if exist "C:\Program Files (x86)\Steam\userdata\1254853772\1752060\remote\*.*" (
        tar -a -cf "D:\Backups Steam Local\Wild Dogs\Saves Wild Dogs %tempo%.zip" -C "C:\Program Files (x86)\Steam\userdata\1254853772\1752060\remote" "*.*"
        )
        else (
            echo Os seus saves do Wild Dogs não foram encontrados.
        )
    )
    else (
        echo ERRO! Não foi possível encontrar a pasta 'userdata' da Steam na Unidade de Disco 'C:'.
    )

)
else (
    echo ERRO! Não existe uma pasta chamada 'Backups Steam Local' na Unidade de Disco 'D:'.
)

timeout /t 5 >nul

if exist "H:\Meu Drive\Saves dos Jogos (Mobile, PC e Emuladores)\PC\Backups Steam" (

    if exist "D:\Backups Steam Local" (
        robocopy "D:\Backups Steam Local\Mighty Goose" "H:\Meu Drive\Saves dos Jogos (Mobile, PC e Emuladores)\PC\Backups Steam\Mighty Goose" "*.zip" /XO >nul

        robocopy "D:\Backups Steam Local\Wild Dogs" "H:\Meu Drive\Saves dos Jogos (Mobile, PC e Emuladores)\PC\Backups Steam\Wild Dogs" "*.zip" /XO >nul
    )
)

::NOTA: Sempre que eu quiser criar um arquivo .zip, tenho que colocar o "-a" antes do "-cf", senão ele buga
::NOTA2: O "-C" (maiúsculo, não o "-c" minúsculo) é para definir de onde o arquivo .zip vai puxar os arquivos, ou seja, ele muda temporariamente o diretório (como se fosse o comando "cd")
::NOTA3: Não posso usar mais de um "if" na mesma linha, senão ele buga, por isso eu coloquei um "if" dentro do outro (isso é o equivalente a um "&&", ou "and")
::NOTA4: O parâmetro "/XO" do "robocopy" copia apenas arquivos novos, ou seja, ele não copia arquivos nem mesmo de 1 segundo atrás, caso esses de 1 segundo atrás já existam na pasta de destino (a sintaxe do "robocopy" é: robocopy "origem" "destino" "filtro" "parâmetros", sendo o "filtro" o tipo de arquivo a ser copiado, e os "parâmetros" são as opções de cópia, como o "/XO")
::NOTA5: O comando "if" pode ter "else" dentro de outro if, assim como nos códigos acima

cls

if exist "D:\SteamLibrary\steamapps\common\Mighty Goose\storage.dat" (
    if exist "C:\Program Files (x86)\Steam\userdata\1254853772\1752060\remote\*.*" (
        echo Backups de todos os jogos feitos!
    )
)

if not exist "D:\SteamLibrary\steamapps\common\Mighty Goose\storage.dat" (
    echo Backups feitos, menos do Mighty Goose.
)

if not exist "C:\Program Files (x86)\Steam\userdata\1254853772\1752060\remote\*.*" (
    echo Backups feitos, menos do Wild Dogs.
)

timeout /t 5 >nul
cls
echo Proximos Backups em 5 minutos...

set data=%date:/=-%
set hora=%time::=-%
set tempo=%data%_%hora:~0,8%

echo Backups atuais: %tempo%

timeout /t 300 >nul

goto inicio
