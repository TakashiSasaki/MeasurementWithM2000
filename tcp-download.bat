
REM TCP Reverse
timeout /nobreak %timeout%
iperf3.exe -d -r  -t %duration% --json --get-server-output -P 1 -c %server% --logfile tcp-r-1.log
timeout /nobreak %timeout%
iperf3.exe -d -r  -t %duration% --json --get-server-output -P 2 -c %server% --logfile tcp-r-2.log
timeout /nobreak %timeout%
iperf3.exe -d -r  -t %duration% --json --get-server-output -P 3 -c %server% --logfile tcp-r-3.log
timeout /nobreak %timeout%
iperf3.exe -d -r  -t %duration% --json --get-server-output -P 4 -c %server% --logfile tcp-r-4.log
timeout /nobreak %timeout%
iperf3.exe -d -r  -t %duration% --json --get-server-output -P 5 -c %server% --logfile tcp-r-5.log
timeout /nobreak %timeout%
iperf3.exe -d -r  -t %duration% --json --get-server-output -P 6 -c %server% --logfile tcp-r-6.log
timeout /nobreak %timeout%
iperf3.exe -d -r  -t %duration% --json --get-server-output -P 7 -c %server% --logfile tcp-r-7.log
timeout /nobreak %timeout%
iperf3.exe -d -r  -t %duration% --json --get-server-output -P 8 -c %server% --logfile tcp-r-8.log
timeout /nobreak %timeout%
iperf3.exe -d -r  -t %duration% --json --get-server-output -P 9 -c %server% --logfile tcp-r-9.log
timeout /nobreak %timeout%
iperf3.exe -d -r  -t %duration% --json --get-server-output -P 10 -c %server% --logfile tcp-r-10.log

