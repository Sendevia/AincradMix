@echo off
setlocal enabledelayedexpansion
echo ���Ժ�...
echo.
if exist res\achoo (
    for /f %%l in ( ignorelist ) do ( move res\%%l res_ignore )
) else (
    echo ��������ƶ�����
    echo.
    )
if exist res (
    title ������
    if exist reslist (
        del /q reslist && goto gen
    ) else (
        goto gen
    )
) else (
    title ʧ��
    md res && md res_ignore
    echo ��Դ�ļ��в�����
    echo ����Ҫʹ�� dnSpy ����ȡԭ�����Դ�ļ�
    echo ������ȡ������Դ�ļ����� res �ļ�����
    echo Ȼ�������б��ű�
    echo.
    pause && exit
)
:gen
dir res /b /n >> reslist
dir res_ignore /b /n >> ignorelist
title �ɹ�
echo ��ɣ����ɵ��ļ��ǣ�reslist �� ignorelist
echo.
pause
