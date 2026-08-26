@echo off
title Antigravity HanHua Tool
chcp 65001 >nul

echo.
echo ==================================================
echo   Antigravity 官方原版中文汉化注入工具
echo ==================================================
echo.

node "%~dp0scripts\localization_engine.js" --brand-title translated %*
if %errorlevel% neq 0 (
    node "%~dp0localization_engine.js" --brand-title translated %*
)

if %errorlevel% neq 0 (
    echo.
    echo [错误] 注入失败，请确保已手动关闭 Antigravity 后重试。
    pause
    exit /b 1
)

echo.
echo [成功] 汉化注入完成！请重新启动 Antigravity 软件。
echo.
timeout /t 5
