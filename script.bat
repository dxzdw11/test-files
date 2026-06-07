@echo off
:: By dxzdw11
:: This application downloads files to test your internet speed
:: Github repo: https://github.com/dxzdw11/test-files
:: Version 1.1

title Speed Tester
cls

if exist banner.txt type banner.txt

echo.
echo     A internet testing tool
echo ..........................................................................................
echo What file size do you want to download?
echo 1. 1MB
echo 2. 10MB
echo.

set /p select="Select (1-2): "

:: Using quotes around the variables prevents crashes if the input is empty
if "%select%"=="1" goto option1
if "%select%"=="2" goto option2

echo Invalid selection.
pause
exit

:option1
echo Downloading 1MB file...
:: Added -L to follow redirects, which is necessary for GitHub URLs
curl -L https://raw.githubusercontent.com/dxzdw11/test-files/main/1MB.txt -o temp_%random%.txt
echo.
echo Operation complete.
pause
exit

:option2
echo Downloading 10MB file...
curl -L https://raw.githubusercontent.com/dxzdw11/test-files/main/10MB.txt -o temp_%random%.txt
echo.
echo Operation complete.
pause
exit