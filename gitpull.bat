chcp 65001
set MYPATH=%CD%
for /F %%a in ('powershell get-date -format "{yyyy-MM-dd-HH-mm-ss-ffff}"') do set "MYDATE=%%a"
echo %MYDATE%
set MYFILENAME=%MYDATE%.log
set LOGFILE=%MYPATH%\%MYFILENAME%
git pull 2>&1 >>%LOGFILE%
@TIMEOUT /T 5