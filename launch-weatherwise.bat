@echo off
echo Starting WeatherWise App...

cd /d "%~dp0"
call npm.cmd install
call npm.cmd run dev

:: Auto-open browser (Vite default port)
start http://localhost:5173/
