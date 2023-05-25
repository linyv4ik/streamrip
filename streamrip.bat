::v1.01
chcp 65001
@echo off
cls
:loop
set /P input="Введіть посилання на альбом Deezer: "

::canada
del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
if not exist "C:\ProgramData\TEMP\streamrip" mkdir "C:\ProgramData\TEMP\streamrip"
xcopy "C:\Users\%USERNAME%\AppData\Local\streamrip\canada.toml" "C:\ProgramData\TEMP\streamrip" /y
rename "C:\ProgramData\TEMP\streamrip\canada.toml" config.toml
move "C:\ProgramData\TEMP\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
if exist "C:\ProgramData\TEMP\streamrip" rmdir /S /Q "C:\ProgramData\TEMP\streamrip"
rip url --max-quality 4 %input%

::france
del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
if not exist "C:\ProgramData\TEMP\streamrip" mkdir "C:\ProgramData\TEMP\streamrip"
xcopy "C:\Users\%USERNAME%\AppData\Local\streamrip\france.toml" "C:\ProgramData\TEMP\streamrip" /y
rename "C:\ProgramData\TEMP\streamrip\france.toml" config.toml
move "C:\ProgramData\TEMP\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
if exist "C:\ProgramData\TEMP\streamrip" rmdir /S /Q "C:\ProgramData\TEMP\streamrip"
rip url --max-quality 4 %input%

::mauritius
del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
if not exist "C:\ProgramData\TEMP\streamrip" mkdir "C:\ProgramData\TEMP\streamrip"
xcopy "C:\Users\%USERNAME%\AppData\Local\streamrip\mauritius.toml" "C:\ProgramData\TEMP\streamrip" /y
rename "C:\ProgramData\TEMP\streamrip\mauritius.toml" config.toml
move "C:\ProgramData\TEMP\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
if exist "C:\ProgramData\TEMP\streamrip" rmdir /S /Q "C:\ProgramData\TEMP\streamrip"
rip url --max-quality 4 %input%

::peru
del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
if not exist "C:\ProgramData\TEMP\streamrip" mkdir "C:\ProgramData\TEMP\streamrip"
xcopy "C:\Users\%USERNAME%\AppData\Local\streamrip\peru.toml" "C:\ProgramData\TEMP\streamrip" /y
rename "C:\ProgramData\TEMP\streamrip\peru.toml" config.toml
move "C:\ProgramData\TEMP\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
if exist "C:\ProgramData\TEMP\streamrip" rmdir /S /Q "C:\ProgramData\TEMP\streamrip"
rip url --max-quality 4 %input%

::unitedstates
del /f/q "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip\config.toml"
if not exist "C:\ProgramData\TEMP\streamrip" mkdir "C:\ProgramData\TEMP\streamrip"
xcopy "C:\Users\%USERNAME%\AppData\Local\streamrip\unitedstates.toml" "C:\ProgramData\TEMP\streamrip" /y
rename "C:\ProgramData\TEMP\streamrip\unitedstates.toml" config.toml
move "C:\ProgramData\TEMP\streamrip\config.toml" "C:\Users\%USERNAME%\AppData\Local\streamrip\streamrip"
if exist "C:\ProgramData\TEMP\streamrip" rmdir /S /Q "C:\ProgramData\TEMP\streamrip"
rip url --max-quality 4 %input%

goto loop
