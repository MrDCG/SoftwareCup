@echo on&setlocal enabledelayedexpansion
set dd=%cd%

set n=0
set avi=.avi
set mp4=.mp4
for /f "delims=" %%a in ('dir /b  *.avi') do (
set /a n+=1
set "video!n!=%%a"
)
for /f "tokens=1* delims==" %%a in ('set video') do (
echo %%b    %%a

call :show %%b
echo !str2!
set "aa=!str2!%avi%"
echo !aa!	
set "bb=!str2!%mp4%"
echo !bb!	

ffmpeg -i !aa! -vcodec libx264 -preset ultrafast -b:v 2000k !bb!
del !aa!

move !bb! %cd%\Videos
)
pause
goto :eof
:show
set str2=%~dpn1

