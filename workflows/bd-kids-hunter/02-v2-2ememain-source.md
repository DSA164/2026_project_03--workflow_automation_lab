# V2 — 2ememain Source

## Goal

Add 2ememain as the first real source.

## Approach

```text
HTTP Request 2ememain
  ↓
Parse 2ememain Results
  ↓
Normalize Listings
  ↓
Reuse V1 Pipeline
```

## Search ideas

```text
lot bd enfant
lot bandes dessinées enfant
bd jeunesse
lot strips kinderen
stripboeken kinderen
kinderstrips pakket
```

## Constraints

- No login.
- No anti-bot bypass.
- Low request frequency.
- Keep parsing separate from normalization.
