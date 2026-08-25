# 🇨🇳 Antigravity 终极精译中文汉化包与自动修复系统 (Antigravity CN Localization)

> **专为 Google Antigravity 打造的全自动中文汉化与版本更新自愈补丁**。
> 1. **全界面精准汉化**：涵盖菜单、设置、Subagents、MCP 知识库、通用控制台、Agent 模式、斜杠命令等 770+ 核心词条。
> 2. **自动更新随心自愈**：解决 Antigravity 官方自动更新后 Electron `app.asar` 被覆盖还原为英文的问题，双击修复脚本 3 秒完成无缝重注入！
> 3. **极简绿色无毒**：纯 JS/JSON 字典注入，不改变原生架构，提供一键还原官方英文功能。

---

## 📌 批处理脚本使用场景精准说明（主人必读）

| 脚本名称 | 什么时候使用？（使用场景） | 使用方法与步骤 |
| :--- | :--- | :--- |
| **`🚀 对应版本一键安装中文汉化.bat`** | **【第一次安装 / 全新汉化】**<br>当您第一次下载汉化包，或者之前卸载还原了英文，现在想全新重新完成汉化时使用。 | 1. 手动关闭 Antigravity 软件；<br>2. 双击运行此脚本；<br>3. 提示成功后重新打开软件。 |
| **`🔄 软件更新后一键修复汉化.bat`** | **【软件自动升级跳回英文后】**<br>未来的某一天，当 Antigravity 后台自动更新了版本、导致**界面突然又跳回英文**时，专门用此脚本！无需重新配置，3秒无缝恢复最新汉化！ | 1. 手动关闭 Antigravity 软件；<br>2. 双击运行此脚本（无需任何配置）；<br>3. 提示成功后重新打开软件。 |
| **`🛑 卸载还原官方英文.bat`** | **【恢复官方英文界面】**<br>当您由于调试需求或临时需要查看官方原始英文界面时使用。 | 1. 手动关闭 Antigravity 软件；<br>2. 双击运行此脚本；<br>3. 3秒完成原始 `app.asar.bak` 恢复。 |

---

## 🚀 极其简单的操作逻辑

```text
               ┌──────────────────────────────┐
               │ 想使用中文界面 / 首次安装汉化 │
               └──────────────┬───────────────┘
                              │
                              ▼
           执行: 🚀 对应版本一键安装中文汉化.bat
                              │
                              ▼
               ┌──────────────────────────────┐
               │ 软件自动升级了版本，变回英文?│
               └──────────────┬───────────────┘
                              │
                              ▼
           执行: 🔄 软件更新后一键修复汉化.bat (3秒修复)
```

---

## 📂 项目文件结构

```text
Antigravity-CN-Localization/
├── dicts/                               # 770+ 核心词条精准中英对照字典
│   ├── common.json
│   ├── menu_nav.json
│   ├── page_agents.json
│   ├── page_mcp_knowledge.json
│   ├── page_settings.json
│   └── page_workspaces.json
├── docs/
│   ├── README.md                        # 项目说明
│   ├── troubleshooting.md               # 常见问题与排错指南
│   └── SOP_Antigravity中文汉化与更新修复系统.md # 完整 SOP 规范
├── scripts/
│   └── localization_engine.js           # 核心 asar 解包/注入/打包引擎
├── 🚀 对应版本一键安装中文汉化.bat
├── 🔄 软件更新后一键修复汉化.bat
├── 🛑 卸载还原官方英文.bat
├── setup.ps1                            # PowerShell 安装脚本
├── uninstall.ps1                        # PowerShell 卸载脚本
├── .gitignore                           # Git 忽略配置
├── LICENSE                              # MIT 开源协议
├── CHANGELOG.md                         # 版本更新日志
└── README.md                            # 项目根说明
```

---

## 💻 前置要求

- Windows / macOS
- 已安装 Antigravity 软件
- Node.js (已安装 npm/npx 即可自动解包)

---

## 📜 许可协议

本项目遵循 [MIT License](LICENSE) 开源协议。
