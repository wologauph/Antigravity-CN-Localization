---
title: Antigravity 中文汉化包与更新修复系统标准作业程序 (SOP)
date: 2026-08-26
category: 生产力法宝与自动化
tags: [Antigravity, 汉化, i18n, 自动更新修复, SOP]
---

# 🇨🇳 Antigravity 中文汉化与自动更新修复 SOP

> **💡 核心宗旨**：为 Antigravity 打造 100% 精准的中文体验。解决 Electron 自动升级覆盖 `app.asar` 的痛点，提供 3 秒一键重新汉化自愈通道，彻底消除英文使用门槛。

---

## 🛠️ 一、 汉化原理与更新覆盖真相

1. **注入原理**：
   Antigravity 基于 Electron 架构。汉化引擎利用 `@electron/asar` 解包 `resources/app.asar`，将 770+ 精准翻译字典注入 workbench 视图及菜单层，随后打包回 `app.asar`。
2. **为什么自动更新后会恢复英文？**
   Antigravity 官方在发布新版本时，后台更新程序会自动从 Google Cloud 节点下载最新的 `app.asar` 并覆盖本地文件。这一操作会自然替换掉注入了汉化代码的旧文件。
3. **自愈方案**：
   汉化包保留了完整的字典与引擎。一旦官方更新导致跳回英文，只需在关闭软件后双击 **`🔄 软件更新后一键修复汉化.bat`**，即可 3 秒内自动完成最新版本的重新注入！

---

## 🚀 二、 极简部署与使用手册

- **首次安装**：先关闭 Antigravity，双击 `🚀 对应版本一键安装中文汉化.bat`。
- **版本更新后修复**：双击 `🔄 软件更新后一键修复汉化.bat`。
- **还原官方英文**：双击 `🛑 卸载还原官方英文.bat`。

---

## 📂 三、 关联资产与路径

- **本地项目路径**：`C:\Users\1\Desktop\我的软件\Antigravity-CN-Localization`
- **玉简存档备份**：`D:\小插件自己制作有用的放着\antigravity汉化包`
- **GitHub 开源仓库**：[wologauph/Antigravity-CN-Localization](https://github.com/wologauph/Antigravity-CN-Localization)
