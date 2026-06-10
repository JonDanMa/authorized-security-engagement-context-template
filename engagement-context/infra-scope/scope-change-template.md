---
title: "Scope Change Template"
status: "template"
classification: "fill privately before use"
---

# Scope Change Template

Use this template when adding, removing, narrowing, or expanding authorized scope.

## Request

Request date: `<YYYY-MM-DD>`

Requester: `<NAME_AND_ROLE>`

Requested change type: `<add | remove | narrow | expand | pause | expire>`

Asset: `<ASSET>`

Environment: `<local | dev | staging | preview | production | documentation only>`

Current scope status: `<STATUS>`

Requested scope status: `<STATUS>`

## Reason

Why is this change needed?

```text
<REASON>
```

## Allowed test classes

```text
<TEST_CLASSES>
```

## Limits

Rate limits:

```text
<LIMITS>
```

Data-handling limits:

```text
<LIMITS>
```

Explicit exclusions:

```text
<EXCLUSIONS>
```

## Approval

Approved by: `<ACCOUNTABLE_OWNER>`

Approval date: `<YYYY-MM-DD>`

Expiry: `<YYYY-MM-DD>`

Approval record: `<LINK_OR_REFERENCE>`

## Update checklist

- [ ] `infra-scope/scope.md` updated.
- [ ] `roe.md` still accurate.
- [ ] `prompt-safe-authorization.txt` still accurate.
- [ ] Approval logged in `authorization-docs/approval-log-template.md` or equivalent private log.
- [ ] Affected testers notified.
