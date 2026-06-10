# Severity Guide

Use this guide for initial triage. Adjust severity according to your organization’s risk model.

## Critical

A critical finding can plausibly cause immediate severe harm, such as unauthorized administrative access, broad data exposure, production compromise, or loss of control over a critical system.

Default handling:

- stop affected risky testing;
- notify the accountable owner immediately;
- preserve redacted evidence;
- prioritize remediation;
- consider rotation, revocation, or emergency change process.

## High

A high finding can plausibly lead to serious unauthorized access, sensitive data exposure, privilege escalation, or compromise of important systems.

Default handling:

- assign owner;
- remediate quickly;
- validate with safe checks;
- review related systems for the same pattern.

## Medium

A medium finding weakens security but requires additional conditions, user interaction, limited access, or chained issues to become severe.

Default handling:

- remediate in normal security backlog;
- document compensating controls;
- watch for pattern recurrence.

## Low

A low finding is a security hygiene issue, hardening opportunity, minor misconfiguration, or limited exposure with low practical impact.

Default handling:

- fix opportunistically;
- group with related hardening work.

## Informational

An informational finding records useful context, defense-in-depth improvements, or observations without a clear vulnerability.

Default handling:

- track as context;
- do not inflate severity.

## Severity report fields

Each severity decision should explain:

- affected asset;
- exposure;
- required attacker access;
- likely impact;
- mitigating controls;
- confidence level;
- evidence quality.
