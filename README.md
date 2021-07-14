# GlasscordInstallExample

Not The Installer... Go https://github.com/leeprky/Useful-Batch-Scripts/tree/main/Glasscord

# Requirements

Git: https://git-scm.com/downloads

Powercord(Discord Canary): https://powercord.dev/

May Need To Run As Administrator

------------------------------------------------

# How To Install

Open `index.js` And Change `[[REMOVEME]]` To [Your Current Users Name](https://i.imgur.com/1RypNbz.png) (Click To Find It)

> Use `indexmove.bat` Once Step 1 Complete


------------------------------------------------

# Indexmove.bat

```
copy /B "%USERPROFILE%\AppData\Local\DiscordCanary\app-1.0.37\resources\app\GlasscordHelper\GlasscordInstallExample\index.js" "%USERPROFILE%\AppData\Local\DiscordCanary\app-1.0.37\resources\app"
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
timeout 10 /nobreak
close
```
