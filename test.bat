set server=iperf.local
set server=133.71.201.21
set duration=20
set timeout=30
timeout /nobreak %timeout%
iperf3.exe -d -u -t %duration% --json --get-server-output -P 1 -c %server% --logfile udp-1.log
timeout /nobreak %timeout%
iperf3.exe -d -u -t %duration% --json --get-server-output -P 2 -c %server% --logfile udp-2.log
timeout /nobreak %timeout%
iperf3.exe -d -u -b 10000M -t %duration% --json --get-server-output -P 3 -c %server% --logfile udp-3.log
timeout /nobreak %timeout%
iperf3.exe -d -u -b 10000M -t %duration% --json --get-server-output -P 4 -c %server% --logfile udp-4.log
timeout /nobreak %timeout%
iperf3.exe -d -u -b 10000M -t %duration% --json --get-server-output -P 5 -c %server% --logfile udp-5.log
timeout /nobreak %timeout%
iperf3.exe -d -u -b 10000M -t %duration% --json --get-server-output -P 6 -c %server% --logfile udp-6.log
timeout /nobreak %timeout%
iperf3.exe -d -u -b 10000M -t %duration% --json --get-server-output -P 7 -c %server% --logfile udp-7.log
timeout /nobreak %timeout%
iperf3.exe -d -u -b 10000M -t %duration% --json --get-server-output -P 8 -c %server% --logfile udp-8.log
timeout /nobreak %timeout%
iperf3.exe -d -u -b 10000M -t %duration% --json --get-server-output -P 9 -c %server% --logfile udp-9.log
timeout /nobreak %timeout%
iperf3.exe -d -u -b 10000M -t %duration% --json --get-server-output -P 10 -c %server% --logfile udp-10.log

REM UDP Reverse
timeout /nobreak %timeout%
iperf3.exe -d -u -r -t %duration% --json --get-server-output -P 1 -c %server% --logfile udp-r-1.log
timeout /nobreak %timeout%
iperf3.exe -d -u -r -t %duration% --json --get-server-output -P 2 -c %server% --logfile udp-r-2.log
timeout /nobreak %timeout%
iperf3.exe -d -u -r -b 10000M -t %duration% --json --get-server-output -P 3 -c %server% --logfile udp-r-3.log
timeout /nobreak %timeout%
iperf3.exe -d -u -r -b 10000M -t %duration% --json --get-server-output -P 4 -c %server% --logfile udp-r-4.log
timeout /nobreak %timeout%
iperf3.exe -d -u -r -b 10000M -t %duration% --json --get-server-output -P 5 -c %server% --logfile udp-r-5.log
timeout /nobreak %timeout%
iperf3.exe -d -u -r -b 10000M -t %duration% --json --get-server-output -P 6 -c %server% --logfile udp-r-6.log
timeout /nobreak %timeout%
iperf3.exe -d -u -r -b 10000M -t %duration% --json --get-server-output -P 7 -c %server% --logfile udp-r-7.log
timeout /nobreak %timeout%
iperf3.exe -d -u -r -b 10000M -t %duration% --json --get-server-output -P 8 -c %server% --logfile udp-r-8.log
timeout /nobreak %timeout%
iperf3.exe -d -u -r -b 10000M -t %duration% --json --get-server-output -P 9 -c %server% --logfile udp-r-9.log
timeout /nobreak %timeout%
iperf3.exe -d -u -r -b 10000M -t %duration% --json --get-server-output -P 10 -c %server% --logfile udp-r-10.log


REM TCP
timeout /nobreak %timeout%
iperf3.exe -d -b 10000M -t %duration% --json --get-server-output -P 1 -c %server% --logfile tcp-1.log
timeout /nobreak %timeout%
iperf3.exe -d -b 10000M -t %duration% --json --get-server-output -P 2 -c %server% --logfile tcp-2.log
timeout /nobreak %timeout%
iperf3.exe -d -b 10000M -t %duration% --json --get-server-output -P 3 -c %server% --logfile tcp-3.log
timeout /nobreak %timeout%
iperf3.exe -d -b 10000M -t %duration% --json --get-server-output -P 4 -c %server% --logfile tcp-4.log
timeout /nobreak %timeout%
iperf3.exe -d -b 10000M -t %duration% --json --get-server-output -P 5 -c %server% --logfile tcp-5.log
timeout /nobreak %timeout%
iperf3.exe -d -b 10000M -t %duration% --json --get-server-output -P 6 -c %server% --logfile tcp-6.log
timeout /nobreak %timeout%
iperf3.exe -d -b 10000M -t %duration% --json --get-server-output -P 7 -c %server% --logfile tcp-7.log
timeout /nobreak %timeout%
iperf3.exe -d -b 10000M -t %duration% --json --get-server-output -P 8 -c %server% --logfile tcp-8.log
timeout /nobreak %timeout%
iperf3.exe -d -b 10000M -t %duration% --json --get-server-output -P 9 -c %server% --logfile tcp-9.log
timeout /nobreak %timeout%
iperf3.exe -d -b 10000M -t %duration% --json --get-server-output -P 10 -c %server% --logfile tcp-10.log

REM TCP Reverse
timeout /nobreak %timeout%
iperf3.exe -d -r -b 10000M -t %duration% --json --get-server-output -P 1 -c %server% --logfile tcp-r-1.log
timeout /nobreak %timeout%
iperf3.exe -d -r -b 10000M -t %duration% --json --get-server-output -P 2 -c %server% --logfile tcp-r-2.log
timeout /nobreak %timeout%
iperf3.exe -d -r -b 10000M -t %duration% --json --get-server-output -P 3 -c %server% --logfile tcp-r-3.log
timeout /nobreak %timeout%
iperf3.exe -d -r -b 10000M -t %duration% --json --get-server-output -P 4 -c %server% --logfile tcp-r-4.log
timeout /nobreak %timeout%
iperf3.exe -d -r -b 10000M -t %duration% --json --get-server-output -P 5 -c %server% --logfile tcp-r-5.log
timeout /nobreak %timeout%
iperf3.exe -d -r -b 10000M -t %duration% --json --get-server-output -P 6 -c %server% --logfile tcp-r-6.log
timeout /nobreak %timeout%
iperf3.exe -d -r -b 10000M -t %duration% --json --get-server-output -P 7 -c %server% --logfile tcp-r-7.log
timeout /nobreak %timeout%
iperf3.exe -d -r -b 10000M -t %duration% --json --get-server-output -P 8 -c %server% --logfile tcp-r-8.log
timeout /nobreak %timeout%
iperf3.exe -d -r -b 10000M -t %duration% --json --get-server-output -P 9 -c %server% --logfile tcp-r-9.log
timeout /nobreak %timeout%
iperf3.exe -d -r -b 10000M -t %duration% --json --get-server-output -P 10 -c %server% --logfile tcp-r-10.log

