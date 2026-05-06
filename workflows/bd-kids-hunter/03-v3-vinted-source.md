# V3 — Vinted Source

## Search ideas

```text
lot bd enfant
lot livres enfant bd
lot bandes dessinées
bd jeunesse
stripboeken kinderen
kinderstrips
```

## Issues to handle

- Shipping costs may be unknown.
- Some data may be dynamic.
- Source structure may change.
- Do not scrape aggressively.

## Workflow

```text
HTTP Request / Vinted source
  ↓
Parse Vinted Results
  ↓
Normalize Listings
  ↓
Reuse V1 Pipeline
```
