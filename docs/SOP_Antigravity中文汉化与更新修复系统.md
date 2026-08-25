---
title: Antigravity 中文汉化包与更新修复系统标准作业程序 (SOP)
date: 2026-08-26
category: 生产力法宝与自动化
tags: [Antigravity, 汉化, i18n, 自动更新修复, SOP]
---

# 🇨🇳 Antigravity 中文汉化与自动更新修复 SOP

> **💡 核心宗旨**：为 Antigravity 打造 100% 精准的中文体验。解决 Electron 自动升级覆盖 `app.asar` 的痛点，提供 3 秒一键重新汉化自愈通道，彻底消除英文使用门槛。

---

## 🛠️ 一、 核心脚本使用场景精准界定（主人必看）

为防止混淆，两个核心批处理脚本的适用场景界定如下：

1. **`🚀 对应版本一键安装中文汉化.bat`**：
   - **适用场景**：**【第一次安装 / 全新汉化】**。
   - 当您第一天使用汉化包、或者之前手动还原成了官方英文界面，现在想全新完成汉化时使用。
   - **使用流程**：手动关闭 Antigravity ➔ 双击此脚本 ➔ 重新打开软件即完成汉化。

2. **`🔄 软件更新后一键修复汉化.bat`**：
   - **适用场景**：**【软件后台自动升级导致跳回英文后】**。
   - 当未来的某一天，Antigravity 官方发布了新版本、后台静默更新后导致界面突然变回英文时使用。
   - **底层原理**：Antigravity 是 Electron 软件，官方每次静默升级都会从云端下载全新的 `app.asar` 覆盖本地文件。这会冲掉原有的汉化代码。
   - **自愈流程**：无需重新配置或修改任何参数，手动关闭 Antigravity ➔ 双击此脚本 ➔ **3秒内自动识别最新版本的 app.asar 并无缝重新完成汉化注入**！

3. **`🛑 卸载还原官方英文.bat`**：
   - **适用场景**：**【需要恢复官方原始英文界面时】**。

---

## 📂 二、 本地与云端资产备份位置

- **本地桌面工具目录**：`C:\Users\1\Desktop\我的软件\Antigravity-CN-Localization`
- **D 盘源码备份目录**：`D:\小插件自己制作有用的放着\antigravity汉化包`
- **玉简 SOP 路径**：`04_法宝库与自动化管家/01_软件与工具SOP/SOP_Antigravity中文汉化与更新修复系统.md`
- **GitHub 远程仓库**：[wologauph/Antigravity-CN-Localization](https://github.com/wologauph/Antigravity-CN-Localization)
