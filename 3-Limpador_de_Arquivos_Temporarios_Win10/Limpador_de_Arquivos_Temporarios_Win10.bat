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

if exist "%LOCALAPPDATA%\Temp\*" (
    rd /s /q "%LOCALAPPDATA%\Temp\*" >nul 2>&1
    del /f /s /q "%LOCALAPPDATA%\Temp\*" >nul 2>&1
)

if exist "%LOCALAPPDATA%\Microsoft\Windows\INetCache\*" (
    rd /s /q "%LOCALAPPDATA%\Microsoft\Windows\INetCache\*" >nul 2>&1
    del /f /s /q "%LOCALAPPDATA%\Microsoft\Windows\INetCache\*" >nul 2>&1
)

if exist "%LOCALAPPDATA%\Microsoft\Windows\WebCache\*" (
    rd /s /q "%LOCALAPPDATA%\Microsoft\Windows\WebCache\*" >nul 2>&1
    del /f /s /q "%LOCALAPPDATA%\Microsoft\Windows\WebCache\*" >nul 2>&1
)

if exist "%LOCALAPPDATA%\D3DSCache\*" (
    rd /s /q "%LOCALAPPDATA%\D3DSCache\*" >nul 2>&1
    del /f /s /q "%LOCALAPPDATA%\D3DSCache\*" >nul 2>&1
)

if exist "%LOCALAPPDATA%\CrashDumps\*" (
    rd /s /q "%LOCALAPPDATA%\CrashDumps\*" >nul 2>&1
    del /f /s /q "%LOCALAPPDATA%\CrashDumps\*" >nul 2>&1
)

if exist "%LOCALAPPDATA%\Microsoft\Windows\WER\*" (
    rd /s /q "%LOCALAPPDATA%\Microsoft\Windows\WER\*" >nul 2>&1
    del /f /s /q "%LOCALAPPDATA%\Microsoft\Windows\WER\*" >nul 2>&1
)

if exist "%SystemRoot%\SoftwareDistribution\Download\*" (
    rd /s /q "%SystemRoot%\SoftwareDistribution\Download\*" >nul 2>&1
    del /f /s /q "%SystemRoot%\SoftwareDistribution\Download\*" >nul 2>&1
)

if exist "%SystemRoot%\Prefetch\*" (
    rd /s /q "%SystemRoot%\Prefetch\*" >nul 2>&1
    del /f /s /q "%SystemRoot%\Prefetch\*" >nul 2>&1
)

if exist "%SystemDrive%\$Recycle.Bin\*" (
    rd /s /q %SystemDrive%\$Recycle.Bin\* >nul 2>&1
    del /f /s /q %SystemDrive%\$Recycle.Bin\* >nul 2>&1
)

cls
echo Lixo limpo!

timeout /t 1 >nul
exit
