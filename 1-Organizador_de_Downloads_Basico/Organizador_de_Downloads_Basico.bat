@echo off
@chcp 65001 >nul

mode 24,3

color 02

title  

cd %homedrive%\Users\%username%\Downloads

:inicio

:: NOTA: o batch entende errado se eu nomear com parênteses, espaços, sinal de menos, ou outros caracteres especiais, mas nessa codificação (UTF-8, no caso chcp 65001), ele entende acentos e "ç". Nesses casos, o ideal é colocar o diretório entre aspas duplas, como nos diretórios abaixo

if exist *.png (
    move /Y *.png %homedrive%\Users\%username%\Pictures)

if exist *.jpg (
    move /Y *.jpg %homedrive%\Users\%username%\Pictures)

if exist *.jpeg (
    move /Y *.jpeg %homedrive%\Users\%username%\Pictures)

if exist *.bmp (
    move /Y *.bmp %homedrive%\Users\%username%\Pictures)

if exist *.gif (
    md "%homedrive%\Users\%username%\Pictures\Gifs"
    move /Y *.gif "%homedrive%\Users\%username%\Pictures\Gifs")

if exist *.avif (
    md "%homedrive%\Users\%username%\Pictures\Avif"
    move /Y *.avif "%homedrive%\Users\%username%\Pictures\Avif")

if exist *.webp (
    md "%homedrive%\Users\%username%\Pictures\Webp"
    move /Y *.webp "%homedrive%\Users\%username%\Pictures\Webp")

if exist *.mp4 (
    move /Y *.mp4 %homedrive%\Users\%username%\Videos)

if exist *.mkv (
    move /Y *.mkv %homedrive%\Users\%username%\Videos)

if exist *.avi (
    move /Y *.avi %homedrive%\Users\%username%\Videos)

if exist *.mp3 (
    move /Y *.mp3 %homedrive%\Users\%username%\Music)

if exist *.wav (
    move /Y *.wav %homedrive%\Users\%username%\Music)

if exist *.flac (
    move /Y *.flac %homedrive%\Users\%username%\Music)

if exist *.pdf (
    move /Y *.pdf %homedrive%\Users\%username%\Documents)

if exist *.docx (
    move /Y *.docx %homedrive%\Users\%username%\Documents)

if exist *.xlsx (
    md "%homedrive%\Users\%username%\Documents\Excel\Pastas de Trabalho"
    move /Y *.xlsx "%homedrive%\Users\%username%\Documents\Excel\Pastas de Trabalho")

if exist *.cvs (
    md "%homedrive%\Users\%username%\Documents\Excel\Planilhas"
    move /Y *.cvs %homedrive%\Users\%username%\Documents\Excel\Planilhas)

if exist *.pptx (
    md "%homedrive%\Users\%username%\Documents\Apresentações"
    move /Y *.pptx %homedrive%\Users\%username%\Documents\Apresentações)

if exist *.zip (
    md "%homedrive%\Users\%username%\Downloads\Compactados"
    move /Y *.zip %homedrive%\Users\%username%\Downloads\Compactados)

if exist *.rar (
    md "%homedrive%\Users\%username%\Downloads\Compactados"
    move /Y *.rar %homedrive%\Users\%username%\Downloads\Compactados)

if exist *.7z (
    md "%homedrive%\Users\%username%\Downloads\Compactados"
    move /Y *.7z %homedrive%\Users\%username%\Downloads\Compactados)

if exist *.exe (
    md "%homedrive%\Users\%username%\Downloads\Executáveis"
    move /Y *.exe %homedrive%\Users\%username%\Downloads\Executáveis)

if exist *.msi (
    md "%homedrive%\Users\%username%\Downloads\Executáveis"
    move /Y *.msi %homedrive%\Users\%username%\Downloads\Executáveis)

if exist *.bat (
    md "%homedrive%\Users\%username%\Desktop\Meus Scripts\Scripts Baixados - Batch"
    move /Y *.bat "%homedrive%\Users\%username%\Desktop\Meus Scripts\Scripts Baixados - Batch")

if exist *.cmd (
    md "%homedrive%\Users\%username%\Desktop\Meus Scripts\Scripts Baixados - Batch"
    move /Y *.cmd "%homedrive%\Users\%username%\Desktop\Meus Scripts\Scripts Baixados - Batch")

if exist *.lnk (
    move /Y *.lnk %homedrive%\Users\%username%\Desktop)

if exist *.url (
    move /Y *.url %homedrive%\Users\%username%\Desktop)

if exist *.ps1 (
    md "%homedrive%\Users\%username%\Desktop\Meus Scripts\Scripts Baixados - PowerShell"
    move /Y *.ps1 "%homedrive%\Users\%username%\Desktop\Meus Scripts\Scripts Baixados - PowerShell")

if exist *.vbs (
    md "%homedrive%\Users\%username%\Desktop\Meus Scripts\Scripts Baixados - Visual Basic"
    move /Y *.vbs "%homedrive%\Users\%username%\Desktop\Meus Scripts\Scripts Baixados - Visual Basic")

if exist *.js (
    md "%homedrive%\Users\%username%\Desktop\Meus Scripts\Scripts Baixados - JavaScript"
    move /Y *.js "%homedrive%\Users\%username%\Desktop\Meus Scripts\Scripts Baixados - JavaScript")

if exist *.reg (
    md "%homedrive%\Users\%username%\Desktop\Meus Scripts\Scripts Baixados - Regedit"
    move /Y *.reg "%homedrive%\Users\%username%\Desktop\Meus Scripts\Scripts Baixados - Regedit")

if exist *.iso (
    md "%homedrive%\Users\%username%\Downloads\ISOs"
    move /Y *.iso %homedrive%\Users\%username%\Downloads\ISOs)

if exist *.img (
    md "%homedrive%\Users\%username%\Downloads\ISOs"
    move /Y *.img %homedrive%\Users\%username%\Downloads\ISOs)

if exist *.torrent (
    md "%homedrive%\Users\%username%\Downloads\Torrents"
    move /Y *.torrent %homedrive%\Users\%username%\Downloads\Torrents)

if exist *.txt (
    md "%homedrive%\Users\%username%\Documents\Textos"
    move /Y *.txt %homedrive%\Users\%username%\Documents\Textos)

if exist *.log (
    md "%homedrive%\Users\%username%\Documents\Logs"
    move /Y *.log %homedrive%\Users\%username%\Documents\Logs)

if exist *.jar (
    md "%homedrive%\Users\%username%\Downloads\Jar"
    move /Y *.jar %homedrive%\Users\%username%\Downloads\Jar)

if exist *.apk (
    md "%homedrive%\Users\%username%\Downloads\APK"
    move /Y *.apk %homedrive%\Users\%username%\Downloads\APK)

if exist *.psd (
    md "%homedrive%\Users\%username%\Pictures\Photoshop PSDs"
    move /Y *.psd "%homedrive%\Users\%username%\Pictures\Photoshop PSDs")

if exist *.ai (
    md "%homedrive%\Users\%username%\Pictures\Illustrator"
    move /Y *.ai "%homedrive%\Users\%username%\Pictures\Illustrator")

if exist *.eps (
    md "%homedrive%\Users\%username%\Pictures\Illustrator"
    move /Y *.eps "%homedrive%\Users\%username%\Pictures\Illustrator")

if exist *.indd (
    md "%homedrive%\Users\%username%\Pictures\InDesign"
    move /Y *.indd "%homedrive%\Users\%username%\Pictures\InDesign")

if exist *.pdf (
    md "%homedrive%\Users\%username%\Documents\PDFs"
    move /Y *.pdf "%homedrive%\Users\%username%\Documents\PDFs")

if exist *.epub (
    md "%homedrive%\Users\%username%\Documents\Ebooks"
    move /Y *.epub "%homedrive%\Users\%username%\Documents\Ebooks")

if exist *.mobi (
    md "%homedrive%\Users\%username%\Documents\Ebooks"
    move /Y *.mobi "%homedrive%\Users\%username%\Documents\Ebooks")

if exist *.fb2 (
    md "%homedrive%\Users\%username%\Documents\Ebooks"
    move /Y *.fb2 "%homedrive%\Users\%username%\Documents\Ebooks")

if exist *.fbz (
    md "%homedrive%\Users\%username%\Documents\Ebooks"
    move /Y *.fbz "%homedrive%\Users\%username%\Documents\Ebooks")

if exist *.cbz (
    md "%homedrive%\Users\%username%\Documents\Ebooks"
    move /Y *.cbz "%homedrive%\Users\%username%\Documents\Ebooks")

if exist *.cbr (
    md "%homedrive%\Users\%username%\Documents\Ebooks"
    move /Y *.cbr "%homedrive%\Users\%username%\Documents\Ebooks")

if exist *.cbt (
    md "%homedrive%\Users\%username%\Documents\Ebooks"
    move /Y *.cbt "%homedrive%\Users\%username%\Documents\Ebooks")

if exist *.cb7 (
    md "%homedrive%\Users\%username%\Documents\Ebooks"
    move /Y *.cb7 "%homedrive%\Users\%username%\Documents\Ebooks")

:: Jogos de Emuladores

if exist *.gb (
    md "%homedrive%\Users\%username%\Downloads\ROMS GB,GBC,GBA"
    move /Y *.gb "%homedrive%\Users\%username%\Downloads\ROMS GB,GBC,GBA")

if exist *.gbc (
    md "%homedrive%\Users\%username%\Downloads\ROMS GB,GBC,GBA"
    move /Y *.gbc "%homedrive%\Users\%username%\Downloads\ROMS GB,GBC,GBA")

if exist *.gba (
    md "%homedrive%\Users\%username%\Downloads\ROMS GB,GBC,GBA"
    move /Y *.gba "%homedrive%\Users\%username%\Downloads\ROMS GB,GBC,GBA")

if exist *.nes (
    md "%homedrive%\Users\%username%\Downloads\ROMS NES"
    move /Y *.nes "%homedrive%\Users\%username%\Downloads\ROMS NES")

if exist *.snes (
    md "%homedrive%\Users\%username%\Downloads\ROMS SNES"
    move /Y *.snes "%homedrive%\Users\%username%\Downloads\ROMS SNES")

if exist *.n64 (
    md "%homedrive%\Users\%username%\Downloads\ROMS N64"
    move /Y *.n64 "%homedrive%\Users\%username%\Downloads\ROMS N64")

if exist *.z64 (
    md "%homedrive%\Users\%username%\Downloads\ROMS N64"
    move /Y *.z64 "%homedrive%\Users\%username%\Downloads\ROMS N64")

if exist *.v64 (
    md "%homedrive%\Users\%username%\Downloads\ROMS N64"
    move /Y *.v64 "%homedrive%\Users\%username%\Downloads\ROMS N64")

if exist *.smc (
    md "%homedrive%\Users\%username%\Downloads\ROMS SNES"
    move /Y *.smc "%homedrive%\Users\%username%\Downloads\ROMS SNES")

if exist *.sfc (
    md "%homedrive%\Users\%username%\Downloads\ROMS SNES"
    move /Y *.sfc "%homedrive%\Users\%username%\Downloads\ROMS SNES")

if exist *.nds (
    md "%homedrive%\Users\%username%\Downloads\ROMS NDS"
    move /Y *.nds "%homedrive%\Users\%username%\Downloads\ROMS NDS")

if exist *.dsi (
    md "%homedrive%\Users\%username%\Downloads\ROMS NDS"
    move /Y *.dsi "%homedrive%\Users\%username%\Downloads\ROMS NDS")

if exist *.3ds (
    md "%homedrive%\Users\%username%\Downloads\ROMS 3DS"
    move /Y *.3ds "%homedrive%\Users\%username%\Downloads\ROMS 3DS")

if exist *.cia (
    md "%homedrive%\Users\%username%\Downloads\ROMS 3DS"
    move /Y *.cia "%homedrive%\Users\%username%\Downloads\ROMS 3DS")

if exist *.xci (
    md "%homedrive%\Users\%username%\Downloads\ROMS Switch"
    move /Y *.xci "%homedrive%\Users\%username%\Downloads\ROMS Switch")

if exist *.nsp (
    md "%homedrive%\Users\%username%\Downloads\ROMS Switch"
    move /Y *.nsp "%homedrive%\Users\%username%\Downloads\ROMS Switch")

if exist *.nsz (
    md "%homedrive%\Users\%username%\Downloads\ROMS Switch"
    move /Y *.nsz "%homedrive%\Users\%username%\Downloads\ROMS Switch")

if exist *.bin (
    md "%homedrive%\Users\%username%\Downloads\Bin - Cue"
    move /Y *.bin "%homedrive%\Users\%username%\Downloads\Bin - Cue")

if exist *.cue (
    md "%homedrive%\Users\%username%\Downloads\Bin - Cue"
    move /Y *.cue "%homedrive%\Users\%username%\Downloads\Bin - Cue")

:: Arquivos de Pokemon

if exist *.wc3 (
    md "%homedrive%\Users\%username%\Downloads\Arquivos Pokemon"
    move /Y *.wc3 "%homedrive%\Users\%username%\Downloads\Arquivos Pokemon")

if exist *.pkm (
    md "%homedrive%\Users\%username%\Downloads\Arquivos Pokemon"
    move /Y *.pkm "%homedrive%\Users\%username%\Downloads\Arquivos Pokemon")

if exist *.pk7 (
    md "%homedrive%\Users\%username%\Downloads\Arquivos Pokemon"
    move /Y *.pk7 "%homedrive%\Users\%username%\Downloads\Arquivos Pokemon")

if exist *.pk8 (
    md "%homedrive%\Users\%username%\Downloads\Arquivos Pokemon"
    move /Y *.pk8 "%homedrive%\Users\%username%\Downloads\Arquivos Pokemon")

if exist *.pk9 (
    md "%homedrive%\Users\%username%\Downloads\Arquivos Pokemon"
    move /Y *.pk9 "%homedrive%\Users\%username%\Downloads\Arquivos Pokemon")

if exist *.pkm9 (
    md "%homedrive%\Users\%username%\Downloads\Arquivos Pokemon"
    move /Y *.pkm9 "%homedrive%\Users\%username%\Downloads\Arquivos Pokemon")

if exist *.pk10 (
    md "%homedrive%\Users\%username%\Downloads\Arquivos Pokemon"
    move /Y *.pk10 "%homedrive%\Users\%username%\Downloads\Arquivos Pokemon")

if exist *.pkm10 (
    md "%homedrive%\Users\%username%\Downloads\Arquivos Pokemon"
    move /Y *.pkm10 "%homedrive%\Users\%username%\Downloads\Arquivos Pokemon")

if exist *.pk11 (
    md "%homedrive%\Users\%username%\Downloads\Arquivos Pokemon"
    move /Y *.pk11 "%homedrive%\Users\%username%\Downloads\Arquivos Pokemon")

if exist *.pkm11 (
    md "%homedrive%\Users\%username%\Downloads\Arquivos Pokemon"
    move /Y *.pkm11 "%homedrive%\Users\%username%\Downloads\Arquivos Pokemon")

if exist *.pk12 (
    md "%homedrive%\Users\%username%\Downloads\Arquivos Pokemon"
    move /Y *.pk12 "%homedrive%\Users\%username%\Downloads\Arquivos Pokemon")

if exist *.pkm12 (
    md "%homedrive%\Users\%username%\Downloads\Arquivos Pokemon"
    move /Y *.pkm12 "%homedrive%\Users\%username%\Downloads\Arquivos Pokemon")



cls
echo Downloads organizados!
echo Script feito por Jonata.

timeout /t 5 /nobreak >nul
goto inicio
