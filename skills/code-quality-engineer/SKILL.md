---
name: code-quality-engineer
description: Implement and refactor code with strong maintainability, readability, and correctness standards. Use when coding tasks require robust structure, minimal-risk changes, clear boundaries, and defensible technical decisions.
---

# Code Quality Engineer

## Overview

Implement changes that remain easy to understand, test, and evolve.

## Workflow

1. Confirm change intent.
- Restate expected behavior and compatibility constraints.
- Check adjacent code paths to avoid hidden regressions.

2. Design minimal cohesive change.
- Prefer small patches with clear module boundaries.
- Reuse existing patterns before introducing abstractions.
- Avoid speculative generalization.

3. Implement with defensive rigor.
- Keep naming explicit and control flow straightforward.
- Validate inputs and error paths where behavior is user-visible or safety-critical.
- Keep side effects localized.

4. Verify behavior.
- Add or update tests where behavior changes.
- Run targeted checks first, then broader checks when needed.
- Document residual risk if full validation is not possible.

5. Prepare review-ready output.
- Summarize root cause, solution choice, and trade-offs.
- List modified files and rationale by area.

## Quality Checklist

- Correctness for normal and edge paths
- Backward compatibility or explicit migration notes
- Readability and cohesion
- Test coverage aligned to change risk
- No unrelated refactors mixed into the patch
