@echo off

title 专用程序
color a

:menu
cls
echo ==========专用程序(-_-)私人定制版V1.0=====
echo   0-退出                                 ^‖
echo   1-打开注册列表                         ^‖
echo   2-打开系统服务                         ^‖
echo   3-打开任务管理器                       ^‖
echo   4-定时闭关机                           ^‖
echo   5-打开计算器                           ^‖
echo ==========================================
set /p option="请输入选项:"
if "%option%"==""  goto menu
if "%option%"=="0" goto end
if "%option%"=="1" goto regedit
if "%option%"=="2" goto service
if "%option%"=="3" goto taskmgr
if "%option%"=="4" goto shutdown
if "%option%"=="5" goto cals
if "%option%"=="6" goto contact
goto menu

:regedit
start regedit.exe
goto menu

:service
start services.msc
goto menu

:taskmgr
start taskmgr.exe
goto menu

:shutdown
cls
echo ===================
echo   0-取消计划      ^‖
echo   1-立即          ^‖
echo   2-10分钟        ^‖
echo   3-30分钟        ^‖
echo   4-60分钟        ^‖
echo   5-120分钟       ^‖
echo   6-返回主菜单    ^‖
echo ===================

set /p option="请输入选项:"
if "%option%"==""  goto shutdown
if "%option%"=="0" start shutdown.exe -a
if "%option%"=="1" start shutdown.exe -s -t 0
if "%option%"=="2" start shutdown.exe -s -t 600
if "%option%"=="3" start shutdown.exe -s -t 1800
if "%option%"=="4" start shutdown.exe -s -t 3600
if "%option%"=="5" start shutdown.exe -s -t 7200
if "%option%"=="6" goto menu
goto shutdown

:cals
start calc.exe
goto menu


:end
echo good bye
exit