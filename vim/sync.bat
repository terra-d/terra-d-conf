@echo off

rem ==== Global Variables ====
set CURRENT_DIR=%CD%
set HOME_DIR=%homedrive%%homepath%
set CONFIG_DIR=%HOME_DIR%\AppData\Local\nvim
rem ==========================

echo =======================
echo ====== sync.bat =======
echo =======================

echo %CURRENT_DIR%
echo %CONFIG_DIR%

rem If the directory where this batch is executed is ~/Appdata/Local/nvim,
rem then push config files to the repository.
if %CURRENT_DIR%==%CONFIG_DIR% (
  goto :export
) else (
rem If the directory where this batch is executed is NOT ~/Appdata/Local/nvim,
rem then copy files config files to the config directory,
  goto :import
)


:import
echo Targets:
echo %HOME_DIR%\_vimrc and %CONFIG_DIR%\*
set /p ans="Are you sure to overwrite the config files? [y/N]>> "
echo %ans%
if /i %ans%==y goto execimport
if /i %ans%==Y goto ececimport
goto :exitlabel

:execimport
copy .vimrc %HOME_DIR%\_vimrc
xcopy /Y nvim %CONFIG_DIR%\

echo Done.

:exitlabel
