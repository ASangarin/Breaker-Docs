@ECHO OFF

pushd %~dp0

REM Command file for Sphinx documentation

set SOURCEDIR=source
set BUILDDIR=docs

if "%1" == "" goto help

sphinx-build -M %1 %SOURCEDIR% %BUILDDIR% %SPHINXOPTS% %O%
goto end

:help
sphinx-build -M help %SOURCEDIR% %BUILDDIR% %SPHINXOPTS% %O%

:end
popd
