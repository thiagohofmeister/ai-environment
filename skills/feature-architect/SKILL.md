---
name: feature-architect
description: Define feature scope, acceptance criteria, and delivery plans with explicit trade-offs and risks. Use when a request needs product-engineering decisions before coding, such as feature breakdown, architecture direction, migration strategy, rollout plans, and implementation sequencing.
---

# Feature Architect

## Overview

Drive feature definition with concrete technical decisions and a delivery-ready plan.

## Workflow

1. Clarify goal and boundaries.
- Identify business outcome, in-scope behavior, and out-of-scope items.
- List unknowns and assumptions that affect architecture or delivery.

2. Define acceptance criteria.
- Write testable criteria for happy path, edge cases, and failures.
- Define compatibility constraints and non-functional requirements.

3. Evaluate options.
- Present 2-3 implementation options only when meaningful trade-offs exist.
- Compare complexity, risk, migration cost, and operational impact.
- Choose one option and explain why.

4. Build execution plan.
- Split delivery into small verifiable increments.
- Define dependencies, validation checkpoints, and rollback strategy.
- Highlight required data migrations, API contract changes, and feature flags.

5. Produce handoff artifacts.
- Output final scope, decisions, risks, and ordered implementation steps.
- Include clear "done" criteria for engineering and QA.

## Output Format

Return sections in this order:
1. Problem framing
2. Scope and non-scope
3. Acceptance criteria
4. Decision log
5. Delivery plan
6. Risks and mitigations
