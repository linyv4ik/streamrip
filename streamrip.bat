::v1.02
chcp 65001
@echo off
if not exist "C:\ProgramData\streamrip" mkdir "C:\ProgramData\streamrip"
if not exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip" mkdir "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
cls
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
if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
xcopy "%cd%\streamrip\australia.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\australia.toml" config.toml
move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
rip url --max-quality 4 %input%

::canada
if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
xcopy "%cd%\streamrip\canada.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\canada.toml" config.toml
move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
rip url --max-quality 4 %input%

::costarica
if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
xcopy "%cd%\streamrip\costarica.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\costarica.toml" config.toml
move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
rip url --max-quality 4 %input%

::france
if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
xcopy "%cd%\streamrip\france.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\france.toml" config.toml
move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
rip url --max-quality 4 %input%

::mauritius
if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
xcopy "%cd%\streamrip\mauritius.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\mauritius.toml" config.toml
move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
rip url --max-quality 4 %input%

::peru
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\peru.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\peru.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 %input%

::turkey
if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
xcopy "%cd%\streamrip\turkey.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\turkey.toml" config.toml
move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
rip url --max-quality 4 %input%

::unitedstates
if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
xcopy "%cd%\streamrip\unitedstates.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\unitedstates.toml" config.toml
move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
rip url --max-quality 4 %input%

goto menu

:file_dl

::australia
if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
xcopy "%cd%\streamrip\australia.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\australia.toml" config.toml
move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
rip url --max-quality 4 --file url.txt

::canada
if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
xcopy "%cd%\streamrip\canada.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\canada.toml" config.toml
move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
rip url --max-quality 4 --file url.txt

::costarica
if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
xcopy "%cd%\streamrip\costarica.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\costarica.toml" config.toml
move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
rip url --max-quality 4 --file url.txt

::france
if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
xcopy "%cd%\streamrip\france.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\france.toml" config.toml
move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
rip url --max-quality 4 --file url.txt

::mauritius
if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
xcopy "%cd%\streamrip\mauritius.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\mauritius.toml" config.toml
move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
rip url --max-quality 4 --file url.txt

::peru
::if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
::xcopy "%cd%\streamrip\peru.toml" "C:\ProgramData\streamrip" /y
::rename "C:\ProgramData\streamrip\peru.toml" config.toml
::move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
::rip url --max-quality 4 --file url.txt

::turkey
if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
xcopy "%cd%\streamrip\turkey.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\turkey.toml" config.toml
move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
rip url --max-quality 4 --file url.txt

::unitedstates
if exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml" del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
xcopy "%cd%\streamrip\unitedstates.toml" "C:\ProgramData\streamrip" /y
rename "C:\ProgramData\streamrip\unitedstates.toml" config.toml
move "C:\ProgramData\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
rip url --max-quality 4 --file url.txt

goto menu

:deezer_db
if exist "C:\ProgramData\streamrip\downloads.db" del /f/q "C:\ProgramData\streamrip\downloads.db"
if exist "C:\ProgramData\streamrip\failed_downloads.db" del /f/q "C:\ProgramData\streamrip\failed_downloads.db"
echo.
echo Історію завантаження видалено!
goto menu
