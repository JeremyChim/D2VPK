@echo off
setlocal enabledelayedexpansion

echo ���棺�˽ű����Ƴ���ǰĿ¼�������ļ���ǰ���»��ߡ�
echo.
echo ���������Ŀ¼��%CD%
echo.

:: choice /C YN /M "�Ƿ����ִ��? [Y/N]"
:: if errorlevel 2 (
::     echo ������ȡ����
::     goto :eof
:: )

for %%a in (*.txt) do (
    set "filename=%%a"
    if "!filename:~0,1!"=="_" (
        if not "%%a"=="%~nx0" (
            set "newname=!filename:~1!"
            echo ����������: "%%a"  -^>  "!newname!"
            ren "%%a" "!newname!"
        )
    )
)

echo.
echo ������ɣ�
:: pause
    