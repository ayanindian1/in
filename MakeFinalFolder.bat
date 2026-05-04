@echo off
echo ==============================================
echo   InsDonAll - Final Folder Builder
echo ==============================================
echo.

echo [1/3] Creating 'final' folder...
if not exist "final" mkdir final

echo [2/3] Copying backend PHP files...
copy api.php final\ >nul
copy facebook_extractor.php final\ >nul
copy youtube_extractor.php final\ >nul
copy x_extractor.php final\ >nul
copy .htaccess final\ >nul

echo [3/3] Copying frontend public files...
xcopy public\* final\ /E /I /Y >nul

echo.
echo ==============================================
echo   SUCCESS! 
echo   All files are now inside the "final" folder.
echo   You can zip the "final" folder and upload it.
echo ==============================================
pause
