@echo off
setlocal
cd /d "%~dp0"

set "PYTHON_EXE=C:\Users\LENOVO\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe"

if exist "%PYTHON_EXE%" (
    start "" "http://127.0.0.1:3000/"
    "%PYTHON_EXE%" -m http.server 3000 --bind 127.0.0.1
    exit /b %ERRORLEVEL%
)

where python >nul 2>nul
if %ERRORLEVEL%==0 (
    start "" "http://127.0.0.1:3000/"
    python -m http.server 3000 --bind 127.0.0.1
    exit /b %ERRORLEVEL%
)

where py >nul 2>nul
if %ERRORLEVEL%==0 (
    start "" "http://127.0.0.1:3000/"
    py -m http.server 3000 --bind 127.0.0.1
    exit /b %ERRORLEVEL%
)

echo Python was not found. Install Python or run any static server from this folder.
pause
exit /b 1
