@echo off
chcp 65001 >nul
color 0B
title Antigravity 软件更新后一键重新汉化修复

echo ==================================================
echo   Antigravity 软件自动更新后 - 一键重新汉化修复
echo ==================================================
echo.
echo [原理说明] 
echo Antigravity 自动升级新版本时，Electron 会下载官方最新 app.asar，
echo 这会将之前的汉化覆盖还原为英文。
echo 此时无需惊慌，只需关闭软件后运行本脚本，3秒即可重新完成汉化！
echo.

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
echo [✓ 成功] 已为您无缝完成最新版本的中文汉化重新注入！
echo 重新打开软件即可继续享用中文界面。
echo.
timeout /t 5
