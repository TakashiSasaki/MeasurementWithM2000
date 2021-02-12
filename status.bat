set mifisess=180cb180c950c3b2852568f61731eb414cada1bc
set directory=status
:loop
call dt.bat
curl -b mifisess=%mifisess% http://my.mifi/srv/status?_=%dt% >%directory%\%dt%.json
timeout 10
goto loop
