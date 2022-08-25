:: Equivalent of test.sh as windows bat file
set PATH=%~dp0..\
CALL emsdk install latest
CALL emsdk activate latest
CALL emsdk_env.bat
CALL "%EMSDK_PYTHON%" -c "import sys; print(sys.executable)"
CALL emcc.bat -v
