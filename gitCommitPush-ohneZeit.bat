chcp 65001
set MYPATH=%CD%
for /F %%a in ('powershell get-date -format "{yyyy-MM-dd-HH-mm-ss-ffff}"') do set "MYDATE=%%a"
echo %MYDATE%
set MYFILENAME=%MYDATE%.log
set LOGFILE=%MYPATH%\%MYFILENAME%
@echo off
SET COMMIT=%USERNAME%
git add . 2>&1 >>%LOGFILE%
git commit -am "%COMMIT%" 2>&1 >>%LOGFILE%
git pull 2>&1 >>%LOGFILE%
git push 2>&1 >>%LOGFILE%
@TIMEOUT /T 5