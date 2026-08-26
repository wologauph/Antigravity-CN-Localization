@echo off
chcp 65001 >nul
color 0B
title Antigravity 软件更新后一键重新汉化修复

echo ==================================================
echo   Antigravity 软件自动更新后 - 一键重新汉化修复
echo ==================================================
echo.
echo [原理] 官方更新会覆盖 app.asar。关闭软件后双击本脚本，3秒完成无缝重新汉化!
echo.

node "%~dp0scripts\localization_engine.js" --brand-title translated %*

if %errorlevel% neq 0 (
    node "%~dp0localization_engine.js" --brand-title translated %*
)

if %errorlevel% neq 0 (
    echo.
    echo [错误] 修复失败，请先关闭 Antigravity 软件后重试!
    pause
    exit /b 1
)

echo.
echo ==================================================
echo [成功] 修复成功! 正在为您重新启动全中文界面 Antigravity...
echo ==================================================
echo.

if exist "C:\Users\1\AppData\Local\Programs\antigravity\Antigravity.exe" (
    start "" "C:\Users\1\AppData\Local\Programs\antigravity\Antigravity.exe"
)

timeout /t 3
