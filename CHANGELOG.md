# 变更日志 (CHANGELOG)

## [2.0.0] - 2026-08-26

### 新增与优化 (Added & Improved)
- **终极精译词典升级**：新增补全 Subagents、Planning Mode、Implementation Plan、Walkthrough、MCP 状态、Token 消耗、斜杠命令、驱动大模型等 770+ 核心中英对照词条。
- **清理繁体垃圾**：完全剥离繁体中文字典 (`dicts_tw`) 及繁体相关脚本/资源，保持项目纯净高效。
- **版本升级修复通道**：新增 `🔄 软件更新后一键修复汉化.bat`，解决 Electron 自动升级覆盖 `app.asar` 重置为英文的问题。

---

## [1.0.0] - 2026-08-04

### 首次发布 (Initial Release)
- 支持 Antigravity 1.0 / 2.0 Electron `app.asar` 解包与汉化注入。
- 支持 Windows / macOS 平台。
- 提供一键备份 `app.asar.bak` 与一键还原功能。
