# repo-global-map skill (Pro)

位置：`.codex/skills/repo-global-map/`

## 定位

这是一个“仓库认知加速系统”，不是单纯画图工具。

它支持三档分析深度：

- `Lite`：10-20 分钟，快速上手
- `Standard`：30-60 分钟，支持改动与排障
- `Deep`：半天到 2 天，支持重构与治理

## 产物

模板目录：`.codex/skills/repo-global-map/templates/`

- `00-intake.md` 任务边界
- `01-fact-sheet.md` 关键事实
- `02-system-diagrams.md` 图集
- `03-module-catalog.md` 模块目录
- `04-dependency-risk-register.md` 依赖与风险登记
- `05-change-entry-guide.md` 变更入口指南
- `06-ops-release-observability.md` 运维发布可观测性
- `07-roadmap-techdebt.md` 演进路线与技术债
- `08-timebox-playbook.md` 按时间盒执行
- `09-quality-scorecard.md` 质量评分与迭代
- `10-command-cookbook.md` 侦察命令速查
- `11-output-index-template.md` 交付索引页
- `12-reasoning-iteration.md` 推理摘要迭代（最终输出前）
- `quick-checklist.md`（兼容旧版，轻量清单）
- `global-map-template.md`（兼容旧版，最小图模板）

默认报告语言：中文。代码符号、命令、文件路径、配置项、状态值（如 `HIGH/MEDIUM/LOW`、`UNKNOWN_*`）保持原样；用户明确要求英文或双语时再切换。

## 快速开始

### macOS / Linux

1. 注册到 Codex skills 目录：

```bash
mkdir -p ~/.codex/skills
git clone <your-skill-repo-url> ~/.codex/skills/repo-global-map
```

如果已经 clone 到本地，也可以用软链接方便开发：

```bash
mkdir -p ~/.codex/skills
ln -s "$(pwd)" ~/.codex/skills/repo-global-map
```

2. 在目标代码仓库中初始化分析工作区：

```bash
bash ~/.codex/skills/repo-global-map/scripts/init-repo-map.sh
```

3. 指定目录与标签（可选）：

```bash
bash ~/.codex/skills/repo-global-map/scripts/init-repo-map.sh --output-root artifacts/repo-map --tag demo-01
```

### Windows PowerShell

1. 初始化分析工作区：

```powershell
.\.codex\skills\repo-global-map\scripts\init-repo-map.ps1
```

2. 指定目录与标签（可选）：

```powershell
.\.codex\skills\repo-global-map\scripts\init-repo-map.ps1 -OutputRoot artifacts/repo-map -Tag demo-01
```

3. 按 `SKILL.md` 的 Step 0-6 填写模板并迭代（Step 6 为最终输出前必做）。

## 跨平台兼容约束

- skill 根目录必须包含 `SKILL.md`，注册目录名建议固定为 `repo-global-map`。
- 不要在 `SKILL.md` 或模板中写入个人机器的绝对路径，例如 `F:\...` 或 `/Users/<name>/...`。
- macOS/Linux 使用 `scripts/init-repo-map.sh`；Windows 使用 `scripts/init-repo-map.ps1`。
- Markdown 模板使用 UTF-8 编码；中文报告内容、Mermaid、表格在 macOS 和 Windows 上都应可直接读取。
- 命令示例优先给跨平台命令；Windows 专属命令需要提供 macOS/Linux 替代命令。
- GitHub Actions 中的 `compatibility` 工作流会在 `macos-latest` 上模拟注册到 `~/.codex/skills/repo-global-map`，并运行初始化脚本做 smoke test。

## 升级点（相对基础版）

- 从“3 张图”升级为“12 件认知资产 + 2 个兼容旧版模板”
- 新增证据与置信度纪律（Evidence / Confidence / Impact）
- 新增评分卡与迭代阈值（总分 < 18 必须补充）
- 新增 Deep 模式下的运维、发布、可观测性与路线图
- 新增“推理摘要迭代闸门”，在最终回答前进行假设-证据-反例-修正
- 默认图表化目标：结构化内容占比 >= 70%
