@echo off
@setlocal enabledelayedexpansion

chcp 65001 >nul

:: Function to draw a progress bar
:: [%1 = X coordinate]
:: [%2 = Y coordinate]
:: [%3 = Length of the progress bar in characters]
:: [%4 = Progress percentage]

:ProgressBar
    setlocal
    set X=%1
    set Y=%2
    set Length=%3
    set Progress=%4

    :: Calculate filled length
    set /a FilledLength=Length * Progress / 100

    :: Create the progress bar
    set "Bar="
    for /l %%i in (1,1,%FilledLength%) do set "Bar=!Bar!█"
    for /l %%i in (1,1,%Length%) do if %%i GTR %FilledLength% set "Bar=!Bar! "

    :: Create the top and bottom borders
    set "TopBorder=╔"
    set "BottomBorder=╚"
    for /l %%i in (1,1,%Length%) do (
        set "TopBorder=!TopBorder!═"
        set "BottomBorder=!BottomBorder!═"
    )
    set "TopBorder=!TopBorder!╗"
    set "BottomBorder=!BottomBorder!╝"

    :: Draw the progress bar
    call :DrawText %X% %Y%+1 "!TopBorder!"
    call :DrawText %X% %Y%+2 "║!Bar!║"
    call :DrawText %X% %Y%+3 "!BottomBorder!"
    :: Add empty lines to separate the progress bar from the next output
    for /l %%i in (1,1,2) do echo.

    endlocal
    exit /b

:DrawText
    :: Move cursor to specific position and draw text
    setlocal
    set /a _X=%1
    set /a _Y=%2
    set "_Text=%~3"

    :: Move the cursor
    call :MoveCursor %_X% %_Y%
    :: Print the text
    <nul set /p "=!_Text!"
    
    endlocal
    exit /b

:MoveCursor
    :: Move cursor to specific position using ANSI escape codes
    setlocal
    set /a _X=%1
    set /a _Y=%2
    :: Use ANSI escape codes to move the cursor
    for /f %%a in ('echo prompt $E ^| cmd') do set "ESC=%%a"
    echo|set /p="%ESC%[%_Y%;%_X%H"
    endlocal
    exit /b

:: Example usage
cls
call ProgressBar 15 1 40 50

timeout /t 0 /nobreak >nul

chcp 852 >nul
