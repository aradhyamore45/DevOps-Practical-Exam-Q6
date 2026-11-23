@echo off

echo ====================================
echo       JENKINS FREESTYLE BUILD
echo ====================================

REM TODO 1: Display a welcome message with project name
echo Welcome to Jenkins_Freestyle_Build


echo Build Started Successfully

REM TODO 2: Display current date and time
echo Current date: %date%
echo Current time: %time%


REM TODO 3: Display logged-in username
echo Logged-in User: %USERNAME%


REM TODO 4: Display operating system information
echo Operating System:
ver


REM TODO 5: Display current working directory
echo Current Directory: %CD%


REM Create output directory
if not exist output mkdir output

echo Output directory created

REM TODO 6: Create build-report.txt inside output
REM Include Project Name, Build Date and Build Status
echo Project Name : Jenkins_Freestyle_Project > output\build-report.txt
echo Build Date: %date% >> output\build-report.txt
echo Build Time: %time% >> output\build-report.txt
echo Build Status: SUCCESS >> output\build-report.txt

REM Create system-info.txt inside output
echo Logged-in User: %USERNAME% > output\system-info.txt
echo Current Directory: %CD% >> output\system-info.txt
echo Operating System: >> output\system-info.txt
ver >> output\system-info.txt


REM TODO 7: Display the contents of build-report.txt
echo .
echo Displaying Build Report:
type output\build-report.txt

echo .
echo Displaying System info:
type output\system-info.txt


echo ====================================
echo       BUILD COMPLETED
echo ====================================
