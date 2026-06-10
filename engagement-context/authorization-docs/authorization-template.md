---
title: "Security Testing Authorization Template"
status: "template"
classification: "fill privately before use"
---

# Security Testing Authorization Template

Use this template for internal security reviews, red-team engagements, penetration tests, security audits, or model/tool prompts that require written authorization context.

This is an operational template, not legal advice.

## Authorization letter

Organization: `<ORGANIZATION_NAME>`

Authorizing owner: `<ACCOUNTABLE_OWNER_NAME_AND_ROLE>`

Authorized tester(s): `<AUTHORIZED_TESTER_OR_TEAM>`

Engagement type: `<internal red team | penetration test | security review | code audit | configuration review | other>`

Authorization effective date: `<YYYY-MM-DD>`

Authorization expiry date: `<YYYY-MM-DD>`

Emergency contact: `<NAME_AND_CONTACT_CHANNEL>`

Rules of engagement: `engagement-context/roe.md`

Scope source of truth: `engagement-context/infra-scope/scope.md`

## Authorized assets

The authorized assets are only those listed in:

```text
engagement-context/infra-scope/scope.md
```

No other asset is authorized.

## Authorized test classes

Allowed test classes:

- `<TEST_CLASS_1>`
- `<TEST_CLASS_2>`
- `<TEST_CLASS_3>`

Default defensive examples:

- source-code review;
- dependency and configuration review;
- local or staging non-destructive verification;
- auth and permission-boundary review;
- vulnerability report drafting;
- remediation validation using synthetic data.

## Exclusions

Unless explicitly listed as authorized, the following are excluded:

- production testing;
- destructive testing;
- denial-of-service, load, or rate-limit testing;
- social engineering;
- phishing;
- credential harvesting;
- persistence or evasion;
- third-party systems;
- customer systems;
- personal accounts or devices;
- secret inspection;
- infrastructure mutation;
- deployment or rollback.

## Data handling

The tester must not capture, store, disclose, or commit secrets, tokens, cookies, authorization codes, production environment values, private keys, customer data, or unnecessary raw logs.

Sensitive values discovered accidentally must be redacted and reported to the accountable owner without copying the value into shared artifacts.

## Permission statement

The authorizing owner grants the named tester permission to perform only the listed test classes against only the listed in-scope assets during the authorized period, subject to the exclusions, stop conditions, and reporting requirements in `engagement-context/roe.md`.

This authorization does not grant permission to test third-party assets, access secrets, mutate production infrastructure, deploy, exfiltrate data, bypass safety controls, or violate applicable law or contracts.

## Signatures or approval record

Authorizing owner:

```text
Name:
Role:
Date:
Signature or approval record:
```

Authorized tester:

```text
Name:
Role or affiliation:
Date:
Acknowledgement:
```
