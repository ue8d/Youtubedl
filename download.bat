@echo off

rem
rem Youtubeダウンローダー
rem

rem youtubedlのパスを記載
set YPATH=""

rem このバッチが存在するフォルダをカレントに
pushd %0\..
cls

set INPUT_URL=
set /P INPUT_URL="URLを入力してください："

rem ダウンロード
%YPATH% %INPUT_URL% -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]"


exit