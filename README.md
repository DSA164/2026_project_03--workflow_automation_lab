# 2026 Project 03 — Workflow Automation Lab

## Purpose

This project is part of the `AI-Engineering-Lab` learning roadmap.

Its goal is to build practical skills in **AI workflow automation** before moving deeper into RAG and agentic systems.

The focus is not only on using n8n visually, but on understanding how to build robust data pipelines:

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

## Why this project exists

The original AI Engineering Lab roadmap already covers LLM playgrounds, local LLM servers, RAG, agents, vision, multimodal assistants, robotics and AI platforms.

However, for real enterprise AI workflows, one important practical layer is needed before RAG and agents:

> workflow automation, data ingestion, JavaScript transformation, scoring, alerting and persistence.

This project fills that gap.

## Main learning case: BD Kids Hunter

The first case study is `BD Kids Hunter`.

The goal is to find interesting lots of children’s comic books in Belgium, preferably:

- around 1 € per comic book;
- in French or Dutch;
- sold as lots;
- in good condition;
- with reasonable shipping costs;
- from sources like 2ememain and Vinted.

Facebook Marketplace is deliberately excluded from the first version because it is too complex for the educational objective.

## Learning objectives

By the end of this project, I should understand and be able to implement:

- n8n Code Nodes
- n8n item structure
- JavaScript data transformations
- JSON normalization
- regular expressions
- price parsing
- data deduplication
- scoring logic
- PostgreSQL storage
- alerting
- simple local AI enrichment
- workflow documentation
- reusable automation patterns

## Recommended position in the roadmap

This project should be placed after:

```text
2026_project_01--llm_playground
2026_project_02--local_llm_server
```

and before:

```text
2026_project_04--rag_system
2026_project_05--rag_enterprise
2026_project_06--ai_agents_lab
```

The reason is simple: RAG and agents become much easier to understand when the data pipeline mindset is already solid.

## Repository structure

```text
2026_project_03--workflow_automation_lab/
  README.md
  progress.md
  docs/
    architecture.md
    data-model.md
    scoring.md
    learning-notes.md
    sources.md
  examples/
    mock-listings.json
    normalized-listings.json
    scored-listings.json
  sql/
    001_create_tables.sql
  scripts/
    export-workflows.sh
  workflows/
    bd-kids-hunter/
      README.md
      01-v1-mock-pipeline.md
      02-v2-2ememain-source.md
      03-v3-vinted-source.md
      04-v4-ai-analysis.md
```

## Status

Current status: planning and initial implementation.
