set mifisess=7bc6ee699aee5f0d430e31a254ca06069604507a
set directory=status
:loop
call dt.bat
curl -b mifisess=%mifisess% http://my.mifi/srv/status?_=%dt% >%directory%\%dt%.json
curl -b mifisess=%mifisess% http://my.mifi/diagnostics/ >%directory%\%dt%.html
timeout 1
goto loop
