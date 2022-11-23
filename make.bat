@ECHO OFF

pushd %~dp0

REM Command file for Sphinx documentation

set SOURCEDIR=source
set BUILDDIR=docs

sphinx-build -M html %SOURCEDIR% %BUILDDIR% %SPHINXOPTS% %O%

pause
popd
