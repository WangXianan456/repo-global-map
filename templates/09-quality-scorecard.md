# 09 Quality Scorecard

## Score Grid

| Dimension | Score (0-5) | Evidence |
|---|---|---|
| Global clarity | | |
| Executable path clarity | | |
| Risk actionability | | |
| Evidence completeness | | |
| Onboarding friendliness | | |
| Chart/Table ratio quality | | |
| Obsidian diagram readability | | |

## Thresholds

| Rule | Result |
|---|---|
| Total score | |
| Pass condition | `>= 18` |
| If fail | Mandatory one iteration |
| Chart/Table target | `>= 70%` |
| Diagram readability gate | No diagram should require horizontal scrolling or have dense crossing lines |

## Iteration Delta

| Gap | Fix Action | Updated Artifact |
|---|---|---|
| | | |

## Diagram Review

| Diagram | Nodes | Edges | Width OK (`Y/N`) | Crossing/Density OK (`Y/N`) | Action |
|---|---:|---:|---|---|---|
| Context | | | | | |
| Module | | | | | |
| Sequence | | | | | |
| Risk | | | | | |

## Final Check

```mermaid
flowchart TD
Score[Compute Score] --> Pass{>= 18?}
Pass -->|Yes| Done[Finalize]
Pass -->|No| Iterate[Patch Evidence + Diagram]
Iterate --> Score
```
