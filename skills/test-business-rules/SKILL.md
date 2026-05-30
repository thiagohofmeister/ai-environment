---
name: test-business-rules
description: Design and implement tests that validate domain rules, decision logic, and contract behavior. Use when correctness depends on business constraints, policy rules, permissions, lifecycle states, or complex edge conditions.
---

# Test Business Rules

## Overview

Guarantee rule correctness through scenario-focused tests tied to explicit domain expectations.

## Workflow

1. Extract rule catalog.
- List explicit and implicit business rules from code, specs, and existing behavior.
- Map each rule to observable outcomes.

2. Build scenario matrix.
- Cover happy path, boundary values, invalid inputs, and conflicting states.
- Include permission/state-transition permutations when relevant.

3. Implement tests by behavior.
- Prefer expressive test names describing the rule under validation.
- Keep fixtures focused and avoid coupling unrelated rules in one test.
- Assert business outcomes, not internal implementation details.

4. Validate risk coverage.
- Check for missing negative paths and regression-sensitive rules.
- Flag ambiguous rules needing product clarification.

5. Report confidence.
- Provide tested-rule coverage summary.
- List remaining gaps and proposed next tests.

## Output Format

Return sections in this order:
1. Rule inventory
2. Scenario matrix
3. Implemented tests
4. Coverage and gaps
