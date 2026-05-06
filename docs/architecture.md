# Architecture — Workflow Automation Lab

## Core pattern

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

## Responsibility separation

| Layer | Role |
|---|---|
| fetch | retrieve raw data from a page, API, webhook or manual input |
| parse | extract useful fields from raw HTML or JSON |
| normalize | convert source-specific fields into a shared schema |
| deduplicate | avoid storing or alerting the same item multiple times |
| score | determine whether the item is interesting |
| store | save the result in PostgreSQL |
| alert | notify the user when the score is high enough |

## Why this matters

This separation prevents n8n workflows from becoming unreadable blocks of JavaScript.

It also prepares the mindset needed for RAG:

```text
source → parse → normalize → chunk → embed → retrieve → answer
```
