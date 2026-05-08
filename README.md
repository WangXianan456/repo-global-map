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

## 快速开始

1. 初始化分析工作区：

```powershell
.\.codex\skills\repo-global-map\scripts\init-repo-map.ps1
```

2. 指定目录与标签（可选）：

```powershell
.\.codex\skills\repo-global-map\scripts\init-repo-map.ps1 -OutputRoot artifacts/repo-map -Tag demo-01
```

3. 按 `SKILL.md` 的 Step 0-6 填写模板并迭代（Step 6 为最终输出前必做）。

## 升级点（相对基础版）

- 从“3 张图”升级为“12 件认知资产 + 2 个兼容旧版模板”
- 新增证据与置信度纪律（Evidence / Confidence / Impact）
- 新增评分卡与迭代阈值（总分 < 18 必须补充）
- 新增 Deep 模式下的运维、发布、可观测性与路线图
- 新增“推理摘要迭代闸门”，在最终回答前进行假设-证据-反例-修正
- 默认图表化目标：结构化内容占比 >= 70%
