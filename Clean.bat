
REM Name   : ����������
REM Version: V0.3
REM Author : xlog


@ECHO off
ECHO ��������VS�����в���Ҫ���ļ�
ECHO ��ȷ�����ļ������ڹ���Ŀ¼֮�в��ر�VS
ECHO ��ʼ�������Ե�......


ECHO ����������Ŀ¼

::ECHO ����sdf�ļ�
::DEL /q/a/f/s *.sdf

ECHO ����ipch�ļ�
DEL /q/a/f/s ipch\*.*

::ECHO ����suo�ļ�
::DEL /q/a/f/s *.suo


ECHO ������ĿĿ¼

REM ö��ÿ��Ŀ¼����Ŀ¼
FOR /f "delims=" %%a IN ('DIR /ad /b /n /s "*obj" "*bin" "*Debug" "*Release"') DO (
    ECHO ö��Ŀ¼��"%%a"
    IF EXIST "%%a" (
        REM ����"Debug"Ŀ¼
        IF /i "%%~na" == "Debug" (
            ECHO ���� "%%a" Ŀ¼

            REM ����"Debug"Ŀ¼
            CD "%%a"

            REM ����"*.tlog"Ŀ¼
            FOR /f "delims=" %%i IN ('DIR /ad /b "*.tlog*"') DO (
                ECHO Debug׼��ɾ��Ŀ¼��"%%i"
                IF EXIST "%%i" ( RD /s /q "%%i" )
            )

            REM �����ļ�
            DEL /q/a/f/s *.obj
            DEL /q/a/f/s *.tlog
            DEL /q/a/f/s *.log
            DEL /q/a/f/s *.res
            DEL /q/a/f/s *.idb
            DEL /q/a/f/s *.pdb
            DEL /q/a/f/s *.ilk
            DEL /q/a/f/s *.pch
            DEL /q/a/f/s *.bsc
            DEL /q/a/f/s *.sbr
            DEL /q/a/f/s *.ipdb
            DEL /q/a/f/s *.iobj
            DEL /q/a/f/s *.manifest
            DEL /q/a/f/s *.xml

            ECHO ���� "%%a" Ŀ¼���
            ECHO.
        )
        
        REM ����"Release"Ŀ¼
        IF /i "%%~na" == "Release" (
            ECHO ���� "%%a" Ŀ¼

            REM ����"Release"Ŀ¼
            CD "%%a"

            REM ����"*.tlog"Ŀ¼
            FOR /f "delims=" %%i IN ('DIR /ad /b "*.tlog*"') DO (
                ECHO Release׼��ɾ��Ŀ¼��"%%i"
                IF EXIST "%%i" ( RD /s /q "%%i" )
            )

            REM �����ļ�
            DEL /q/a/f/s *.obj
            DEL /q/a/f/s *.tlog
            DEL /q/a/f/s *.log
            DEL /q/a/f/s *.res
            DEL /q/a/f/s *.idb
            DEL /q/a/f/s *.pdb
            DEL /q/a/f/s *.ilk
            DEL /q/a/f/s *.pch
            DEL /q/a/f/s *.ipdb
            DEL /q/a/f/s *.iobj
            DEL /q/a/f/s *.manifest
            DEL /q/a/f/s *.xml

            ECHO ���� "%%a" Ŀ¼���
            ECHO.
        )
        
        REM ����"obj"Ŀ¼
        IF /i "%%~na" == "obj" (
            ECHO ���� "%%a" Ŀ¼

            REM REM ����"obj"Ŀ¼
            REM CD "%%a"

            REM REM ���������ļ�
            REM DEL /q/a/f/s *.*
            REM REM ɾ�������ļ���
            REM FOR /d %%i IN (*) DO ( RD /s /q "%%i" )

            REM ɾ����Ŀ¼
            ECHO obj׼��ɾ��Ŀ¼��"%%a"
            RD /s /q "%%a"

            ECHO ���� "%%a" Ŀ¼���
            ECHO.
        )
    )
)

::PAUSE

REM ������Ŀ¼
CD "%~p0"

ECHO �ļ�������ϣ���������3����˳������ڽ��뵹��ʱ.........
@ECHO off
ECHO WScript.Sleep 500 > %temp%.\tmp$$$.vbs
SET /a i = 3
:Timeout
IF %i% == 0 goto Next
    SETLOCAL
    SET /a i = %i% - 1
    ECHO ����ʱ����%i%
    CSCRIPT //nologo %temp%.\tmp$$$.vbs
    GOTO Timeout
    GOTO End
:Next
CLS &
ECHO.