@echo off
set "Xylo=%AppData%\Xylo"
if not exist "%Xylo%" mkdir "%Xylo%"
curl -L -o "%Xylo%\xylo.exe" "https://github.com/xqrto/G4mH1x/raw/refs/heads/main/WtC/Type=Injector/xylo/xylo.exe"
cls

Call "%Xylo%\xylo.exe" --name "%1" --dll "%2" --inject > %Xylo%\xylo.tmp
set /p result=< %Xylo%\xylo.tmp
cls
if /i "%result%" == "Injektion erfolgreich!" set "rst=Injection complete" & goto nx
set "rst=Injection Not complete"
:nx

Echo --------------------- >> %Xylo%\xylo.log
echo dbugg at %Time% -- %Date% >> %Xylo%\xylo.log
echo. >> %Xylo%\xylo.log
echo process %1 >> %Xylo%\xylo.log
echo. >> %Xylo%\xylo.log
echo Dll %2 >> %Xylo%\xylo.log
echo. >> %Xylo%\xylo.log
echo %rst% >> %Xylo%\xylo.log
echo --------------------- >> %Xylo%\xylo.log
del %Xylo%\xylo.tmp /q
Exit