@echo off
chcp 65001 >nul
color 0A
title Antigravity 终极精译中文汉化补丁

echo ==================================================
echo   Antigravity 终极精译中文汉化补丁 (全自动版)
echo ==================================================
echo.
echo [提示] 安装汉化前，请先手动保存工作并关闭 Antigravity 软件！
echo.

node "%~dp0scripts\localization_engine.js" --brand-title translated %*

if %errorlevel% neq 0 (
    node "%~dp0localization_engine.js" --brand-title translated %*
)

if %errorlevel% neq 0 (
    echo.
    echo [错误] 汉化注入失败，请确保 Antigravity 已完全关闭后重试！
    pause
    exit /b 1
)

echo.
echo ==================================================
echo [✓ 成功] Antigravity 界面已成功完成中文汉化！
echo 现在即可重新双击打开 Antigravity 软件享用全中文界面。
echo ==================================================
echo.
timeout /t 5
