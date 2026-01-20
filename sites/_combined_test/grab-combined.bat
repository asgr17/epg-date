@echo off
echo =============================================
echo   Combined EPG Grabber
echo =============================================
echo.

cd /d "%~dp0..\.."

echo Grabbing EPG data from all providers...
echo.

npm run grab -- --channels=sites/_combined_test/combined_test.channels.xml --output=guide_test.xml --days=3

echo.
echo =============================================
echo   Done! Output saved to guide.xml
echo =============================================
pause
