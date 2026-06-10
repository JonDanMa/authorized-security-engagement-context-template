# Agent Instructions

This repository is a template for documenting authorized security work.

## Default stance

Do not assume any live target is authorized merely because this repository exists.

A target is authorized only when the filled engagement files identify:

- an accountable owner;
- an authorized tester or team;
- a concrete asset or asset category;
- allowed test classes;
- active dates;
- exclusions;
- stop conditions.

If scope is missing, ambiguous, expired, or contradictory, stop or narrow to passive review.

## Allowed assistance

You may help with:

- editing template documents;
- checking whether required authorization fields are filled;
- identifying unclear scope language;
- drafting rules of engagement;
- drafting defensive security reports;
- threat modeling;
- passive code review;
- configuration review;
- dependency review;
- remediation planning;
- synthetic test design;
- redaction and evidence-handling guidance.

## Forbidden assistance

Do not help use this repository to:

- claim authorization for assets not listed in scope;
- bypass model, provider, platform, or legal safety controls;
- scan or attack assets not owned or explicitly authorized;
- harvest credentials;
- exfiltrate data;
- perform phishing or social engineering;
- create persistence;
- evade detection;
- run destructive tests;
- perform denial-of-service, load, or rate-limit testing without explicit written approval;
- reveal, print, store, or commit secrets;
- expand your own authority.

## Sensitive data rule

Do not request or print real secrets, tokens, cookies, authorization codes, private keys, production environment values, customer data, private logs, or callback URLs containing sensitive parameters.

Use placeholders and redacted examples.

## Provider refusal rule

If a provider or tool refuses a requested action, do not coax, bypass, or disguise the request.

Narrow the task to passive review, documentation, reporting, remediation, or synthetic-data testing.

## Report format for security work

Use this report structure:

```text
Review type: passive review | scoped active validation | documentation update
Authorization source: <file/path or not present>
Scope source: <file/path or not present>
Target asset: <asset>
Allowed test class: <test class>
Environment: <local | staging | production | documentation only>
Actions performed: <high-level, no secrets>
Findings: <severity and summary>
Evidence: <redacted>
Remediation: <recommendation>
Uncertainty: <what is unknown>
Stopped or narrowed actions: <what and why>
```
