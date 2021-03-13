@echo off

if DEFINED DESTDIR (
  echo "Destdir.............%DESTDIR%"
  set DESTDIR_ARG="--root=%DESTDIR%"
)

cd "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/control_node"

if NOT EXIST "C:\hiwin_general_ws\install\lib/site-packages\" (
  mkdir "C:\hiwin_general_ws\install\lib/site-packages"
)

set "PYTHONPATH=C:\hiwin_general_ws\install\lib/site-packages;C:/hiwin_general_ws/build\lib/site-packages"
set "CATKIN_BINARY_DIR=C:/hiwin_general_ws/build"
for /f "usebackq tokens=*" %%a in ('C:\hiwin_general_ws\install') do (
  set _SETUPTOOLS_INSTALL_PATH=%%~pna
  set _SETUPTOOLS_INSTALL_ROOT=%%~da
)

"C:/opt/ros/melodic/x64/python.exe" ^
    "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/control_node\setup.py" ^
    build --build-base "C:/hiwin_general_ws/build/Hiwin_ros_general_edition/control_node" ^
    install %DESTDIR_ARG%  ^
    --prefix="%_SETUPTOOLS_INSTALL_PATH%" ^
    --install-scripts="%_SETUPTOOLS_INSTALL_PATH%\bin" ^
    --root=%_SETUPTOOLS_INSTALL_ROOT%\
