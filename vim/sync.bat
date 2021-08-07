@echo off

rem ==== Global Variables ====
set CURRENT_DIR=%CD%
set HOME_DIR=%homedrive%%homepath%
set CONFIG_DIR=%HOME_DIR%\.config\nvim
set REPO=https://github.com/terra-9/settings.git
set WORK_DIR=tmp
rem ==========================

echo =======================
echo ====== sync.bat =======
echo =======================

echo %CURRENT_DIR%
echo %CONFIG_DIR%
echo %REPO%

rem If the directory where this batch is executed is ~/.config/nvim,
rem then push config files to the repository.
if %CURRENT_DIR%==%CONFIG_DIR% (
  goto :confirmexport
) else (
rem If the directory where this batch is executed is NOT ~/Appdata/Local/nvim,
rem then copy files config files to the config directory,
  goto :confirmimport
)


:confirmimport
echo Targets:
echo %HOME_DIR%\_vimrc and %CONFIG_DIR%\*
set /p ans="Are you sure to overwrite the config files? [y/N]>> "
echo %ans%
if /i %ans%==y goto :execimport
if /i %ans%==Y goto :ececimport
goto exitlabel

:confirmexport
rem set /p ans="Commit messsage (empty to cancel) >> "
rem echo %ans%
goto :execexport

rem =========================
:execimport
copy .vimrc %HOME_DIR%\_vimrc
copy /Y sync.bat %CONFIG_DIR%\
copy /Y /E nvim\coc-settings.json %CONFIG_DIR%\nvim\
copy /Y /E nvim\ginit.vim %CONFIG_DIR%\nvim\
copy /Y /E nvim\init.vim %CONFIG_DIR%\nvim\
copy /Y /E nvim\cheatsheet.md %CONFIG_DIR%\nvim\
xcopy /Y nvim\colors %CONFIG_DIR%\nvim\colors
xcopy /Y /E nvim\rc %CONFIG_DIR%\nvim\rc

echo Done.
goto :exitlabel

rem =========================
:execexport
del /Q %WORK_DIR%
git clone %REPO% %WORK_DIR%
copy coc-settings.json %WORK_DIR%\vim\nvim\
copy dein.toml %WORK_DIR%\vim\nvim\
copy deinft.toml %WORK_DIR%\vim\nvim\
copy deinlazy.toml %WORK_DIR%\vim\nvim\
copy ginit.vim %WORK_DIR%\vim\nvim\
copy init.vim %WORK_DIR%\vim\nvim\
copy mappings.vim %WORK_DIR%\vim\nvim\
copy cheatsheet.md %WORK_DIR%\vim\nvim\
xcopy /Y colors %WORK_DIR%\vim\nvim\colors
xcopy /Y /E rc %WORK_DIR%\vim\nvim\rc

echo Done.
cd %WORK_DIR%
goto :exitlabel
rem ========================


:exitlabel
