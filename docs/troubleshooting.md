# 常见问题与排错指南 (Troubleshooting)

### Q1: 运行脚本时提示“[错误] 无法定位有效的资源(resources)目录”？
- **原因**：Antigravity 软件未安装在默认路径或未正常安装。
- **解法**：请确保 Antigravity 已正常安装在 `C:\Users\1\AppData\Local\Programs\antigravity` 或目标路径。

### Q2: 软件自动更新后界面变回英文了？
- **原因**：这是 Electron 软件的正常现象。每次 Antigravity 官方发布新版本更新时，会自动下载替换最新的 `app.asar`。
- **解法**：关闭 Antigravity 软件后，直接双击运行 **`🔄 软件更新后一键修复汉化.bat`**，3 秒内自动为您完成最新版本的无缝重新汉化！

### Q3: 运行脚本报权限错误或文件被锁定？
- **原因**：Antigravity 软件正在后台运行，导致 `app.asar` 文件被进程锁死无法替换。
- **解法**：请先在任务栏右下角退出 Antigravity 软件，或在任务管理器中结束 `Antigravity.exe` 进程，然后重新双击脚本。
