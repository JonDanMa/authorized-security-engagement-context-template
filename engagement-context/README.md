---
title: "Engagement Context"
status: "template"
classification: "fill privately before use"
---

# Engagement Context

This folder records the authorization context for security review, red-team, penetration-test, or AI-assisted security work.

It is designed to be readable by humans and by AI agents. It should answer:

- who owns the engagement;
- who is authorized to test;
- what assets are in scope;
- what test classes are allowed;
- what is explicitly excluded;
- how evidence must be handled;
- when testing must stop;
- who is accountable.

## Directory map

```text
engagement-context/
  README.md
  roe.md
  authorization-docs/
    authorization-template.md
    third-party-permission-template.md
    approval-log-template.md
  infra-scope/
    scope.md
    scope-change-template.md
  pentest-auth/
    prompt-safe-authorization.txt
    agent-use.md
    refusal-safe-narrowing.md
  evidence-handling/
    redaction-policy.md
    evidence-log-template.md
  reports/
    finding-template.md
    engagement-summary-template.md
  examples/
    sanitized-internal-review-example.md
```

## Sensitivity rule

Do not store real secrets here.

Do not store:

- API keys;
- OAuth tokens;
- refresh tokens;
- cookies;
- authorization codes;
- private keys;
- `.env` contents;
- production credentials;
- unredacted logs;
- customer data;
- credential dumps;
- exploit payloads;
- callback URLs containing sensitive parameters.

Use placeholders, asset categories, redacted values, and synthetic data.

## Authorization boundary

This folder may describe authorization. It does not create authorization by itself.

Authorization must come from an accountable owner with authority over the listed assets.

No asset is in scope unless it is listed in `infra-scope/scope.md` or a signed amendment.

## Default posture

```text
Defensive, scoped, non-destructive, evidence-preserving, no secrets in shared artifacts.
```
