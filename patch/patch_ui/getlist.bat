@echo off
setlocal enabledelayedexpansion
echo ���Ժ�...
echo.
set time=%date:~2,2%%date:~5,2%%date:~8,2%
set listfiles=*%time%
if exist res\achoo (
    for /f %%l in ( ignorelist-%time% ) do ( move res\%%l res_ignore )
) else (
    echo ��������ƶ�����
    echo.
    )
if exist res (
    title ������
    if exist %listfiles% (
        del /q %listfiles% && goto gen
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
dir res /b /n >> reslist-%time%
dir res_ignore /b /n >> ignorelist-%time%
title �ɹ�
echo ��ɣ����ɵ��ļ��ǣ�reslist-!time! �� ignorelist-!time!
echo.
pause
