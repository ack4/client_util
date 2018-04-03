@ECHO OFF
cd /d %~dp0

TASKLIST | FIND "bash.exe" > NUL

IF NOT ERRORLEVEL 1  (
	GOTO OK
) ELSE (
	GOTO NG
)

:OK
	2_bash.ttl
	GOTO END
:NG
	cscript 0_bash.vbs
	2_bash.ttl
	GOTO END
:END
EXIT