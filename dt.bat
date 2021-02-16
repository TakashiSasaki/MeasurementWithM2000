REM @echo off
set d=%date:~0,4%%date:~5,2%%date:~8,2%
REM echo %d%
set t=%time:~0,2%%time:~3,2%%time:~6,2%
set t=%t: =0%
REM echo %t%
set dt=%d%T%t%
echo Current datetime is %dt%
