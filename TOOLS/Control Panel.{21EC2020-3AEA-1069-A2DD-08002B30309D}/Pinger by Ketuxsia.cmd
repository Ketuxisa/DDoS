@echo off
color 3
title follow ketuxsia on tiktok

echo 
echo .##....##.########.########.##.....##.##.....##..######..####....###...
echo .##...##..##..........##....##.....##..##...##..##....##..##....##.##..
echo .##..##...##..........##....##.....##...##.##...##........##...##...##.
echo.#####....######......##....##.....##....###.....######...##..##.....##
echo .##..##...##..........##....##.....##...##.##.........##..##..#########
echo .##...##..##..........##....##.....##..##...##..##....##..##..##.....##
echo .##....##.########....##.....#######..##.....##..######..####.##.....##                                                                     
echo THIS PINGER CREATED BY KETUXSIA

set /p IP=Enter IP to Ping:
:top
PING n- 1 %IP% | FIND "TTL="
title : : Pinging: %IP% : :
IF ERRORLEVEL 1 (echo Ketuxsia fucked %IP%)
set /a num=(%2%%9)+1
color %num%
ping -t 1 0 10 127.0.0.1 >nul
GoTo top