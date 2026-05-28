@echo off
chcp 65001 >nul

mode 18,2

color 09

echo Limpando o lixo...

timeout /t 1 >nul

if exist "%TEMP%\*" (
    rd /s /q %TEMP%\* >nul 2>&1
    del /f /s /q %TEMP%\* >nul 2>&1
)

if exist "%SystemRoot%\Temp\*" (
    rd /s /q %SystemRoot%\Temp\* >nul 2>&1
    del /f /s /q %SystemRoot%\Temp\* >nul 2>&1
)

if exist "%SystemDrive%\$Recycle.Bin\*" (
    rd /s /q %SystemDrive%\$Recycle.Bin\* >nul 2>&1
    del /f /s /q %SystemDrive%\$Recycle.Bin\* >nul 2>&1
)

cls
echo Lixo limpo!

timeout /t 1 >nul
exit