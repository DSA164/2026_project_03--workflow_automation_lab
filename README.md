# 2026 Project 03 — Workflow Automation Lab

## Purpose

This project is part of the `AI-Engineering-Lab` learning roadmap.

It is a bridge between local LLM foundations and more advanced RAG / agentic systems.

Its purpose is to learn how to build practical AI-ready workflows:

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

The previous roadmap moved quickly from local LLMs to RAG and agents.

For real enterprise AI systems, one practical layer is needed first:

- n8n workflow orchestration
- HTTP/API ingestion
- JavaScript Code Nodes
- scraping-light workflows
- data normalization
- deduplication
- scoring
- storage
- alerting
- error handling

This is not a RAG project.

It prepares the data-pipeline mindset needed for good RAG and agentic systems later.

## First learning use case

The first use case is:

```text
BD Kids Hunter
```

Goal:

Find interesting lots of children’s comic books in Belgium, preferably:

- around 1 € per comic book;
- in French or Dutch;
- sold as lots;
- in good condition;
- with reasonable shipping costs;
- from 2ememain and Vinted.

Facebook Marketplace is excluded from the first version because it is too complex for the educational objective.

## Learning objectives

By the end of this project, I should understand:

- n8n item structure
- Code Nodes
- JavaScript transformations
- JSON normalization
- regular expressions
- price parsing
- deduplication
- scoring logic
- PostgreSQL storage
- alerting
- local AI enrichment for ambiguous cases

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
  workflows/
    bd-kids-hunter/
      README.md
      01-v1-mock-pipeline.md
      02-v2-2ememain-source.md
      03-v3-vinted-source.md
      04-v4-ai-analysis.md
  use_cases/
    bd-kids-hunter/
      README.md
  examples/
    mock-listings.json
    normalized-listings.json
    scored-listings.json
  sql/
    001_create_tables.sql
  scripts/
    export-workflows.sh
```
