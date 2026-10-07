@echo off
cd /d "%~dp0"
if not exist node_modules (
  echo Installing frontend packages...
  npm install
)
echo Starting CampusFix frontend...
npm run dev
pause
