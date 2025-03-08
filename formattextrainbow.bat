@echo off
setlocal enabledelayedexpansion
chcp 65001 >nul
echo Rainbow text by L0st_gr34td3v
set /p i=Text: 

set "t=!i!"
set l=0

:loop
if defined t (
    set "t=!t:~1!"
    set /a l +=1
    goto loop
)
set "t=!i!" 

set /a e=!l! -1

set "r="

for /l %%i in (0,1,!e!) do (
    set "c=!t:~%%i,1!"
    if "!c!"=="" (
        set "c="
    )
    set /a m=%%i %%7
    if !m! ==0 (
        set "cl=§c"
    ) else if !m! ==1 (
        set "cl=§6"
    ) else if !m! ==2 (
        set "cl=§e"
    ) else if !m! ==3 (
        set "cl=§2"
    ) else if !m! ==4 (
        set "cl=§b"
    ) else if !m! ==5 (
        set "cl=§9"
    ) else (
        set "cl=§d"
    )
    set "r=!r!!cl!!c!" 
)

echo §l!r!
pause
