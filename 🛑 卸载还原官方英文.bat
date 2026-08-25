@echo off
chcp 65001 >nul
color 0C
title Antigravity 还原官方英文界面

echo ==================================================
echo   Antigravity 还原官方英文界面
echo ==================================================
echo.
echo [1/2] 正在全自动关闭 Antigravity 运行进程以解除文件锁定...
taskkill /F /IM Antigravity.exe /T >nul 2>nul
taskkill /F /IM antigravity.exe /T >nul 2>nul
taskkill /F /IM language_server.exe /T >nul 2>nul
timeout /t 1 /nobreak >nul

echo [2/2] 正在恢复官方原始英文 app.asar 包...
node "%~dp0scripts\localization_engine.js" --restore %*

if %errorlevel% neq 0 (
    node "%~dp0localization_engine.js" --restore %*
)

if %errorlevel% neq 0 (
    echo.
    echo [错误] 还原失败！
    pause
    exit /b 1
)

echo.
echo [✓ 成功] 已成功还原为官方原始英文包！
echo.
timeout /t 3
