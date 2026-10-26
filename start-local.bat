@echo off
chcp 65001 >nul
cd /d "%~dp0"

echo ============================================
echo   Douyin TikTok Download API  -  Local Server
echo ============================================
echo.

if not exist ".venv\Scripts\python.exe" (
    echo [ERROR] venv not found. Run: uv venv --python 3.12
    pause
    exit /b 1
)

echo Starting server on http://127.0.0.1:8080 ...
echo Keep this window open. Press Ctrl+C to stop.
echo.

start "" http://127.0.0.1:8080
".venv\Scripts\python.exe" start.py

pause
