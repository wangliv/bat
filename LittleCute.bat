@echo off

title ר�ó���
color a

:menu
cls
echo ==========ר�ó���(-_-)˽�˶��ư�V1.0=====
echo   0-�˳�                                 ^��
echo   1-��ע���б�                         ^��
echo   2-��ϵͳ����                         ^��
echo   3-�����������                       ^��
echo   4-��ʱ�չػ�                           ^��
echo   5-�򿪼�����                           ^��
echo ==========================================
set /p option="������ѡ��:"
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
echo   0-ȡ���ƻ�      ^��
echo   1-����          ^��
echo   2-10����        ^��
echo   3-30����        ^��
echo   4-60����        ^��
echo   5-120����       ^��
echo   6-�������˵�    ^��
echo ===================

set /p option="������ѡ��:"
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