@echo off
reg query HKEY_CURRENT_USER\Software\Adobe\CSXS.7 /v PlayerDebugMode
if %errorlevel%==1 GOTO INSTALL
:INSTALL
reg add HKEY_CURRENT_USER\Software\Adobe\CSXS.7 /v PlayerDebugMode /t REG_SZ /d 1
