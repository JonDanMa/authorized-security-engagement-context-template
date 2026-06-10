---
title: "Evidence Redaction Policy"
status: "template"
classification: "fill privately before use"
---

# Evidence Redaction Policy

Security reports should contain enough evidence to verify a finding without exposing secrets, customer data, private logs, or unnecessary target details.

## Never include unredacted

- API keys;
- access tokens;
- refresh tokens;
- session cookies;
- authorization codes;
- private keys;
- passwords;
- recovery codes;
- one-time codes;
- production environment values;
- customer data;
- private user data;
- internal logs not needed for the finding;
- callback URLs containing sensitive parameters.

## Redaction format

Use clear redaction labels:

```text
<REDACTED_SECRET>
<REDACTED_TOKEN>
<REDACTED_COOKIE>
<REDACTED_PRIVATE_KEY>
<REDACTED_CUSTOMER_DATA>
<REDACTED_INTERNAL_HOST>
<REDACTED_CALLBACK_PARAMETER>
```

## Evidence quality standard

Good evidence identifies:

- affected asset;
- environment;
- timestamp;
- finding summary;
- observed behavior;
- expected behavior;
- security impact;
- safe reproduction notes or validation notes;
- remediation recommendation.

Good evidence does not include:

- full credential values;
- unnecessary raw logs;
- unrelated user data;
- instructions for abusing the issue outside the authorized environment.

## Accidental exposure procedure

If sensitive information is captured:

1. stop the current test path;
2. avoid copying the value further;
3. redact the evidence;
4. notify the accountable owner;
5. rotate or revoke the exposed secret if applicable;
6. quarantine or delete unsafe artifacts according to the engagement policy;
7. record the incident in the engagement summary without exposing the value.
