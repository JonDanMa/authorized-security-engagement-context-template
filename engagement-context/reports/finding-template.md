---
title: "Security Finding Template"
status: "template"
classification: "fill privately before use"
---

# Security Finding

Finding ID: `<FINDING_ID>`

Title: `<SHORT_TITLE>`

Severity: `<critical | high | medium | low | informational>`

Status: `<draft | confirmed | remediating | fixed | accepted risk | false positive>`

Reported by: `<NAME_OR_TOOL>`

Date reported: `<YYYY-MM-DD>`

Authorization source: `<PATH_OR_REFERENCE>`

Scope source: `engagement-context/infra-scope/scope.md`

## Summary

```text
<What was found?>
```

## Affected assets

| Asset | Environment | Scope status |
|---|---|---|
| `<ASSET>` | `<ENV>` | `<IN_SCOPE_REFERENCE>` |

## Impact

```text
<What could go wrong if this is exploited or misconfigured?>
```

## Evidence

Use redacted evidence only.

```text
<REDACTED_EVIDENCE_OR_LINK>
```

## Reproduction or validation notes

Keep this high-level and defensive. Do not include weaponized steps, third-party targets, secrets, or exploit payloads.

```text
<SAFE_VALIDATION_NOTES>
```

## Root cause

```text
<LIKELY_ROOT_CAUSE>
```

## Remediation

```text
<RECOMMENDED_FIX>
```

## Verification plan

```text
<HOW_TO_CONFIRM_THE_FIX_WITHIN_SCOPE>
```

## Uncertainty

```text
<WHAT_IS_UNKNOWN_OR_NEEDS_REVIEW>
```

## Stop or narrowing decisions

```text
<ANY_ACTIONS_STOPPED_OR_NARROWED_AND_WHY>
```
