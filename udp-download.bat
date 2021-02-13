REM UDP Download
@echo on

call dt.bat
set directory=%dt%
mkdir %dt%

call sleep.bat
set parallel=1
iperf3.exe -d -u -R -b 10M -r -t %duration% --json --get-server-output -P %parallel% -c %server% --logfile %directory%/UDP10Mx%parallel%.log

call sleep.bat
set parallel=2
iperf3.exe -d -u -R -b 10M -r -t %duration% --json --get-server-output -P %parallel% -c %server% --logfile %directory%/UDP10M%parallel%.log

call sleep.bat
set parallel=4
iperf3.exe -d -u -R -b 10M -r -t %duration% --json --get-server-output -P %parallel% -c %server% --logfile %directory%/UDP10Mx%parallel%.log

call sleep.bat
set parallel=8
iperf3.exe -d -u -R -b 10M -r -t %duration% --json --get-server-output -P %parallel% -c %server% --logfile %directory%/UDP10Mx%parallel%.log

call sleep.bat
set parallel=16
iperf3.exe -d -u -R -b 10M -r -t %duration% --json --get-server-output -P %parallel% -c %server% --logfile %directory%/UDP10Mx%parallel%.log

call sleep.bat
set parallel=32
iperf3.exe -d -u -R -b 10M -r -t %duration% --json --get-server-output -P %parallel% -c %server% --logfile %directory%/UDP10Mx%parallel%.log
