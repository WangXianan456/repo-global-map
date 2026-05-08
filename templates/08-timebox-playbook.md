# 08 Timebox Playbook

## Mode Timeline

```mermaid
gantt
    title Repo Map Timebox
    dateFormat  HH:mm
    axisFormat  %H:%M
    section Lite 15m
    Intake + Scan       :a1, 00:00, 04m
    Fact + 3 Diagrams   :a2, after a1, 09m
    Next Actions        :a3, after a2, 02m
    section Standard 45m
    Scope + Evidence    :b1, 00:00, 15m
    Modeling + Risks    :b2, after b1, 20m
    Score + Iteration   :b3, after b2, 10m
```

## Task Matrix

| Mode | Phase | Output File | Time |
|---|---|---|---|
| Lite | Intake | `00-intake.md` | 1-2m |
| Lite | Facts | `01-fact-sheet.md` | 3-5m |
| Lite | Diagram | `02-system-diagrams.md` | 5-7m |
| Standard | Catalog | `03-05` | 10-15m |
| Deep | Ops + Roadmap | `06-07` | 2h+ |
| All | Reasoning Gate | `12-reasoning-iteration.md` | 3-8m |

## Fast Gate

| Gate | Rule |
|---|---|
| Minimum Output | 1 fact sheet + 3 diagrams + 3 actions |
| Quality | Score >= 18 or iterate once |
