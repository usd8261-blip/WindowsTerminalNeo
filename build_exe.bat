@echo off
cd /d "%~dp0"
echo ===================================================
echo   Windows Terminal Neo - Standalone EXE Builder
echo ===================================================
echo.

where python >nul 2>nul
if %errorlevel% neq 0 (
    echo [ERROR] Python was not found in your system PATH!
    echo Please install Python (version 3.10+ recommended) from https://www.python.org
    echo IMPORTANT: Make sure to check "Add python.exe to PATH" during setup.
    echo.
    pause
    exit /b 1
)

echo [1/3] Installing required libraries (pywebview, pyinstaller)...
python -m pip install --upgrade pywebview pyinstaller

echo.
echo [2/3] Building standalone executable WindowsTerminalNeo.exe...
python -m PyInstaller --noconsole --onefile --name "WindowsTerminalNeo" --add-data "index.html;." main.py

echo.
if exist "dist\WindowsTerminalNeo.exe" (
    echo ===================================================
    echo [3/3] BUILD SUCCESSFUL!
    echo Output file: %~dp0dist\WindowsTerminalNeo.exe
    echo Opening output folder...
    echo ===================================================
    explorer "%~dp0dist"
) else (
    echo ===================================================
    echo [!] Build failed. Please review the output above.
    echo ===================================================
)

echo.
pause
