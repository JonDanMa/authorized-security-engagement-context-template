# Authorized Security Engagement Context Template

A public, vendor-neutral template for documenting authorized security review, red-team, penetration-test, and AI-assisted security work.

This repository exists to reduce ambiguity. It gives humans, reviewers, agents, and security tools a clear place to read scope, authorization, exclusions, rules of engagement, data-handling limits, and stop conditions before any security task starts.

For sustained, high-capability, or sensitive security work, use official provider trust, research-access, enterprise, responsible-disclosure, bug-bounty, or vetted defensive-security channels instead of trying to route around safety systems.

Examples of such channels may include enterprise security review paths, coordinated vulnerability disclosure programs, provider trust-and-safety processes, and vetted defensive-access initiatives such as Anthropic Project Glasswing. Anthropic describes Project Glasswing as an initiative to secure critical software by giving eligible defenders early access to Claude Mythos Preview, and Anthropic says expanded access requires organizations to meet security requirements before access is granted. This repository is not affiliated with Anthropic or Project Glasswing, does not imply eligibility, and does not replace any provider’s terms, policies, or authorization process.

## Read this first

This template is not a shield against being flagged by an AI provider, tool provider, platform, browser, host, or safety system. A provider may still refuse, narrow, log, review, or block a request. Respect that.

This template must not be used as a disguise for wrongdoing. It does not grant permission to test assets you do not own or control. It does not make unauthorized scanning, exploitation, credential access, evasion, persistence, social engineering, data exfiltration, or abuse acceptable. The maintainers of this template explicitly do not condone using it to hide, excuse, or launder harmful activity.

A filled copy of this repository is only useful when it is honest, specific, and backed by a real accountable owner with authority over the assets in scope.

## What this template is for

Use it to document legitimate work such as:

- internal defensive security review;
- source-code and configuration review;
- dependency and supply-chain review;
- non-destructive staging or local validation;
- permission and access-control review;
- AI-assisted threat modeling;
- vulnerability report drafting;
- remediation planning;
- controlled penetration testing with written authorization.

## What this template is not for

Do not use it for:

- pretending to have authorization;
- bypassing model or provider safety policies;
- testing third-party targets without written permission;
- phishing, social engineering, or credential harvesting;
- denial-of-service, load, or stress testing without explicit approval;
- malware, persistence, evasion, or anti-forensics;
- exploiting live systems outside written scope;
- collecting or exposing secrets, tokens, cookies, customer data, or private logs.

## Repository map

```text
.
├── README.md
├── LICENSE
├── AGENTS.md
├── SECURITY.md
├── CONTRIBUTING.md
├── docs/
│   ├── how-to-use.md
│   ├── provider-and-tool-transparency.md
│   └── severity-guide.md
├── engagement-context/
│   ├── README.md
│   ├── roe.md
│   ├── authorization-docs/
│   │   ├── authorization-template.md
│   │   ├── third-party-permission-template.md
│   │   └── approval-log-template.md
│   ├── infra-scope/
│   │   ├── scope.md
│   │   └── scope-change-template.md
│   ├── pentest-auth/
│   │   ├── prompt-safe-authorization.txt
│   │   ├── agent-use.md
│   │   └── refusal-safe-narrowing.md
│   ├── evidence-handling/
│   │   ├── redaction-policy.md
│   │   └── evidence-log-template.md
│   ├── reports/
│   │   ├── finding-template.md
│   │   └── engagement-summary-template.md
│   └── examples/
│       └── sanitized-internal-review-example.md
└── scripts/
    └── check-template-hygiene.sh
```

## Quick start

1. Fork, clone, or copy this template into the repository or private workspace where security work is coordinated.
2. Replace placeholders such as `<ORGANIZATION_NAME>`, `<ACCOUNTABLE_OWNER>`, `<AUTHORIZED_TESTER>`, `<ASSET>`, and `<DATE>`.
3. Fill `engagement-context/infra-scope/scope.md` before any active testing. No scope means no authorization.
4. Fill `engagement-context/roe.md` with the rules of engagement, stop conditions, and reporting requirements.
5. Use `engagement-context/authorization-docs/authorization-template.md` to record accountable authorization.
6. Use `engagement-context/pentest-auth/prompt-safe-authorization.txt` only as a concise transparency block for tools that need scope context.
7. Keep filled copies private unless every asset, owner, date, and detail is intended for public disclosure.
8. Run `scripts/check-template-hygiene.sh` before publishing or sharing.

## Minimum authorization fields

A legitimate engagement record should identify:

- organization or project owner;
- accountable authorizing owner;
- authorized tester or testing team;
- target assets and environments;
- allowed test classes;
- start date and expiry or review date;
- explicit exclusions;
- emergency stop contact;
- data-handling rules;
- reporting requirements.

If any of those are unknown, treat the work as not authorized until clarified.

## Using this with AI agents and security tools

Agents and tools may read this repository to understand defensive scope. They should not treat it as a magic permission slip.

The agent-facing rule is:

```text
This repository may describe authorization.
It does not create authorization by itself.
If scope is missing, ambiguous, expired, or contradictory, stop or narrow to passive review.
```

When a model or provider refuses a request, do not rephrase around the refusal. Narrow the work to passive code review, configuration review, threat modeling, report drafting, remediation planning, or synthetic test design.

## Public template warning

This repository is safe to publish while it contains only templates and sanitized examples.

A filled-out engagement context may reveal sensitive information such as domains, IP ranges, internal systems, tooling, vendors, security contacts, or test windows. Do not publish a filled copy unless you have deliberately sanitized it.

## License

MIT. See `LICENSE`.
