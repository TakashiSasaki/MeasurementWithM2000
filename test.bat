set server=iperf.local
set duration=20
set timeout=30
timeout /nobreak %timeout%
iperf3.exe -d -u -b 10000M -t %duration% --json --get-server-output -P 1 -c %server% --logfile udp-1.log
timeout /nobreak %timeout%
iperf3.exe -d -u -b 10000M -t %duration% --json --get-server-output -P 2 -c %server% --logfile udp-2.log
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
timeout /nobreak %timeout%
iperf3.exe -d -u -b 10000M -t %duration% --json --get-server-output -P 11 -c %server% --logfile udp-11.log
timeout /nobreak %timeout%
iperf3.exe -d -u -b 10000M -t %duration% --json --get-server-output -P 12 -c %server% --logfile udp-12.log
timeout /nobreak %timeout%
iperf3.exe -d -u -b 10000M -t %duration% --json --get-server-output -P 13 -c %server% --logfile udp-13.log
timeout /nobreak %timeout%
iperf3.exe -d -u -b 10000M -t %duration% --json --get-server-output -P 14 -c %server% --logfile udp-14.log
timeout /nobreak %timeout%
iperf3.exe -d -u -b 10000M -t %duration% --json --get-server-output -P 15 -c %server% --logfile udp-15.log
timeout /nobreak %timeout%
iperf3.exe -d -u -b 10000M -t %duration% --json --get-server-output -P 16 -c %server% --logfile udp-16.log
timeout /nobreak %timeout%
iperf3.exe -d -u -b 10000M -t %duration% --json --get-server-output -P 17 -c %server% --logfile udp-17.log
timeout /nobreak %timeout%
iperf3.exe -d -u -b 10000M -t %duration% --json --get-server-output -P 18 -c %server% --logfile udp-18.log
timeout /nobreak %timeout%
iperf3.exe -d -u -b 10000M -t %duration% --json --get-server-output -P 19 -c %server% --logfile udp-19.log
timeout /nobreak %timeout%
iperf3.exe -d -u -b 10000M -t %duration% --json --get-server-output -P 20 -c %server% --logfile udp-20.log

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
timeout /nobreak %timeout%
iperf3.exe -d -b 10000M -t %duration% --json --get-server-output -P 11 -c %server% --logfile tcp-11.log
timeout /nobreak %timeout%
iperf3.exe -d -b 10000M -t %duration% --json --get-server-output -P 12 -c %server% --logfile tcp-12.log
timeout /nobreak %timeout%
iperf3.exe -d -b 10000M -t %duration% --json --get-server-output -P 13 -c %server% --logfile tcp-13.log
timeout /nobreak %timeout%
iperf3.exe -d -b 10000M -t %duration% --json --get-server-output -P 14 -c %server% --logfile tcp-14.log
timeout /nobreak %timeout%
iperf3.exe -d -b 10000M -t %duration% --json --get-server-output -P 15 -c %server% --logfile tcp-15.log
timeout /nobreak %timeout%
iperf3.exe -d -b 10000M -t %duration% --json --get-server-output -P 16 -c %server% --logfile tcp-16.log
timeout /nobreak %timeout%
iperf3.exe -d -b 10000M -t %duration% --json --get-server-output -P 17 -c %server% --logfile tcp-17.log
timeout /nobreak %timeout%
iperf3.exe -d -b 10000M -t %duration% --json --get-server-output -P 18 -c %server% --logfile tcp-18.log
timeout /nobreak %timeout%
iperf3.exe -d -b 10000M -t %duration% --json --get-server-output -P 19 -c %server% --logfile tcp-19.log
timeout /nobreak %timeout%
iperf3.exe -d -b 10000M -t %duration% --json --get-server-output -P 20 -c %server% --logfile tcp-20.log
