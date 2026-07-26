@echo off
setlocal EnableDelayedExpansion

set "OBSIDIAN_CONFIG=D:\path\to\.obsidian"
set "SHORTCUT_DIR=D:\path\to\obsidian_shortcut"

fltmc >nul 2>&1
if errorlevel 1 (
    set "SCRIPT_PATH=%~f0"
    powershell.exe -NoProfile -Command "Start-Process -FilePath $env:SCRIPT_PATH -Verb RunAs"
    exit /b
)

set "VAULT_DIR=%~dp0"
for %%I in ("%~dp0.") do set "VAULT_NAME=%%~nxI"
set "ENCODED_NAME=!VAULT_NAME: =%%20!"

if not exist "%OBSIDIAN_CONFIG%\" (
    echo Config not found: %OBSIDIAN_CONFIG%
    pause
    exit /b 1
)

if not exist "%SHORTCUT_DIR%\" mkdir "%SHORTCUT_DIR%"
if not exist "%VAULT_DIR%.obsidian\" mklink /D "%VAULT_DIR%.obsidian" "%OBSIDIAN_CONFIG%"

> "%SHORTCUT_DIR%\!VAULT_NAME!.url" (
    echo [InternetShortcut]
    echo URL=obsidian://open?vault=!ENCODED_NAME!
)

start "" "obsidian://open?vault="!ENCODED_NAME!""
