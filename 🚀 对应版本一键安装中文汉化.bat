@echo off
chcp 65001 >nul
color 0A
title Antigravity 终极精译中文汉化补丁

echo ==================================================
echo   Antigravity 终极精译中文汉化补丁 (全自动版)
echo ==================================================
echo.
echo [提示] 替换底层 app.asar 前，请先保存工作并手动关闭 Antigravity 界面。
echo.

node "%~dp0scripts\localization_engine.js" --brand-title translated %*

if %errorlevel% neq 0 (
    node "%~dp0localization_engine.js" --brand-title translated %*
)

if %errorlevel% neq 0 (
    echo.
    echo [错误] 汉化注入失败! 请检查软件是否已完全退出。
    pause
    exit /b 1
)

echo.
echo ==================================================
echo [成功] 汉化注入完成! 正在为您重新打开全中文界面 Antigravity...
echo ==================================================
echo.

if exist "C:\Users\1\AppData\Local\Programs\antigravity\Antigravity.exe" (
    start "" "C:\Users\1\AppData\Local\Programs\antigravity\Antigravity.exe"
)

timeout /t 3
