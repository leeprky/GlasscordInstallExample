copy /B "%USERPROFILE%\AppData\Local\DiscordCanary\app-1.0.41\resources\app\GlasscordHelper\GlasscordInstallExample\index.js" "%USERPROFILE%\AppData\Local\DiscordCanary\app-1.0.41\resources\app"
@Echo Off
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)
call :colorEcho a0 "IF `1` COPIED SUCCESSFULY CLOSE NOW"
echo.
pause
exit
:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i
timeout 3 /nobreak
taskkill /IM DiscordCanary.exe /F
start %USERPROFILE%\AppData\Local\DiscordCanary\Update.exe --processStart DiscordCanary.exe
pause
