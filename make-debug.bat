SET oldDir=%CD%
cd %appdata%\.minecraft\resourcepacks
SET newDir=%CD%
cd %oldDir%
if not exist %newDir%\Eriador-DEBUG mkdir %newDir%\Eriador-DEBUG
del %newdir%\Eriador-DEBUG\*.* /s /q
xcopy /y/s %oldDir%\src\main\meta\* %newDir%\Eriador-DEBUG
xcopy /y/s %oldDir%\src\main\pack\* %newDir%\Eriador-DEBUG\assets\minecraft
xcopy /y/s %oldDir%\MCME-UI\src\main\pack\*.* %newDir%\Eriador-DEBUG\assets\minecraft
xcopy /y/s %oldDir%\MCME-Aural-Experience\src\main\pack\*.* %newDir%\Eriador-DEBUG\assets\minecraft
pause
