# 02 System Diagrams

## A. Context Diagram

```mermaid
flowchart LR
Caller[Caller: UNKNOWN] --> Ingress[Ingress: UNKNOWN]
Ingress --> App[App Core: UNKNOWN]
App --> DB[(DB: UNKNOWN)]
App --> Cache[(Cache: UNKNOWN)]
App --> MQ[[MQ: UNKNOWN]]
App --> Ext[External Service: UNKNOWN]
```

Evidence:

## B. Container/Module Diagram

```mermaid
flowchart TD
E1[Entry Module: UNKNOWN] --> M1[Domain Module: UNKNOWN]
M1 --> M2[Application Service: UNKNOWN]
M2 --> M3[Repository Layer: UNKNOWN]
M3 --> D1[(Data Store: UNKNOWN)]
M2 --> X1[External Adapter: UNKNOWN]
```

Evidence:

## C. Core Sequence Diagram

```mermaid
sequenceDiagram
participant U as User/Caller
participant G as Gateway/Controller
participant S as Service
participant R as Repository
participant D as DB
participant X as External API
U->>G: request
G->>S: validate + invoke
S->>R: read/write
R->>D: query/commit
S->>X: outbound call
S-->>G: response
G-->>U: result
```

Evidence:

## D. Risk Hotspots Graph (Optional for Lite, required for Standard+)

```mermaid
graph TD
H1[Hotspot: UNKNOWN] --- R1[Risk: Test Gap]
H2[Hotspot: UNKNOWN] --- R2[Risk: Tight Coupling]
H3[Hotspot: UNKNOWN] --- R3[Risk: Single Owner]
```

Evidence:
