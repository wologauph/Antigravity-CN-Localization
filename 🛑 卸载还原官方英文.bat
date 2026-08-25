@echo off
chcp 65001 >nul
color 0C
title Antigravity 还原官方英文界面

echo ==================================================
echo   Antigravity 还原官方英文界面
echo ==================================================
echo.
echo [提示] 还原前请先关闭 Antigravity 软件！
echo.

node "%~dp0scripts\localization_engine.js" --restore %*

if %errorlevel% neq 0 (
    node "%~dp0localization_engine.js" --restore %*
)

if %errorlevel% neq 0 (
    echo.
    echo [错误] 还原失败，请检查软件是否正在运行！
    pause
    exit /b 1
)

echo.
echo [✓ 成功] 已成功还原为官方原始英文包！
echo.
timeout /t 5
