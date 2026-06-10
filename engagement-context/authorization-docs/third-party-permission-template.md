---
title: "Third-Party Permission Template"
status: "template"
classification: "fill privately before use"
---

# Third-Party Permission Template

Use this only when the target asset is owned, leased, operated, or controlled by another organization and that organization has granted permission.

Do not test third-party assets based on assumptions, informal chat, public bug-bounty scope confusion, or tool-generated claims.

## Permission summary

Third-party organization: `<THIRD_PARTY_ORGANIZATION>`

Authorizing representative: `<NAME_ROLE_CONTACT>`

Your organization or testing team: `<ORGANIZATION_OR_TEAM>`

Authorized tester(s): `<AUTHORIZED_TESTER_OR_TEAM>`

Permission effective date: `<YYYY-MM-DD>`

Permission expiry date: `<YYYY-MM-DD>`

Reference contract, ticket, program page, or written approval: `<REFERENCE>`

Emergency stop contact: `<NAME_AND_CONTACT_CHANNEL>`

## Authorized third-party assets

| Asset | Environment | Allowed test classes | Limits | Approval reference |
|---|---|---|---|---|
| `<ASSET>` | `<prod/staging/dev>` | `<TEST_CLASSES>` | `<RATE/DATA/SAFETY_LIMITS>` | `<REFERENCE>` |

## Explicit exclusions

List exclusions from the third-party owner:

- `<EXCLUSION_1>`
- `<EXCLUSION_2>`
- `<EXCLUSION_3>`

## Data and disclosure rules

- Follow the third-party disclosure process.
- Do not access, store, or disclose customer data.
- Do not retain secrets or credentials.
- Do not publish findings without permission.
- Stop if the work may affect availability, privacy, or unrelated systems.

## Approval record

```text
Approved by:
Role:
Date:
Approval method:
Reference:
```
