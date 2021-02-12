REM TCP Download

call dt.bat
set directory=%dt%
mkdir %dt%

timeout /nobreak %waitbefore%
set P=1
iperf3.exe -d -R  -t %duration% --json --get-server-output -P %P% -c %server% --logfile %directory%/P%P%.log

timeout /nobreak %waitbefore%
set P=2
iperf3.exe -d -R  -t %duration% --json --get-server-output -P %P% -c %server% --logfile %directory%/P%P%.log

timeout /nobreak %waitbefore%
set P=3
iperf3.exe -d -R  -t %duration% --json --get-server-output -P %P% -c %server% --logfile %directory%/P%P%.log

timeout /nobreak %waitbefore%
set P=4
iperf3.exe -d -R  -t %duration% --json --get-server-output -P %P% -c %server% --logfile %directory%/P%P%.log

timeout /nobreak %waitbefore%
set P=5
iperf3.exe -d -R  -t %duration% --json --get-server-output -P %P% -c %server% --logfile %directory%/P%P%.log

timeout /nobreak %waitbefore%
set P=6
iperf3.exe -d -R  -t %duration% --json --get-server-output -P %P% -c %server% --logfile %directory%/P%P%.log

timeout /nobreak %waitbefore%
set P=7
iperf3.exe -d -R  -t %duration% --json --get-server-output -P %P% -c %server% --logfile %directory%/P%P%.log

timeout /nobreak %waitbefore%
set P=8
iperf3.exe -d -R  -t %duration% --json --get-server-output -P %P% -c %server% --logfile %directory%/P%P%.log

timeout /nobreak %waitbefore%
set P=9
iperf3.exe -d -R  -t %duration% --json --get-server-output -P %P% -c %server% --logfile %directory%/P%P%.log

timeout /nobreak %waitbefore%
set P=10
iperf3.exe -d -R  -t %duration% --json --get-server-output -P %P% -c %server% --logfile %directory%/P%P%.log
