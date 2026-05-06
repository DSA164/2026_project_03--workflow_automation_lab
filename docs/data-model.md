# Data Model — BD Kids Hunter

## Canonical listing format

```json
{
  "source": "2ememain",
  "external_id": "abc123",
  "url": "https://example.com/listing",
  "title": "Lot de 24 BD enfants",
  "description": "Lot de bandes dessinées pour enfants en bon état.",
  "price_total": 24,
  "shipping_cost": 5,
  "currency": "EUR",
  "estimated_count": 24,
  "estimated_price_per_bd": 1.21,
  "language": "fr",
  "language_confidence": 0.8,
  "condition": "bon",
  "condition_confidence": 0.7,
  "is_lot": true,
  "location": "Namur",
  "country": "BE",
  "seller_type": "private",
  "score": 86,
  "decision": "alerter",
  "reasons": [
    "Prix estimé proche de 1 €/BD",
    "Lot de 24 BD",
    "Localisé en Belgique",
    "État annoncé comme bon"
  ],
  "risks": [
    "Nombre exact de BD à confirmer",
    "Frais de port estimés"
  ],
  "raw": {}
}
```

## Principles

- Keep `raw` for debugging.
- Use `null` when a value is unknown.
- Do not invent missing values.
- Add risks when data is uncertain.
