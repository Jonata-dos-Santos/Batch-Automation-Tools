@echo off >nul
chcp 65001 >nul

mode 103,20
title Launcher de Programas
color 09

echo                                   ╔════════════════════════════════╗
echo                                   ║ (1) Excel (Pasta Dinheiro)     ║
echo                                   ║ (2) Photoshop                  ║
echo                                   ╠════════════════════════════════╣
echo                                   ║ (3) Sair                       ║
echo                                   ╚════════════════════════════════╝

echo.

echo ╔═════════════════════════════════════════════════════════════════════════════════════════════════════╗
echo ║ INSTRUÇÕES E AVISOS:                                                                                ║
echo ╠═════════════════════════════════════════════════════════════════════════════════════════════════════╣
echo ║ Bem vindo(a) ao Launcher de Programas! Digite um número para abrir o programa.                      ║
echo ║ Ao escolher um programa, ele será aberto e abrirá outros programas e/ou sites extras.               ║
echo ║ Os programas e/ou sites extras serão apenas para facilitar o uso do programa do número escolhido.   ║
echo ╠═════════════════════════════════════════════════════════════════════════════════════════════════════╣
echo ║ OBS: Este script foi feito primeiramente para mim (Jonata) e uso pessoal, por isso o nome do "(1)". ║
echo ║ OBS2: Este script utiliza o Brave para abrir os sites, pois usava ele na época que fiz esse script. ║
echo ╚═════════════════════════════════════════════════════════════════════════════════════════════════════╝

echo.

choice /c 123 /n /m "Escolha um número para abrir um programa com sua respectiva ajuda, ou para sair: "

::NOTA: É melhor sempre colocar as aspas duplas vazias "" no comando start antes do diretório para evitar bugs, como no código abaixo.

if %errorlevel% == 1 (
    start "" calc.exe
    start "" "%homedrive%\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe" "https://investidor10.com.br/indices/"
    start "" "%homedrive%\ProgramData\Microsoft\Windows\Start Menu\Programs\Excel" "%homedrive%\Users\%username%\Documents\Excel\Pastas de Trabalho\Dinheiro.xlsx"
)

if %errorlevel% == 2 (
    start "" "%homedrive%\Program Files\Adobe\Adobe Photoshop 2025\Photoshop.exe"
    start "" "%homedrive%\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe" "https://color.adobe.com/br//create/color-wheel"
)

if %errorlevel% == 3 (
    exit
)
