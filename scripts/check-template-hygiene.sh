#!/usr/bin/env bash
set -euo pipefail

ROOT="${1:-.}"

echo "Checking for files that should not be committed..."

if find "$ROOT" -type f \( -name '.env' -o -name '.env.*' \) ! -name '*.example' | grep -q .; then
  echo "ERROR: Found .env-like files that are not examples."
  find "$ROOT" -type f \( -name '.env' -o -name '.env.*' \) ! -name '*.example'
  exit 1
fi

if find "$ROOT" -type d \( -name 'evidence-private' -o -name 'artifacts-private' -o -name 'logs' \) | grep -q .; then
  echo "ERROR: Found private evidence/log directories. Do not publish these."
  find "$ROOT" -type d \( -name 'evidence-private' -o -name 'artifacts-private' -o -name 'logs' \)
  exit 1
fi

echo "Checking for obvious secret material..."

if grep -RInE 'BEGIN (RSA|DSA|EC|OPENSSH|PRIVATE) KEY|AKIA[0-9A-Z]{16}|xox[baprs]-|ghp_[A-Za-z0-9_]{30,}|sk-[A-Za-z0-9]{20,}' "$ROOT" --exclude-dir=.git; then
  echo "ERROR: Potential secret-like material found. Redact before sharing."
  exit 1
fi

echo "Checking prompt-safe authorization warning..."

if ! grep -RIn "not a provider-safety bypass" "$ROOT/engagement-context/pentest-auth/prompt-safe-authorization.txt" >/dev/null 2>&1; then
  echo "ERROR: prompt-safe authorization file is missing the provider-safety bypass warning."
  exit 1
fi

echo "Template hygiene check passed."
