REM UDP Download
timeout /nobreak %waitbefore%
iperf3.exe -d -u -r -b 10000M -r -t %duration% --json --get-server-output -P 1 -c %server% --logfile udp-r-1.log
timeout /nobreak %waitbefore%
iperf3.exe -d -u -r -b 10000M -r -t %duration% --json --get-server-output -P 2 -c %server% --logfile udp-r-2.log
timeout /nobreak %waitbefore%
iperf3.exe -d -u -r -b 10000M -t %duration% --json --get-server-output -P 3 -c %server% --logfile udp-r-3.log
timeout /nobreak %waitbefore%
iperf3.exe -d -u -r -b 10000M -t %duration% --json --get-server-output -P 4 -c %server% --logfile udp-r-4.log
timeout /nobreak %waitbefore%
iperf3.exe -d -u -r -b 10000M -t %duration% --json --get-server-output -P 5 -c %server% --logfile udp-r-5.log
timeout /nobreak %waitbefore%
iperf3.exe -d -u -r -b 10000M -t %duration% --json --get-server-output -P 6 -c %server% --logfile udp-r-6.log
timeout /nobreak %waitbefore%
iperf3.exe -d -u -r -b 10000M -t %duration% --json --get-server-output -P 7 -c %server% --logfile udp-r-7.log
timeout /nobreak %waitbefore%
iperf3.exe -d -u -r -b 10000M -t %duration% --json --get-server-output -P 8 -c %server% --logfile udp-r-8.log
timeout /nobreak %waitbefore%
iperf3.exe -d -u -r -b 10000M -t %duration% --json --get-server-output -P 9 -c %server% --logfile udp-r-9.log
timeout /nobreak %waitbefore%
iperf3.exe -d -u -r -b 10000M -t %duration% --json --get-server-output -P 10 -c %server% --logfile udp-r-10.log

