@echo off

call :sub >>resutado.txt

:sub
getmac 

@echo.

echo "------------------------------------------------------------"

@echo.

echo "IP PUBLICA"

powershell -Command "&{Invoke-RestMethod ipinfo.io/ip}" 

exit

