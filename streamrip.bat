::v1.02
chcp 65001
@echo off
if not exist "C:\ProgramData\streamrip" mkdir "C:\ProgramData\streamrip"
if not exist "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip" mkdir "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
cls
:loop
set /P input="Введіть посилання на альбом Deezer: "

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

goto loop
