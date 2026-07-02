@echo off
setlocal
cd /d "%~dp0"

if not exist ".git" (
  echo This folder isn't set up as a git repo. Contact support.
  pause
  exit /b 1
)

git add -A
git commit -m "Update Images"
if %ERRORLEVEL% NEQ 0 (
  echo Nothing new to commit, or commit failed.
)
git push

echo.
echo Done. Press any key to close.
pause >nul
