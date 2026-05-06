# Scoring — BD Kids Hunter

## Goal

Find children’s comic book lots in Belgium, around 1 € per comic book, in French or Dutch, in acceptable condition.

## Price per comic book

```text
<= 1.00 €       +40
1.01–1.25 €     +30
1.26–1.50 €     +15
> 1.50 €        -25
unknown         -10
```

## Lot size

```text
>= 20 comics    +25
10–19 comics    +18
5–9 comics      +8
1–4 comics      -20
unknown         -5
```

## Condition

```text
new             +22
like new        +20
very good       +18
good            +12
acceptable      +5
damaged         -35
unknown         -8
```

## Language

```text
fr              +10
nl              +10
fr/nl           +15
other           -25
unknown         -5
```

## Location

```text
Belgium         +15
Wallonia/Bxl    +15
Flanders        +10
outside Belgium -25
unknown         -5
```

## Shipping

```text
pickup possible +10
shipping <= 5 € +8
shipping 6–10 € 0
shipping > 10 € -15
unknown         -5
```

## Decision

```text
score >= 85     → strong_alert
70–84           → watch
50–69           → medium
< 50            → ignore
```
