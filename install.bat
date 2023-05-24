@echo off
if exist "C:\Users\%USERNAME%\AppData\Local\streamrip" rmdir /s /q "C:\Users\%USERNAME%\AppData\Local\streamrip"
xcopy "%cd%\streamrip" "C:\Users\%USERNAME%\AppData\Local\streamrip" /E /i /y
echo Done!
pause