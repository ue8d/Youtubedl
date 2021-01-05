@echo off

rem
rem ファイル結合
rem

rem ffmpegのパスを記載
set FPATH=""

rem このバッチが存在するフォルダをカレントに
pushd %0\..
cls

SET INPUT_VIDEO=
SET /P INPUT_VIDEO="インプット動画を入力："

SET INPUT_AUDIO=
SET /P INPUT_AUDIO="インプット音声を入力："

SET INPUT_NAME=
SET /P INPUT_NAME="アウトプット名を入力："

rem 結合
%FPATH%  -i %INPUT_VIDEO% -i %INPUT_AUDIO% -c:v copy -c:a aac -map 0:v:0 -map 1:a:0 "%INPUT_NAME%.mp4"

rem ファイル削除
del %INPUT_VIDEO%
del %INPUT_AUDIO%

exit