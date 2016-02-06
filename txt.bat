
set GIT_PATH="..\PortableGit\bin\git.exe"
set BRANCH = "origin"

%GIT_PATH% config --list
%GIT_PATH% --version
%GIT_PATH% add -A
%GIT_PATH% commit -am "Auto-committed on %date%"
%GIT_PATH% pull %BRANCH%
%GIT_PATH% push %BRANCH%
pause
exit


pause
exit


git config --global user.name "wotupset"

git config --global user.email "wotupset@gmail.com"

git config --list


@echo off
echo type "c (commit)" or "u (update)"
cd .
 
set GIT_PATH="C:\Program Files\Git\bin\git.exe"
set BRANCH = "origin"
 
:P
set ACTION=
set /P ACTION=Action: %=%
if "%ACTION%"=="c" (
  %GIT_PATH% add -A
	%GIT_PATH% commit -am "Auto-committed on %date%"
	%GIT_PATH% pull %BRANCH%
	%GIT_PATH% push %BRANCH%
)
if "%ACTION%"=="u" (
	%GIT_PATH% pull %BRANCH%
)
if "%ACTION%"=="exit" exit /b
pause
goto P
