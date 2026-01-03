@echo off
echo =============================================
echo   Combined EPG Grabber
echo =============================================
echo.

cd /d "%~dp0..\.."

echo Grabbing EPG data from all providers...
echo.

npm run grab -- --channels=sites/_combined/combined.channels.xml --output=guide.xml --days=7

echo.
echo =============================================
echo   Done! Output saved to guide.xml
echo =============================================
pause
