@echo off

REM Open three new Command Prompt windows and keep them open

REM Window 1
start "" cmd.exe /k title "Title 1" ^& cd "C:\fxm"

REM Wait for a moment before proceeding to the next window
timeout /t 1 >nul

REM Window 2
start "" cmd.exe /k title "Title 2" ^& cd "C:\fxm"

REM Wait for a moment before proceeding to the next window
timeout /t 1 >nul

REM Window 3
start "" cmd.exe /k title "Title 3" ^& cd "C:\fxm"

REM End of script
exit
