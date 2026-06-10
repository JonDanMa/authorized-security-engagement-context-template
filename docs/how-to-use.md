# How to Use This Template

## 1. Decide where the filled copy should live

Use a public repository only for the blank template or sanitized examples.

Use a private repository or private documentation space for real engagements, because filled scope files can reveal sensitive information.

## 2. Fill the authorization record

Start with:

```text
engagement-context/authorization-docs/authorization-template.md
```

Do not begin active testing until the authorization record has an accountable owner, active dates, target assets, allowed test classes, and exclusions.

## 3. Fill the scope file

Use:

```text
engagement-context/infra-scope/scope.md
```

Be specific enough to prevent ambiguity. Avoid dumping private inventories into a public repository.

Good scope language:

```text
Staging web application at <STAGING_ASSET_LABEL>, passive review and non-destructive validation only, synthetic test account only, no production data.
```

Weak scope language:

```text
All company systems.
Anything related to the app.
Whatever the tester finds.
```

## 4. Fill the rules of engagement

Use:

```text
engagement-context/roe.md
```

The rules of engagement should define allowed work, prohibited work, data handling, stop conditions, and reporting.

## 5. Use the prompt-safe authorization block carefully

Use:

```text
engagement-context/pentest-auth/prompt-safe-authorization.txt
```

Paste it into an AI or security tool only when the tool needs scope context.

Do not add secrets, private keys, live tokens, real cookies, customer data, or unredacted logs to prompts.

## 6. Treat refusal as a safety signal

A provider may refuse even scoped defensive work. Do not bypass or disguise the request.

Narrow to passive review, report drafting, remediation planning, or synthetic test design.

## 7. Record findings safely

Use:

```text
engagement-context/reports/finding-template.md
engagement-context/reports/engagement-summary-template.md
engagement-context/evidence-handling/evidence-log-template.md
```

Evidence should be redacted, minimal, and sufficient for remediation.

## 8. Close the engagement

At closeout:

- confirm all findings have owners;
- confirm evidence is redacted or quarantined;
- record stopped or narrowed actions;
- record accepted residual risk;
- expire or re-review the authorization.
