# 🇨🇳 Antigravity 终极精译中文汉化包与自动修复系统 (Antigravity CN Localization)

> **专为 Google Antigravity 打造的全自动中文汉化与版本更新自愈补丁**。
> 1. **全界面精准汉化**：涵盖菜单、设置、Subagents、MCP 知识库、通用控制台、Agent 模式、斜杠命令等 770+ 核心词条。
> 2. **自动更新随心自愈**：解决 Antigravity 官方自动更新后 Electron `app.asar` 被覆盖还原为英文的问题，双击修复脚本 3 秒完成无缝重注入！
> 3. **极简绿色无毒**：纯 JS/JSON 字典注入，不改变原生架构，提供一键还原官方英文功能。

---

## 📌 为什么需要它？

1. **解决官方英文界面痛点**：
   - 官方 Antigravity 界面默认为全英文，高级设置、Agent 模式、MCP 服务器、自定义规则等配置层级深，阅读门槛高。
2. **解决软件升级后“跳回英文”的痛点**：
   - Antigravity 采用 Electron 架构，每次后台自动静默升级新版本时，官方更新程序都会用新的 `app.asar` 替换旧包，导致原先的汉化被自动重置为英文。
   - 本项目独创 **`🔄 软件更新后一键修复汉化.bat`**，升级后只需双击一下，3 秒内自动检测并重新完成无缝汉化！

---

## 🚀 极简使用说明

| 控制脚本 / 文件 | 功能说明 |
| :--- | :--- |
| **`🚀 对应版本一键安装中文汉化.bat`** | 关闭软件后双击，全自动完成汉化补丁注入 |
| **`🔄 软件更新后一键修复汉化.bat`** | Antigravity 自动升级跳回英文后，双击 3 秒重新汉化 |
| **`🛑 卸载还原官方英文.bat`** | 一键恢复官方原始 `app.asar.bak` 英文包 |
| **`setup.ps1`** | PowerShell 标准部署脚本 |
| **`uninstall.ps1`** | PowerShell 标准还原卸载脚本 |

> **⚠️ 核心注意**：
> 运行汉化/还原脚本前，**必须先关闭正在运行的 Antigravity 软件**，防止 `app.asar` 被系统进程锁定！

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
