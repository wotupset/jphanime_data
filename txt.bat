git config --list
git --version

echo %date:~0,10%,%time:~0,5%>>version.txt


git add -A
git commit -am "Auto-committed on %date%"
git pull %BRANCH%
git push %BRANCH%
pause
exit








set GIT_PATH="..\PortableGit\bin\git.exe"
set BRANCH="github"




%GIT_PATH% config --list
%GIT_PATH% --version

echo %date:~0,10%,%time:~0,5%>>version.txt


%GIT_PATH% add -A
%GIT_PATH% commit -am "Auto-committed on %date%"
%GIT_PATH% pull %BRANCH%
%GIT_PATH% push %BRANCH%
pause
exit



%GIT_PATH% push -u github master
pause
exit




set BRANCH2="oschina"
rem pause
%GIT_PATH% push %BRANCH2%

pause
exit


git config --global user.name "wotupset"

git config --global user.email "wotupset@gmail.com"

git config --list

git config --global push.default simple

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
