---
title: "Rules of Engagement"
status: "template"
classification: "fill privately before use"
---

# Rules of Engagement

This document is intentionally plain and prompt-readable.

## Authorization summary

Organization: `<ORGANIZATION_NAME>`

Accountable owner: `<ACCOUNTABLE_OWNER_NAME_AND_ROLE>`

Authorized tester(s): `<AUTHORIZED_TESTER_OR_TEAM>`

Engagement type: `<internal security review | red team | penetration test | code audit | configuration review | other>`

Authorization date: `<YYYY-MM-DD>`

Expiry or re-review date: `<YYYY-MM-DD>`

Emergency stop contact: `<NAME_AND_CONTACT_CHANNEL>`

Scope source of truth: `engagement-context/infra-scope/scope.md`

Authorization record: `engagement-context/authorization-docs/authorization-template.md`

## In-scope test classes

Allowed only when the target asset is listed in `infra-scope/scope.md` and the work is assigned to an authorized tester:

- source-code review;
- dependency review;
- configuration review;
- static application security review;
- threat modeling;
- architecture and permission-boundary review;
- local development testing with synthetic data;
- staging or preview testing when explicitly listed;
- non-destructive validation using test accounts;
- vulnerability report drafting;
- remediation planning;
- remediation verification;
- security documentation updates.

## Requires separate explicit authorization

The following are not authorized by default:

- production testing;
- destructive testing;
- load, stress, denial-of-service, or rate-limit testing;
- phishing or social engineering;
- physical security testing;
- third-party SaaS testing beyond owned configuration review;
- credential harvesting;
- password spraying;
- token theft or session theft;
- malware-like persistence;
- stealth, evasion, or anti-forensics;
- exploit chaining against live systems;
- exfiltration tests;
- scanning assets not named in scope;
- provider control-plane mutation;
- DNS changes;
- deployment, rollback, or production infrastructure mutation;
- identity-provider mutation;
- secret inspection.

## Out of scope

Unless explicitly added to `infra-scope/scope.md`, out of scope includes:

- third-party infrastructure not owned, leased, or explicitly authorized;
- customer systems;
- personal devices;
- personal accounts;
- unrelated cloud accounts;
- unrelated repositories;
- production infrastructure;
- any asset where authorization cannot be proven.

## Data handling

Use synthetic test data whenever possible.

Do not collect, paste, upload, commit, or report:

- real secrets;
- credentials;
- cookies;
- session tokens;
- OAuth codes;
- callback URLs with sensitive parameters;
- private keys;
- production environment values;
- customer data;
- unnecessary raw logs;
- exploit payloads not required for defensive reproduction.

If sensitive data appears unexpectedly:

1. stop testing that path;
2. do not print or copy the sensitive value;
3. record a redacted note;
4. notify the accountable owner;
5. quarantine the artifact if already created;
6. follow the redaction policy in `evidence-handling/redaction-policy.md`.

## Stop conditions

Stop and escalate to the accountable owner if:

- scope is ambiguous;
- authorization is missing, expired, or contradictory;
- a test may affect production availability;
- a test may access customer data or private user data;
- secrets or credentials appear;
- a tool requests broader permissions than expected;
- a model or tool attempts to run destructive commands;
- a finding suggests active compromise;
- a provider, platform, or tool safety policy appears to block the requested action;
- legal, contractual, or terms-of-service boundaries are unclear.

## Reporting requirements

Every security report should include:

- target and scope source;
- test class;
- date and time;
- actor or tool;
- environment;
- actions performed at a high level;
- findings with severity;
- evidence without secrets;
- remediation recommendation;
- uncertainty;
- stopped or narrowed actions and why.

## Provider and tool safety

This rules-of-engagement file is for transparency and scoping. It must not be used to bypass provider, platform, model, legal, or safety controls.

If a provider refuses a request, narrow to passive review, report drafting, remediation planning, documentation, or synthetic test design.
