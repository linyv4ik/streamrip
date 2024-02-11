@echo off
chcp 65001
title streamrip
::restore health
if exist "%tmp%\update.bat" del /f "%tmp%\update.bat"
if not exist "%cd%\streamrip" goto upd

::update checker
:: примусове оновлення до streamrip v2.0.5+ в v1.11 буде видалено
if exist "C:\ProgramData\streamrip\upd.txt" (
	goto skip
) else (
    pip uninstall -y streamrip
    pip install streamrip
    echo.>"C:\ProgramData\streamrip\upd.txt"
)
:skip

if not exist "C:\ProgramData\streamrip" mkdir "C:\ProgramData\streamrip"
if not exist "C:\Users\%USERNAME%\AppData\Roaming\streamrip" mkdir "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
set version=1.9
curl -s "https://raw.githubusercontent.com/linyv4ik/update/main/s_version.txt" --output "%tmp%\s_version.txt"
cls
set /p file_version=<"%tmp%\s_version.txt"
if %version% lss %file_version% (
    echo Поточна версія %version% вийшло оновлення %file_version%
	goto choice
) else (
    goto menu
)

:menu
echo.
echo Введіть посилання на альбом Deezer або виберіть бажану опцію з меню
echo.
echo 1 Завантажити посилання з файлу url.txt
echo 2 Видалити історію завантаження
echo.
set /P input=""
echo.
if %input% == 2 (goto deezer_db)

::australia
::xcopy "%cd%\streamrip\australia.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\australia.toml" config.toml
::move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
::if %input% == 1 (
::	rip file url.txt
::) else (
::    rip url %input%
::)

::austria
xcopy "%cd%\streamrip\austria.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\austria.toml" config.toml
move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
if %input% == 1 (
	rip file url.txt
) else (
    rip url %input%
)

::belgium
::xcopy "%cd%\streamrip\belgium.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\belgium.toml" config.toml
::move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
::if %input% == 1 (
::	rip file url.txt
::) else (
::    rip url %input%
::)

::bolivia
xcopy "%cd%\streamrip\bolivia.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\bolivia.toml" config.toml
move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
if %input% == 1 (
	rip file url.txt
) else (
    rip url %input%
)

::brasil
xcopy "%cd%\streamrip\brasil.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\brasil.toml" config.toml
move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
if %input% == 1 (
	rip file url.txt
) else (
    rip url %input%
)

::bulgaria
xcopy "%cd%\streamrip\bulgaria.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\bulgaria.toml" config.toml
move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
if %input% == 1 (
	rip file url.txt
) else (
    rip url %input%
)

::canada
::xcopy "%cd%\streamrip\canada.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\canada.toml" config.toml
::move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
::if %input% == 1 (
::	rip file url.txt
::) else (
::    rip url %input%
::)

::colombia
xcopy "%cd%\streamrip\colombia.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\colombia.toml" config.toml
move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
if %input% == 1 (
	rip file url.txt
) else (
    rip url %input%
)

::costarica
::xcopy "%cd%\streamrip\costarica.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\costarica.toml" config.toml
::move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
::if %input% == 1 (
::	rip file url.txt
::) else (
::    rip url %input%
::)

::croatia
::xcopy "%cd%\streamrip\croatia.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\croatia.toml" config.toml
::move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
::if %input% == 1 (
::	rip file url.txt
::) else (
::    rip url %input%
::)

::ecuador
xcopy "%cd%\streamrip\ecuador.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\ecuador.toml" config.toml
move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
if %input% == 1 (
	rip file url.txt
) else (
    rip url %input%
)

::denmark
xcopy "%cd%\streamrip\denmark.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\denmark.toml" config.toml
move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
if %input% == 1 (
	rip file url.txt
) else (
    rip url %input%
)

::france
xcopy "%cd%\streamrip\france.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\france.toml" config.toml
move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
if %input% == 1 (
	rip file url.txt
) else (
    rip url %input%
)

::germany
xcopy "%cd%\streamrip\germany.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\germany.toml" config.toml
move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
if %input% == 1 (
	rip file url.txt
) else (
    rip url %input%
)

::guatemala
::xcopy "%cd%\streamrip\guatemala.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\guatemala.toml" config.toml
::move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
::if %input% == 1 (
::	rip file url.txt
::) else (
::    rip url %input%
::)

::honduras
xcopy "%cd%\streamrip\honduras.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\honduras.toml" config.toml
move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
if %input% == 1 (
	rip file url.txt
) else (
    rip url %input%
)

::italy
::xcopy "%cd%\streamrip\italy.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\italy.toml" config.toml
::move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
::if %input% == 1 (
::	rip file url.txt
::) else (
::    rip url %input%
::)

::indonesia
::xcopy "%cd%\streamrip\indonesia.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\indonesia.toml" config.toml
::move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
::if %input% == 1 (
::	rip file url.txt
::) else (
::    rip url %input%
::)

::mauritius
::xcopy "%cd%\streamrip\mauritius.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\mauritius.toml" config.toml
::move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
::if %input% == 1 (
::	rip file url.txt
::) else (
::    rip url %input%
::)

::mexico
xcopy "%cd%\streamrip\mexico.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\mexico.toml" config.toml
move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
if %input% == 1 (
	rip file url.txt
) else (
    rip url %input%
)

::netherlands
xcopy "%cd%\streamrip\netherlands.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\netherlands.toml" config.toml
move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
if %input% == 1 (
	rip file url.txt
) else (
    rip url %input%
)

::newzealand
::xcopy "%cd%\streamrip\newzealand.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\newzealand.toml" config.toml
::move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
::if %input% == 1 (
::	rip file url.txt
::) else (
::    rip url %input%
::)

::northmacedonia
::xcopy "%cd%\streamrip\northmacedonia.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\northmacedonia.toml" config.toml
::move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
::if %input% == 1 (
::	rip file url.txt
::) else (
::    rip url %input%
::)

::paraguay
::xcopy "%cd%\streamrip\paraguay.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\paraguay.toml" config.toml
::move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
::if %input% == 1 (
::	rip file url.txt
::) else (
::    rip url %input%
::)

::peru
xcopy "%cd%\streamrip\peru.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\peru.toml" config.toml
move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
if %input% == 1 (
	rip file url.txt
) else (
    rip url %input%
)

::salvador
::xcopy "%cd%\streamrip\salvador.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\salvador.toml" config.toml
::move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
::if %input% == 1 (
::	rip file url.txt
::) else (
::    rip url %input%
::)

::serbia
xcopy "%cd%\streamrip\serbia.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\serbia.toml" config.toml
move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
if %input% == 1 (
	rip file url.txt
) else (
    rip url %input%
)

::slovenia
xcopy "%cd%\streamrip\slovenia.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\slovenia.toml" config.toml
move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
if %input% == 1 (
	rip file url.txt
) else (
    rip url %input%
)

::southafrica
xcopy "%cd%\streamrip\southafrica.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\southafrica.toml" config.toml
move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
if %input% == 1 (
	rip file url.txt
) else (
    rip url %input%
)

::spain
::xcopy "%cd%\streamrip\spain.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\spain.toml" config.toml
::move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
::if %input% == 1 (
::	rip file url.txt
::) else (
::    rip url %input%
::)

::turkey
::xcopy "%cd%\streamrip\turkey.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\turkey.toml" config.toml
::move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
::if %input% == 1 (
::	rip file url.txt
::) else (
::    rip url %input%
::)

::unitedkingdom
xcopy "%cd%\streamrip\unitedkingdom.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\unitedkingdom.toml" config.toml
move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
if %input% == 1 (
	rip file url.txt
) else (
    rip url %input%
)

::unitedstates
xcopy "%cd%\streamrip\unitedstates.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\unitedstates.toml" config.toml
move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
if %input% == 1 (
	rip file url.txt
) else (
    rip url %input%
)

goto menu

:deezer_db
if exist "C:\ProgramData\streamrip\downloads.db" del /f/q "C:\ProgramData\streamrip\downloads.db"
if exist "C:\ProgramData\streamrip\failed_downloads.db" del /f/q "C:\ProgramData\streamrip\failed_downloads.db"
echo Історію завантаження видалено!
goto menu

:choice
set /p update="Оновити скрипт до останньої версії? (1 так / 0 ні): "
cls
if %update% == 0 (goto menu)
if %update% == 1 (goto upd)
goto choice

:upd
:: примусове оновлення до streamrip v2.0.5+ в v1.11 буде видалено
pip uninstall -y streamrip
pip install streamrip

echo @echo off >>"%tmp%\update.bat"
echo timeout /t 1 >>"%tmp%\update.bat"
echo if exist "%tmp%\streamrip" rmdir /s /q "%tmp%\streamrip">>"%tmp%\update.bat"
echo if exist "%tmp%\streamrip.zip" del /f "%tmp%\streamrip.zip">>"%tmp%\update.bat"
echo if not exist "%tmp%\streamrip" mkdir "%tmp%\streamrip">>"%tmp%\update.bat"
echo curl -s "https://codeload.github.com/linyv4ik/streamrip/zip/refs/heads/main" --output "%tmp%\streamrip.zip">>"%tmp%\update.bat"
echo powershell Expand-Archive "%tmp%\streamrip.zip" -DestinationPath "%tmp%\streamrip" -Force>>"%tmp%\update.bat"
echo xcopy "%tmp%\streamrip\streamrip-main\*" "%cd%" /E /I /Y>>"%tmp%\update.bat"
echo if exist "%tmp%\streamrip" rmdir /s /q "%tmp%\streamrip">>"%tmp%\update.bat"
echo if exist "%tmp%\streamrip.zip" del /f "%tmp%\streamrip.zip">>"%tmp%\update.bat"
echo timeout /t 1 >>"%tmp%\update.bat"
echo start cmd /c "streamrip.bat">>"%tmp%\update.bat"
start cmd /c "%tmp%\update.bat"
exit