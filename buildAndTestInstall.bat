@echo off
pushd %~dp0
call nuget pack -NoPackageAnalysis piskel.nuspec
call choco install piskel -force -source "%CD%"
popd
pause
