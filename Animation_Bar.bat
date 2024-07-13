@echo off
title Test_Progress_Bar.bat
mode con cols=50 lines=7
:bar
color f
cls
echo.
echo      	      Progress:
call ProgressBar 15 2 20 5%
call ProgressBar 15 2 20 10%
call ProgressBar 15 2 20 15%
call ProgressBar 15 2 20 20%
call ProgressBar 15 2 20 25%
call ProgressBar 15 2 20 30%
call ProgressBar 15 2 20 35%
call ProgressBar 15 2 20 40%
call ProgressBar 15 2 20 45%
call ProgressBar 15 2 20 50%
call ProgressBar 15 2 20 55%
call ProgressBar 15 2 20 60%
call ProgressBar 15 2 20 65%
call ProgressBar 15 2 20 70%
call ProgressBar 15 2 20 75%
call ProgressBar 15 2 20 80%
call ProgressBar 15 2 20 85%
call ProgressBar 15 2 20 90%
call ProgressBar 15 2 20 95%
call ProgressBar 15 2 20 100%
goto bar
