@echo off
:c
set /p variable_name=<nul
for /f "usebackq delims=" %%a in (`powershell -command "Get-Clipboard"`) do set "variable_name=%%a"
echo [44m%variable_name%[0m
echo s - startpage search results
echo d - downlod (youtube, insta, twitter...)
echo g - google search results
echo.
set /p info=+

if %info%==s goto s
if %info%==d goto d
if %info%==g goto g

echo [41merror, invail input[0m
pause
goto c
exit
:s
start https://www.startpage.com/search?q=%variable_name%
pause
goto c
exit
:d
start https://givefastlink.com/#url=%variable_name%
pause
goto c
exit
:g
start https://www.google.com/search?q=%variable_name%
pause
goto c
exit
goto c
