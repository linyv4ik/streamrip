chcp 65001
@echo off
if not exist "C:\ProgramData\streamrip" mkdir "C:\ProgramData\streamrip"
if not exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip" mkdir "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
set version=1.2
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
if %input% == 1 (goto file_dl)
if %input% == 2 (goto deezer_db)


::australia
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\australia.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\australia.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 %input%

::austria
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\austria.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\austria.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 %input%

::belgium
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\belgium.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\belgium.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 %input%

::bolivia
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\bolivia.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\bolivia.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 %input%

::brasil
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\brasil.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\brasil.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 %input%

::bulgaria
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\bulgaria.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\bulgaria.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 %input%

::canada
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\canada.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\canada.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 %input%

::colombia
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\colombia.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\colombia.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 %input%

::costarica
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\costarica.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\costarica.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 %input%

::croatia
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\croatia.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\croatia.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 %input%

::denmark
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\denmark.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\denmark.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 %input%

::france
if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
xcopy "%cd%\streamrip\france.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\france.toml" config.toml
move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
rip url --max-quality 4 %input%

::germany
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\germany.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\germany.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 %input%

::guatemala
if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
xcopy "%cd%\streamrip\guatemala.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\guatemala.toml" config.toml
move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
rip url --max-quality 4 %input%

::italy
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\italy.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\italy.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 %input%

::indonesia
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\indonesia.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\indonesia.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 %input%

::mauritius
if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
xcopy "%cd%\streamrip\mauritius.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\mauritius.toml" config.toml
move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
rip url --max-quality 4 %input%

::mexico
if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
xcopy "%cd%\streamrip\mexico.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\mexico.toml" config.toml
move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
rip url --max-quality 4 %input%

::netherlands
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\netherlands.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\netherlands.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 %input%

::newzealand
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\newzealand.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\newzealand.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 %input%

::northmacedonia
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\northmacedonia.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\northmacedonia.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 %input%

::paraguay
if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
xcopy "%cd%\streamrip\paraguay.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\paraguay.toml" config.toml
move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
rip url --max-quality 4 %input%

::peru
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\peru.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\peru.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 %input%

::salvador
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\salvador.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\salvador.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 %input%

::serbia
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\serbia.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\serbia.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 %input%

::southafrica
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\southafrica.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\southafrica.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 %input%

::turkey
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\turkey.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\turkey.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 %input%

::unitedkingdom
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\unitedkingdom.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\unitedkingdom.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 %input%

::unitedstates
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\unitedstates.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\unitedstates.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 %input%

goto menu

:file_dl

::australia
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\australia.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\australia.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 --file url.txt

::austria
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\austria.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\austria.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 --file url.txt

::belgium
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\belgium.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\belgium.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 --file url.txt

::bolivia
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\bolivia.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\bolivia.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 --file url.txt

::brasil
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\brasil.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\brasil.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 --file url.txt

::bulgaria
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\bulgaria.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\bulgaria.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 --file url.txt

::canada
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\canada.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\canada.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 --file url.txt

::colombia
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\colombia.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\colombia.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 --file url.txt

::costarica
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\costarica.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\costarica.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 --file url.txt

::croatia
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\croatia.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\croatia.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 --file url.txt

::denmark
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\denmark.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\denmark.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 --file url.txt

::france
if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
xcopy "%cd%\streamrip\france.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\france.toml" config.toml
move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
rip url --max-quality 4 --file url.txt

::germany
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\germany.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\germany.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 --file url.txt

::guatemala
if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
xcopy "%cd%\streamrip\guatemala.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\guatemala.toml" config.toml
move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
rip url --max-quality 4 --file url.txt

::italy
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\italy.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\italy.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 --file url.txt

::indonesia
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\indonesia.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\indonesia.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 --file url.txt

::mauritius
if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
xcopy "%cd%\streamrip\mauritius.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\mauritius.toml" config.toml
move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
rip url --max-quality 4 --file url.txt

::mexico
if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
xcopy "%cd%\streamrip\mexico.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\mexico.toml" config.toml
move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
rip url --max-quality 4 --file url.txt

::netherlands
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\netherlands.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\netherlands.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 --file url.txt

::newzealand
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\newzealand.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\newzealand.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 --file url.txt

::northmacedonia
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\northmacedonia.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\northmacedonia.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 --file url.txt

::paraguay
if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
xcopy "%cd%\streamrip\paraguay.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\paraguay.toml" config.toml
move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
rip url --max-quality 4 --file url.txt

::peru
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\peru.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\peru.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 --file url.txt

::salvador
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\salvador.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\salvador.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 --file url.txt

::serbia
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\serbia.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\serbia.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 --file url.txt

::southafrica
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\southafrica.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\southafrica.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 --file url.txt

::turkey
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\turkey.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\turkey.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 --file url.txt

::unitedkingdom
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\unitedkingdom.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\unitedkingdom.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 --file url.txt

::unitedstates
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\unitedstates.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\unitedstates.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 --file url.txt

goto menu

:deezer_db
if exist "C:\ProgramData\streamrip\downloads.db" del /f/q "C:\ProgramData\streamrip\downloads.db"
if exist "C:\ProgramData\streamrip\failed_downloads.db" del /f/q "C:\ProgramData\streamrip\failed_downloads.db"
echo.
echo Історію завантаження видалено!
goto menu

:choice
set /p update="Оновити скрипт до останньої версії? (1 так / 0 ні): "
cls
if %update% == 0 (goto menu)
if %update% == 1 (goto upd)
goto choice
:upd
if exist "%tmp%\streamrip" @rd /s /q "%tmp%\streamrip"
if exist "%tmp%\streamrip.zip" del /f "%tmp%\streamrip.zip"
if not exist "%tmp%\streamrip" mkdir "%tmp%\streamrip"
curl -s "https://codeload.github.com/linyv4ik/streamrip/zip/refs/heads/main" --output "%tmp%\streamrip.zip"
powershell Expand-Archive "%tmp%\streamrip.zip" -DestinationPath "%tmp%\streamrip"
xcopy "%tmp%\streamrip\streamrip-main\*" "%cd%" /E /I /Y
if exist "%tmp%\streamrip" @rd /s /q "%tmp%\streamrip"
if exist "%tmp%\streamrip.zip" del /f "%tmp%\streamrip.zip"
timeout /t 2
start cmd /c "streamrip.bat"
exit