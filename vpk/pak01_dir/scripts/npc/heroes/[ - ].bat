@echo off
setlocal enabledelayedexpansion

echo ���棺�˽ű����ڵ�ǰĿ¼�µ������ļ���ǰ����»��ߡ�
echo.
echo ���������Ŀ¼��%CD%
echo.

:: choice /C YN /M "�Ƿ����ִ��? [Y/N]"
:: if errorlevel 2 (
::     echo ������ȡ����
::     goto :eof
:: )

for %%a in (*.txt) do (
    if not "%%a"=="%~nx0" (
        echo rename: "%%a"  -^>  "_%%a"
        ren "%%a" "_%%a"
    )
)

echo.
echo ������ɣ�
:: pause
    