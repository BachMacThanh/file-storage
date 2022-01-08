::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFB9GSQWPAE+1BaAR7ebv/NaGuFgPUfI2aIrX07qLbuUL7yU=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
title Azure-Auto-Region

echo Download all files...
curl --silent -O https://raw.githubusercontent.com/TheDarkMythos/Ngrok-Exe/master/ngrok.exe

echo Copy NGROK to System32...
copy ngrok.exe C:\Windows\System32 >nul

echo CONNECT NGROK AUTH TOKEN...
start NGROK.bat >nul


echo Check Region for NGROK...
start ngrok tcp --region ap 3389

echo Setup Profile...
tzutil /s "SE Asia Standard Time" >nul
sc start audiosrv >nul

echo Finished!
@echo off
net config server /srvcomment:"AnhMai" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
net user administrator YeuAnhMai1 /add >nul
net localgroup administrators administrator /add >nul
net user VssAdministrator YeuAnhMai1 >nul
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Can't get NGROK tunnel. Maybe your previous VM still running: https://dashboard.ngrok.com/status/tunnels " && exit 
echo User: Administrator
echo Pass: [Secret]
curl -o "C:\Users\Public\Desktop\Fast Config VPS.exe" https://raw.githubusercontent.com/DangDev/dangdev/main/software/FastConfigVPS_v2.3.exe > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\EVKey Vietnamese Keyboard.exe" https://raw.githubusercontent.com/DangDev/dangdev/main/software/EVKey64.exe > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\Enable Session notification.vbs" https://raw.githubusercontent.com/DangDev/dangdev/main/Session.vbs > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\swd.bat" https://raw.githubusercontent.com/DangDev/dangdev/main/swd.bat > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\minecraft_java_ngrok.bat" https://raw.githubusercontent.com/DangDev/dangdev/main/minecraft_java_ngrok.bat > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\minecraft_java_playit.bat" https://raw.githubusercontent.com/DangDev/dangdev/main/minecraft_java_playit.bat > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\auto_bedrock.bat" https://raw.githubusercontent.com/DangDev/dangdev/main/auto_bedrock.bat > out.txt 2>&1
diskperf -Y >nul

sc config Audiosrv start= auto >nul
ICACLS C:\Windows\Temp /grant administrator:F >nul
ICACLS C:\Windows\installer /grant VssAdministrator:F >nul
ICACLS C:\Windows\Temp /grant VssAdministrator:F >nul
ICACLS C:\Windows\installer /grant administrator:F >nul


ping -n 99999999999999999999999999999999 10.10.10.10 >nul