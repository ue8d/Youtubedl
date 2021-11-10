@echo off

rem
rem Youtubeダウンローダーのアップデートパッチ
rem

rem youtubedlのパスを記載
set YPATH="D:\Program Files\youtubedl\youtube-dl.exe"

rem ダウンロード
%YPATH% --update

pause

exit