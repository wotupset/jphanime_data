rem @echo off
cd .
set GIT_PATH="C:\Program Files\Git\bin\git.exe"
set BRANCH = "new"
 
%GIT_PATH% add -A
%GIT_PATH% commit -am "Auto-committed on %date%"
%GIT_PATH% pull %BRANCH%
%GIT_PATH% push %BRANCH%
