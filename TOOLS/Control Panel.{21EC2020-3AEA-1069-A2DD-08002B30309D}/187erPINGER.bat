@echo off
color 1

echo ...%%.....%%%%...%%%%%%..%%%%%%..%%%%%..
echo ..%%%....%%..%%.....%%...%%......%%..%%.
echo ...%%.....%%%%.....%%....%%%%....%%%%%..
echo ...%%....%%..%%...%%.....%%......%%..%%.
echo .%%%%%%...%%%%...%%......%%%%%%..%%..%%.
echo ........................................

echo CREATED BY KETUXSIA

set /p IP=Enter IP to Ping:
:top
PING n- 1 %IP% | FIND "TTL="
title : : Pinging: %IP% : :
IF ERRORLEVEL 1 (echo DOWN BY KETUXSIA)
set /a num=(%1%%9)+1
color %num%
ping -t 1 0 10 127.0.0.1 >nul
GoTo top