# V4 — Local AI Analysis

## Goal

Use a local model only for ambiguous cases.

## Good use cases for AI

- Is the listing really for children?
- Estimate count if regex fails.
- Detect condition from ambiguous text.
- Summarize the listing.
- Identify risks.
- Suggest a score adjustment.

## Prompt draft

```text
Analyse cette annonce de BD pour enfants.

Objectif :
Trouver des lots intéressants en Belgique, en français ou néerlandais, autour de 1 € par BD, en bon état.

Réponds uniquement en JSON avec :
- estimated_count
- is_for_children
- language
- condition
- summary
- risks
- score_adjustment
- recommendation

Annonce :
{{title}}
{{description}}
```
