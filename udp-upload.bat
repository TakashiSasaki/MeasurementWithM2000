REM UDP Upload

timeout /nobreak %waitbefore%
iperf3.exe -d -u -b 10000M -t %duration% --json --get-server-output -P 1 -c %server% --logfile udp-1.log
timeout /nobreak %waitbefore%
iperf3.exe -d -u -b 10000M -t %duration% --json --get-server-output -P 2 -c %server% --logfile udp-2.log
timeout /nobreak %waitbefore%
iperf3.exe -d -u -b 10000M -t %duration% --json --get-server-output -P 3 -c %server% --logfile udp-3.log
timeout /nobreak %waitbefore%
iperf3.exe -d -u -b 10000M -t %duration% --json --get-server-output -P 4 -c %server% --logfile udp-4.log
timeout /nobreak %waitbefore%
iperf3.exe -d -u -b 10000M -t %duration% --json --get-server-output -P 5 -c %server% --logfile udp-5.log
timeout /nobreak %waitbefore%
iperf3.exe -d -u -b 10000M -t %duration% --json --get-server-output -P 6 -c %server% --logfile udp-6.log
timeout /nobreak %waitbefore%
iperf3.exe -d -u -b 10000M -t %duration% --json --get-server-output -P 7 -c %server% --logfile udp-7.log
timeout /nobreak %waitbefore%
iperf3.exe -d -u -b 10000M -t %duration% --json --get-server-output -P 8 -c %server% --logfile udp-8.log
timeout /nobreak %waitbefore%
iperf3.exe -d -u -b 10000M -t %duration% --json --get-server-output -P 9 -c %server% --logfile udp-9.log
timeout /nobreak %waitbefore%
iperf3.exe -d -u -b 10000M -t %duration% --json --get-server-output -P 10 -c %server% --logfile udp-10.log
