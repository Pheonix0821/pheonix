@echo off
color 0a

:x
color 0a
cls
echo -create (create password)
echo -check (check password)
echo. 
set /p PROGRAM= What would you like to do?:
goto %PROGRAM%



:create
cls
set /p PASSWORD= password?:

echo %PASSWORD% > test.txt
pause
cls
goto x





:check
cls
set /p CODE= What is your password?: 

for /f "Delims=" %%a in (test.txt) do (
set TEXT=%%a
)
 
if %CODE%==%TEXT% goto start
echo incorrect 
pause 
cls
goto x





:start
cls
color 0b
echo Welcome to snowflake os
pause
cls

:hub
cls
echo text (work with text)
echo run (run a file)
echo.
set /p TASK=what would you like to do? 
goto %TASK%

:run
cls
set /p FILETORUN= Enter file dirctory ("tip" to make running the file easier put it in the snowflake os folder)
start %FILETORUN%
goto hub

:text
cls
echo create (create document)
echo edit (edit document)
echo.

set /p TOSK=what do you want to do with text? 
goto %TOSK%

:edit
cls
set /p DOCTORUN= Put the name of the text file here. 

start %DOCTORUN%.txt
pause
goto hub

:create
cls
set /p TEXTDOCNAME= What should the documents name be (no spaces)? 
echo %TEXTDOCNAME% > %TEXTDOCNAME%.txt
pause
goto hub