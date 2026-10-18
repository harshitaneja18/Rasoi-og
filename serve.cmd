@echo off
echo Starting Rasoi Indian Cuisine Website...
where agy-node >nul 2>nul
if %ERRORLEVEL% EQU 0 (
    agy-node server.js
) else (
    where node >nul 2>nul
    if %ERRORLEVEL% EQU 0 (
        node server.js
    ) else (
        echo Neither agy-node nor node was found.
        echo Opening index.html directly in your default browser...
        start "" "index.html"
    )
)
