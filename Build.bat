@echo off

set config=%1
if "%config%" == "" (
   set config=Debug
)

"%ProgramFiles%\Microsoft Visual Studio\2022\Enterprise\MSBuild\Current\Bin\MSBuild.exe" /t:restore
"%ProgramFiles%\Microsoft Visual Studio\2022\Enterprise\MSBuild\Current\Bin\MSBuild.exe" XTplus.Templates.sln /p:Configuration="%config%" /maxcpucount:3 /v:n

REM Pause