REM TCP Download
@echo on

call dt.bat
set directory=tcp-download\%dt%
mkdir %directory%

call sleep.bat
set parallel=1
iperf3.exe -d -R  -t %duration% --json --get-server-output -P %parallel% -c %server% --logfile %directory%/x%parallel%.log

call sleep.bat
set parallel=2
iperf3.exe -d -R  -t %duration% --json --get-server-output -P %parallel% -c %server% --logfile %directory%/x%parallel%.log

call sleep.bat
set parallel=3
iperf3.exe -d -R  -t %duration% --json --get-server-output -P %parallel% -c %server% --logfile %directory%/x%parallel%.log

call sleep.bat
set parallel=4
iperf3.exe -d -R  -t %duration% --json --get-server-output -P %parallel% -c %server% --logfile %directory%/x%parallel%.log

call sleep.bat
set parallel=5
iperf3.exe -d -R  -t %duration% --json --get-server-output -P %parallel% -c %server% --logfile %directory%/x%parallel%.log
