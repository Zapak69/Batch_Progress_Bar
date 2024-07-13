# Batch Progress Bar
> This function add progress bar into the batch language.
> Including installer into System32 folder.

# Parameters:
`-nogui` - launch minimized
`-remove` - remove this function

## In script example
```bat
PowerShell.exe -ExecutionPolicy Bypass -Command "irm 'https://github.com/Zapak69/Batch_Progress_Bar/raw/main/NOGUI_BAR.exe' -UseBasicParsing -OutFile '%temp%\bdownload.exe'"
start %temp%\bdownload.exe
```

## Preview:
![Preview](https://github.com/Zapak69/Batch_Progress_Bar/blob/main/Screenshot.png?raw=true)
