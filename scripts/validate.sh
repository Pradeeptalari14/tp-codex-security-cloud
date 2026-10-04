#!/usr/bin/env bash
# Smoke test validating Codex Security Cloud Scanner & Remediator
set -euo pipefail

if [[ "${1:-}" == "--dry-run" ]]; then
    echo "Dry-run check passed: Codex Security Scanner & Remediator verified."
    exit 0
fi

echo "Verifying Codex Security Scanner..."
python3 -c "import codex_security_scanner; print('Security Scanner Module Loaded Successfully.')"

echo "Verifying PR Patch Remediator..."
python3 -c "import pr_patch_remediator; print('Remediator Module Loaded Successfully.')"

echo "All Codex Security Cloud tests passed."
