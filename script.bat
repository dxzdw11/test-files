@echo off
:: By dxzdw11
:: This application downloads files from 1MB to 100MB to test your internet
:: Github repo: https://github.com/dxzdw11/test-files
:: Version 1.0
type banner.txt
echo	A internet testing tool
echo ..........................................................................................
echo What file size do you want to download
echo 1. 1MB
echo 2. 10MB
set /p select="Select (1-2): "
if %select%=="1" goto 1
if %select%=="2" goto 2
:1
curl https://raw.githubusercontent.com/dxzdw11/test-files/master/10MB.txt -o temp%random%.txt
pause
exit
:2
curl https://raw.githubusercontent.com/dxzdw11/test-files/master/100MB.txt -o temp%random%.txt
pause
