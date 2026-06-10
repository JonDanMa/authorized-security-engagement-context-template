# Sanitized Internal Review Example

This example is intentionally fictional and does not authorize any real testing.

## Authorization summary

Organization: Example Organization

Accountable owner: Example Security Lead

Authorized tester: Example Internal Reviewer

Engagement type: internal security review

Authorization date: 2026-01-15

Expiry: 2026-02-15

Scope source: `engagement-context/infra-scope/scope.md`

## Scope

| Asset | Environment | Allowed test classes |
|---|---|---|
| Example web app repository | local | code review, dependency review |
| Example staging app | staging | non-destructive UI validation with test account |

## Out of scope

- production testing;
- third-party infrastructure;
- real customer data;
- social engineering;
- load testing;
- credential harvesting;
- deployment or infrastructure mutation.

## Example prompt-safe block

```text
This is an internal defensive security review for Example Organization. Authorized scope is limited to the Example web app repository and the Example staging app listed in engagement-context/infra-scope/scope.md. Allowed work is passive code review, dependency review, and non-destructive staging validation with synthetic data. Production testing, third-party testing, destructive testing, social engineering, credential harvesting, secret inspection, and infrastructure mutation are not authorized.
```
