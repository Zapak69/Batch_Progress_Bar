@echo off
title Test_Progress_Bar.bat
mode con cols=50 lines=7
:bar
cls
echo.
echo 		Current progress:
:: How it works:
:: X = 15
:: Y = 2
:: Lenght = 20
:: Status: 50% (how many % is filled)
call ProgressBar 15 2 20 50%
pause >nul
goto bar
