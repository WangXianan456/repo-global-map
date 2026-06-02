# 02 系统图集

## 图表可读性预算

| 规则 | 目标 | 结果 |
|---|---|---|
| Obsidian 宽度 | 窄栏阅读无需横向滚动 | |
| 单图节点数 | 5-9 最佳，最多 12 | |
| 单图边数 | `边数 <= 节点数 + 3` | |
| 标签长度 | 节点用短名，文件路径放到证据表 | |
| 拆图触发 | 依赖超过 5 个时拆为上游/核心/下游 | |

## A. 系统上下文图

```mermaid
flowchart TD
Caller[调用方] --> Ingress[入口]
Ingress --> App[应用核心]
App --> Data[数据边界]
App --> Outbound[出站边界]
```

证据：

| 节点 | 真实文件/符号 | 证据 | 置信度 |
|---|---|---|---|
| 调用方 | UNKNOWN | UNKNOWN | LOW |
| 入口 | UNKNOWN | UNKNOWN | LOW |
| 应用核心 | UNKNOWN | UNKNOWN | LOW |
| 数据边界 | DB/cache/MQ 汇总，必要时在下方展开 | UNKNOWN | LOW |
| 出站边界 | 外部服务汇总，必要时在下方展开 | UNKNOWN | LOW |

为什么没有继续展开：

## B. 数据与外部边界图

当上下文图会超过 5 个依赖时使用此图。

```mermaid
flowchart TD
App[应用核心] --> DB[(DB)]
App --> Cache[(缓存)]
App --> MQ[[MQ]]
App --> Ext[外部 API]
```

证据：

| 节点 | 真实依赖/配置 | 证据 | 置信度 |
|---|---|---|---|
| DB | UNKNOWN | UNKNOWN | LOW |
| 缓存 | UNKNOWN | UNKNOWN | LOW |
| MQ | UNKNOWN | UNKNOWN | LOW |
| 外部 API | UNKNOWN | UNKNOWN | LOW |

## C. 容器/模块图

```mermaid
flowchart TD
Entry[入口模块] --> Service[应用服务]
Service --> Domain[领域模块]
Service --> Repo[仓储层]
Repo --> Store[(数据存储)]
Service --> Adapter[外部适配器]
```

证据：

| 节点 | 真实文件/符号 | 证据 | 置信度 |
|---|---|---|---|
| 入口模块 | UNKNOWN | UNKNOWN | LOW |
| 应用服务 | UNKNOWN | UNKNOWN | LOW |
| 领域模块 | UNKNOWN | UNKNOWN | LOW |
| 仓储层 | UNKNOWN | UNKNOWN | LOW |
| 数据存储 | UNKNOWN | UNKNOWN | LOW |
| 外部适配器 | UNKNOWN | UNKNOWN | LOW |

为什么没有继续展开：

## D. 核心时序图

```mermaid
sequenceDiagram
participant U as 调用方
participant G as 控制器
participant S as 服务
participant R as 仓储
participant D as DB
U->>G: 请求
G->>S: 校验
S->>R: 读写
R->>D: 查询
S-->>G: 响应
G-->>U: 结果
```

证据：

可选出站调用（如存在）：

```mermaid
sequenceDiagram
participant S as 服务
participant A as 适配器
participant X as 外部 API
S->>A: 构造请求
A->>X: 调用
X-->>A: 结果
A-->>S: 标准化结果
```

证据：

## E. 风险热点矩阵

优先使用矩阵，避免密集风险图。只有当关系结构本身重要时，才为前 1-2 个风险补小图。

| 热点 | 风险 | 触发条件 | 信号 | 第一动作 | 证据 |
|---|---|---|---|---|---|
| UNKNOWN | 测试缺口 | UNKNOWN | UNKNOWN | UNKNOWN | UNKNOWN |
| UNKNOWN | 强耦合 | UNKNOWN | UNKNOWN | UNKNOWN | UNKNOWN |
| UNKNOWN | 单一负责人 | UNKNOWN | UNKNOWN | UNKNOWN | UNKNOWN |

可选小风险图：

```mermaid
flowchart TD
Hotspot[首要热点] --> Risk[主要风险]
Risk --> Action[第一动作]
```

