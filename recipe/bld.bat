
: remove existing prebuild binaries
del /F %SRC_DIR%\ansicon\ANSI32.dll
del /F %SRC_DIR%\ansicon\ANSI64.dll


"%PYTHON%" -m pip install . --no-deps --no-build-isolation --ignore-installed --no-cache-dir -vvv
if errorlevel 1 exit 1
