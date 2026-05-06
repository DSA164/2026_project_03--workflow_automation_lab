# Architecture — Workflow Automation Lab

## Core pattern

Every practical workflow should follow this structure:

```text
source
  ↓
fetch
  ↓
parse
  ↓
normalize
  ↓
deduplicate
  ↓
score
  ↓
store
  ↓
alert
```

## Why this matters

This separation prevents a workflow from becoming a large unmaintainable block of JavaScript.

Each part has a responsibility:

| Layer | Role |
|---|---|
| fetch | retrieve raw data from a page, API, webhook or manual input |
| parse | extract useful fields from raw HTML or JSON |
| normalize | convert source-specific fields into a shared schema |
| deduplicate | avoid storing or alerting the same listing multiple times |
| score | determine whether the item is interesting |
| store | save the result in PostgreSQL |
| alert | notify the user when the score is high enough |

## n8n role

n8n acts as the workflow orchestrator:

- trigger execution;
- call HTTP sources;
- run Code Nodes;
- call local AI APIs;
- write to PostgreSQL;
- send alerts.

## Local AI role

Local AI should not replace deterministic rules too early.

Recommended order:

```text
business rules
  ↓
heuristics
  ↓
local AI for ambiguous cases
```
