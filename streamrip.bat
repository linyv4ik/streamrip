@echo off
chcp 65001
setlocal enabledelayedexpansion
title streamrip
set /a available_countries=0
set version=2.009

::Settings
::активація країни: 0=вимкнена 1=активна
set dl_australia=0
set dl_austria=0
set dl_belgium=0
set dl_bolivia=0
set dl_brasil=0
set dl_bulgaria=0
set dl_canada=0
set dl_colombia=0
set dl_costarica=0
set dl_croatia=0
set dl_denmark=0
set dl_ecuador=0
set dl_france=1
set dl_germany=0
set dl_guatemala=0
set dl_honduras=0
set dl_indonesia=0
set dl_italy=0
set dl_mauritius=0
set dl_mexico=0
set dl_netherlands=0
set dl_newzealand=0
set dl_northmacedonia=0
set dl_paraguay=0
set dl_peru=0
set dl_poland=0
set dl_salvador=0
set dl_serbia=1
set dl_slovenia=0
set dl_southafrica=0
set dl_spain=0
set dl_switzerland=0
set dl_turkey=0
set dl_ukraine=0
set dl_unitedkingdom=0
set dl_unitedstates=1

::далі не чіпати нічого
for %%C in (australia austria belgium bolivia brasil bulgaria canada colombia costarica croatia denmark ecuador france germany guatemala honduras indonesia italy mauritius mexico netherlands newzealand northmacedonia paraguay peru poland salvador serbia slovenia southafrica spain switzerland turkey ukraine unitedkingdom unitedstates) do (
    if !dl_%%C! equ 1 set /a available_countries+=1
)
::restore health
if exist "%tmp%\update.bat" del /f "%tmp%\update.bat"
if exist "C:\ProgramData\streamrip\upd.txt" del /f "C:\ProgramData\streamrip\upd.txt"
if not exist "%cd%\streamrip" goto upd
if not exist "C:\ProgramData\streamrip" mkdir "C:\ProgramData\streamrip"
if not exist "C:\Users\%USERNAME%\AppData\Roaming\streamrip" mkdir "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
::update checker
if exist "%tmp%\s_version.txt" del /f "%tmp%\s_version.txt"
curl -s "https://raw.githubusercontent.com/linyv4ik/update/main/s_version.txt" --output "%tmp%\s_version.txt"
cls
set /p file_version=<"%tmp%\s_version.txt"
if %version% lss %file_version% (
    echo Поточна версія %version% вийшло оновлення %file_version%
	goto choice
)
set dl=1
goto menu

:menu
title streamrip v %version%   Країн доступно на момент оновлення: %available_countries%/36
echo.
echo Введіть посилання на альбом Deezer або виберіть бажану опцію з меню
echo.
echo 1 Завантажити посилання з файлу url.txt
echo 2 Видалити історію завантаження
echo.
set /P input=
if %input% == 2 (goto deezer_db)

:australia
set country=australia
if %dl_australia% == 0 (goto austria)
if %dl% == 1 (goto downloads)
set dl=1

:austria
set country=austria
if %dl_austria% == 0 (goto belgium)
if %dl% == 1 (goto downloads)
set dl=1

:belgium
set country=belgium
if %dl_belgium% == 0 (goto bolivia)
if %dl% == 1 (goto downloads)
set dl=1

:bolivia
set country=bolivia
if %dl_bolivia% == 0 (goto brasil)
if %dl% == 1 (goto downloads)
set dl=1

:brasil
set country=brasil
if %dl_brasil% == 0 (goto bulgaria)
if %dl% == 1 (goto downloads)
set dl=1

:bulgaria
set country=bulgaria
if %dl_bulgaria% == 0 (goto canada)
if %dl% == 1 (goto downloads)
set dl=1

:canada
set country=canada
if %dl_canada% == 0 (goto colombia)
if %dl% == 1 (goto downloads)
set dl=1

:colombia
set country=colombia
if %dl_colombia% == 0 (goto costarica)
if %dl% == 1 (goto downloads)
set dl=1

:costarica
set country=costarica
if %dl_costarica% == 0 (goto croatia)
if %dl% == 1 (goto downloads)
set dl=1

:croatia
set country=croatia
if %dl_croatia% == 0 (goto ecuador)
if %dl% == 1 (goto downloads)
set dl=1

:ecuador
set country=ecuador
if %dl_ecuador% == 0 (goto denmark)
if %dl% == 1 (goto downloads)
set dl=1

:denmark
set country=denmark
if %dl_denmark% == 0 (goto france)
if %dl% == 1 (goto downloads)
set dl=1

:france
set country=france
if %dl_france% == 0 (goto germany)
if %dl% == 1 (goto downloads)
set dl=1

:germany
set country=germany
if %dl_germany% == 0 (goto guatemala)
if %dl% == 1 (goto downloads)
set dl=1

:guatemala
set country=guatemala
if %dl_guatemala% == 0 (goto honduras)
if %dl% == 1 (goto downloads)
set dl=1

:honduras
set country=honduras
if %dl_honduras% == 0 (goto italy)
if %dl% == 1 (goto downloads)
set dl=1

:italy
set country=italy
if %dl_italy% == 0 (goto indonesia)
if %dl% == 1 (goto downloads)
set dl=1

:indonesia
set country=indonesia
if %dl_indonesia% == 0 (goto mauritius)
if %dl% == 1 (goto downloads)
set dl=1

:mauritius
set country=mauritius
if %dl_mauritius% == 0 (goto mexico)
if %dl% == 1 (goto downloads)
set dl=1

:mexico
set country=mexico
if %dl_mexico% == 0 (goto netherlands)
if %dl% == 1 (goto downloads)
set dl=1

:netherlands
set country=netherlands
if %dl_netherlands% == 0 (goto newzealand)
if %dl% == 1 (goto downloads)
set dl=1

:newzealand
set country=newzealand
if %dl_newzealand% == 0 (goto northmacedonia)
if %dl% == 1 (goto downloads)
set dl=1

:northmacedonia
set country=northmacedonia
if %dl_northmacedonia% == 0 (goto paraguay)
if %dl% == 1 (goto downloads)
set dl=1

:paraguay
set country=paraguay
if %dl_paraguay% == 0 (goto peru)
if %dl% == 1 (goto downloads)
set dl=1

:peru
set country=peru
if %dl_peru% == 0 (goto poland)
if %dl% == 1 (goto downloads)
set dl=1

:poland
set country=poland
if %dl_poland% == 0 (goto salvador)
if %dl% == 1 (goto downloads)
set dl=1

:salvador
set country=salvador
if %dl_salvador% == 0 (goto serbia)
if %dl% == 1 (goto downloads)
set dl=1

:serbia
set country=serbia
if %dl_serbia% == 0 (goto slovenia)
if %dl% == 1 (goto downloads)
set dl=1

:slovenia
set country=slovenia
if %dl_slovenia% == 0 (goto southafrica)
if %dl% == 1 (goto downloads)
set dl=1

:southafrica
set country=southafrica
if %dl_southafrica% == 0 (goto spain)
if %dl% == 1 (goto downloads)
set dl=1

:spain
set country=spain
if %dl_spain% == 0 (goto switzerland)
if %dl% == 1 (goto downloads)
set dl=1

:switzerland
set country=switzerland
if %dl_switzerland% == 0 (goto turkey)
if %dl% == 1 (goto downloads)
set dl=1

:turkey
set country=turkey
if %dl_turkey% == 0 (goto ukraine)
if %dl% == 1 (goto downloads)
set dl=1

:ukraine
set country=ukraine
if %dl_ukraine% == 0 (goto unitedkingdom)
if %dl% == 1 (goto downloads)
set dl=1

:unitedkingdom
set country=unitedkingdom
if %dl_unitedkingdom% == 0 (goto unitedstates)
if %dl% == 1 (goto downloads)
set dl=1

:unitedstates
set country=unitedstates
if %dl_unitedstates% == 0 (goto menu)
if %dl% == 1 (goto downloads)
set dl=1

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
:: примусове оновлення streamrip
::pip uninstall -y streamrip
::pip install streamrip

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

:downloads
echo.
title streamrip %country%
if not exist "%cd%\streamrip\%country%.toml" goto country_skip
xcopy "%cd%\streamrip\%country%.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\%country%.toml" config.toml
move /Y "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Roaming\streamrip"
echo.
if %input% == 1 (
	for /f "delims=" %%a in (url.txt) do (
    set url=%%a
        rip url !url!
)
) else (
    rip url %input%
)
:country_skip
set dl=0
goto %country%