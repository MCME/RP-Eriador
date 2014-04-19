SET oldDir=%CD%
cd %appdata%\.minecraft\resourcepacks
SET newDir=%CD%
cd %oldDir%
if not exist %newDir%\MCME-Eriador-DEBUG mkdir %newDir%\MCME-Eriador-DEBUG
del %newdir%\MCME-Eriador-DEBUG\*.* /s /q
xcopy /y/s %oldDir%\src\main\meta\* %newDir%\MCME-Eriador-DEBUG
xcopy /y/s %oldDir%\src\main\pack\* %newDir%\MCME-Eriador-DEBUG\assets\minecraft
xcopy /y/s %oldDir%\MCME-UI\src\main\pack\*.* %newDir%\MCME-Eriador-DEBUG\assets\minecraft
xcopy /y/s %oldDir%\MCME-Aural-Experience\src\main\pack\*.* %newDir%\MCME-Eriador-DEBUG\assets\minecraft
