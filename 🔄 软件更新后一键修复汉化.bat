@echo off
chcp 65001 >nul
color 0B
title Antigravity 软件更新后一键重新汉化修复

echo ==================================================
echo   Antigravity 软件自动更新后 - 一键重新汉化修复
echo ==================================================
echo.
echo [1/3] 正在全自动关闭 Antigravity 运行进程以解除文件锁定...
taskkill /F /IM Antigravity.exe /T >nul 2>nul
taskkill /F /IM antigravity.exe /T >nul 2>nul
taskkill /F /IM language_server.exe /T >nul 2>nul
timeout /t 1 /nobreak >nul

echo [2/3] 正在重新注入最新版本的中文汉化补丁...
node "%~dp0scripts\localization_engine.js" --brand-title translated %*

if %errorlevel% neq 0 (
    node "%~dp0localization_engine.js" --brand-title translated %*
)

if %errorlevel% neq 0 (
    echo.
    echo [错误] 修复失败，请先关闭 Antigravity 软件后再试！
    pause
    exit /b 1
)

echo.
echo ==================================================
echo [3/3] 修复成功！正在为您自动重新启动全中文界面 Antigravity...
echo ==================================================
echo.

if exist "C:\Users\1\AppData\Local\Programs\antigravity\Antigravity.exe" (
    start "" "C:\Users\1\AppData\Local\Programs\antigravity\Antigravity.exe"
)

timeout /t 3
