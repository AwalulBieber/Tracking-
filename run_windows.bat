@echo off
setlocal
cd /d "%~dp0"
where py >nul 2>nul
if %errorlevel%==0 (
  py -3.11 -m pip install -r requirements.txt
  if errorlevel 1 exit /b 1
  py -3.11 Retrolens.py
) else (
  python -m pip install -r requirements.txt
  if errorlevel 1 exit /b 1
  python Retrolens.py
)
