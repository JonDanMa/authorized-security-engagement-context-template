---
title: "Infrastructure Scope"
status: "template"
classification: "fill privately before active use"
---

# Infrastructure Scope

This file lists assets that may be used for authorized security review, red-team, penetration-test, or AI-assisted security work.

No asset is authorized unless it appears here or in a signed scope amendment.

Do not add secrets, tokens, cookies, private keys, production environment values, unredacted logs, or customer data.

## Scope status

Status: `<draft | active | expired | paused>`

Last reviewed: `<YYYY-MM-DD>`

Next review or expiry: `<YYYY-MM-DD>`

Accountable owner: `<ACCOUNTABLE_OWNER>`

## Repository and code assets

| Asset | Environment | Scope | Allowed test classes | Notes |
|---|---|---|---|---|
| `<REPOSITORY_URL_OR_PATH>` | `<local/private/public>` | `<in scope | conditional | out of scope>` | `<code review, dependency review, static review>` | `<NOTES>` |

## Application assets

| Asset | Environment | Scope | Allowed test classes | Notes |
|---|---|---|---|---|
| `<APP_DOMAIN_OR_LABEL>` | `<local/staging/preview/prod>` | `<in scope | conditional | out of scope>` | `<passive review, non-destructive validation>` | `<NOTES>` |

## API assets

| Asset | Environment | Scope | Allowed test classes | Notes |
|---|---|---|---|---|
| `<API_DOMAIN_OR_LABEL>` | `<local/staging/preview/prod>` | `<in scope | conditional | out of scope>` | `<contract review, auth review, synthetic test validation>` | `<NOTES>` |

## Identity and access assets

| Asset | Environment | Scope | Allowed test classes | Notes |
|---|---|---|---|---|
| `<IDENTITY_PROVIDER_OR_AUTH_CONFIG>` | `<config/local/staging/prod>` | `<conditional>` | `<documentation review, configuration review>` | `<No brute force, no account takeover simulation unless separately approved>` |

## Cloud, hosting, and infrastructure assets

| Asset | Environment | Scope | Allowed test classes | Notes |
|---|---|---|---|---|
| `<HOSTING_PROJECT_OR_CLOUD_ACCOUNT_LABEL>` | `<staging/prod>` | `<conditional>` | `<configuration review only by default>` | `<No mutation unless separately approved>` |

## Third-party SaaS assets

| Asset | Environment | Scope | Allowed test classes | Notes |
|---|---|---|---|---|
| `<SAAS_VENDOR_OR_PROJECT_LABEL>` | `<admin/config>` | `<conditional>` | `<owned configuration review only>` | `<Do not test provider infrastructure>` |

## Out-of-scope assets

Unless explicitly amended, out of scope includes:

- production infrastructure;
- customer systems;
- third-party infrastructure not explicitly authorized;
- personal accounts;
- personal devices;
- email inboxes;
- unrelated repositories;
- provider control planes;
- payment systems;
- assets not listed above.

## Active testing amendment template

Use this section to add a specific active testing window.

```text
Asset:
Owner:
Authorized tester:
Environment:
Allowed test class:
Start:
End:
Rate limits:
Data handling limits:
Emergency stop contact:
Explicit exclusions:
Approval record:
```

## Production testing rule

Production testing is out of scope unless this file contains a specific active testing amendment naming:

- the production asset;
- the exact test class;
- the authorized tester;
- the time window;
- rate limits;
- data-handling limits;
- rollback or stop contact;
- accountable owner approval.
