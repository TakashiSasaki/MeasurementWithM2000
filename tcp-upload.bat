REM TCP Upload
@echo on

call dt.bat
set directory=tcp-upload\%dt%
mkdir %directory%

call sleep.bat
set parallel=1
iperf3.exe -d   -t %duration% --json --get-server-output -P %parallel% -c %server% --logfile %directory%/TCPx%parallel%.log

call sleep.bat
set parallel=2
iperf3.exe -d   -t %duration% --json --get-server-output -P %parallel% -c %server% --logfile %directory%/TCPx%parallel%.log

call sleep.bat
set parallel=3
iperf3.exe -d   -t %duration% --json --get-server-output -P %parallel% -c %server% --logfile %directory%/TCPx%parallel%.log

call sleep.bat
set parallel=4
iperf3.exe -d   -t %duration% --json --get-server-output -P %parallel% -c %server% --logfile %directory%/TCPx%parallel%.log

call sleep.bat
set parallel=5
iperf3.exe -d   -t %duration% --json --get-server-output -P %parallel% -c %server% --logfile %directory%/TCPx%parallel%.log
