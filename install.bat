@echo off
title KELTIC KRAKEN - INSTALLER
color 0C

echo.
echo ╔═══════════════════════════════════════════════════════════════╗
echo ║                                                               ║
echo ║   🔪 KELTIC KRAKEN - INSTALLER                                ║
echo ║   Ireland Crime Intelligence Platform                         ║
echo ║                                                               ║
echo ╚═══════════════════════════════════════════════════════════════╝
echo.

echo [INFO] Verificando Python...
python --version >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Python no encontrado
    echo Descarga Python 3.8+ desde: https://www.python.org/downloads/
    pause
    exit /b 1
)

echo [OK] Python encontrado
echo.

echo [INFO] Instalando dependencias...
pip install --upgrade pip
pip install -r requirements.txt

echo.
echo ╔═══════════════════════════════════════════════════════════════╗
echo ║                                                               ║
echo ║   ✅ INSTALACION COMPLETADA!                                  ║
echo ║                                                               ║
echo ║   Para ejecutar: python keltic_kraken.py                      ║
echo ║                                                               ║
echo ║   🔪 KELTIC KRAKEN - Ready to monitor Ireland's crime         ║
echo ║                                                               ║
echo ╚═══════════════════════════════════════════════════════════════╝
echo.
pause
