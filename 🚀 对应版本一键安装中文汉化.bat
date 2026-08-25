@echo off
chcp 65001 >nul
color 0A
title Antigravity 终极精译中文汉化补丁

echo ==================================================
echo   Antigravity 终极精译中文汉化补丁 (全自动版)
echo ==================================================
echo.
echo [1/3] 正在全自动关闭 Antigravity 运行进程与后台服务以解除文件锁定...
taskkill /F /IM Antigravity.exe /T >nul 2>nul
taskkill /F /IM antigravity.exe /T >nul 2>nul
taskkill /F /IM language_server.exe /T >nul 2>nul
timeout /t 1 /nobreak >nul

echo [2/3] 正在执行全自动中文汉化补丁注入...
node "%~dp0scripts\localization_engine.js" --brand-title translated %*

if %errorlevel% neq 0 (
    node "%~dp0localization_engine.js" --brand-title translated %*
)

if %errorlevel% neq 0 (
    echo.
    echo [错误] 汉化注入失败！请重试或检查文件是否损坏。
    pause
    exit /b 1
)

echo.
echo ==================================================
echo [3/3] 汉化注入成功！正在为您自动启动全中文界面 Antigravity...
echo ==================================================
echo.

if exist "C:\Users\1\AppData\Local\Programs\antigravity\Antigravity.exe" (
    start "" "C:\Users\1\AppData\Local\Programs\antigravity\Antigravity.exe"
)

timeout /t 3
