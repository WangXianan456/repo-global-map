# Global Map Output Template

## 1) 关键事实清单

- 业务目标：
- 启动方式：
- 入口模块：
- 核心业务模块：
- 数据落点（DB/Cache/MQ）：
- 外部系统依赖：
- 测试与发布路径：

## 2) 系统总览图

```mermaid
flowchart LR
U[User/Caller] --> I[Ingress: UNKNOWN]
I --> B[Business: UNKNOWN]
B --> D[(DB: UNKNOWN)]
B --> C[(Cache: UNKNOWN)]
B --> M[[MQ: UNKNOWN]]
B --> E[External API: UNKNOWN]
```

## 3) 核心链路图（选 1 条真实链路）

```mermaid
flowchart TD
A[Trigger: UNKNOWN] --> B[Validation: UNKNOWN]
B --> C[Service: UNKNOWN]
C --> D[Repository/DAO: UNKNOWN]
D --> E[(DB Table: UNKNOWN)]
C --> F[External Call: UNKNOWN]
F --> G[Response/Event: UNKNOWN]
```

## 4) 风险热点图

```mermaid
graph TD
H1[Hotspot: UNKNOWN] --- R1[Risk: Test Gap]
H2[Hotspot: UNKNOWN] --- R2[Risk: Coupling]
H3[Hotspot: UNKNOWN] --- R3[Risk: Single Owner]
```

## 5) 下一步 3 个动作

1. 验证主链路：
2. 降低风险：
3. 提升认知：
