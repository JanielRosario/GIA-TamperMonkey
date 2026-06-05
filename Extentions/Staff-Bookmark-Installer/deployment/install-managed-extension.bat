@echo off
setlocal

set "INSTALLER_URL=https://JanielRosario.github.io/Gia-Extensions/Extentions/Staff-Bookmark-Installer/install-managed-extension.ps1"

net session >nul 2>&1
if not "%errorlevel%"=="0" (
  echo This installer must be run as Administrator.
  echo Right-click this file and choose Run as administrator.
  pause
  exit /b 1
)

echo Installing Agency Bookmark Installer for Chrome and Microsoft Edge...
echo.
echo Installer source:
echo %INSTALLER_URL%
echo.

powershell -NoProfile -ExecutionPolicy Bypass -Command "irm '%INSTALLER_URL%' | iex"
if errorlevel 1 (
  echo.
  echo Install failed.
  echo Make sure GitHub Pages deployment has published the CRX and installer files.
  pause
  exit /b %errorlevel%
)

echo.
echo Managed extension install policy is configured.
echo Restart Chrome/Edge or visit chrome://policy / edge://policy and reload policies.
pause
