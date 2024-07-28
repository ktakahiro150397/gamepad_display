@echo off

REM サーバー起動
cd server
start "" "vue_gamepad_server.exe"

REM クライアント起動
cd ../client
start "" "gamepad_input_display 0.0.1.exe"

cd ..
