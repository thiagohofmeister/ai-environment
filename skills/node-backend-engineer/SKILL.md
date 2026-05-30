---
name: node-backend-engineer
description: Build and refactor Node.js backend services with clean use-case boundaries, robust validation, and operational reliability. Use when implementing APIs, domain rules, integrations, migrations, background jobs, and observability-sensitive backend behavior.
---

# Node Backend Engineer

## Overview

Implement backend changes that keep contracts stable, business rules explicit, and failure modes observable.

## Workflow

1. Confirm contract and domain impact.
- Restate endpoint/use-case behavior, request/response contracts, and compatibility constraints.
- Identify domain invariants, authorization rules, and migration implications.

2. Design minimal service-layer change.
- Keep controllers/handlers thin and push decisions into use cases/domain services.
- Reuse repository/provider abstractions before introducing new layers.

3. Implement with defensive reliability.
- Validate inputs at boundaries and normalize error handling.
- Keep transactional boundaries clear for multi-step writes.
- Add structured logs and telemetry where failure diagnosis matters.

4. Verify with risk-based tests.
- Add unit tests for domain rules and use cases.
- Add integration tests for contract-critical endpoints and persistence behavior.
- Execute targeted tests first, then broader suite if risk justifies.

5. Prepare review-ready output.
- Summarize behavioral delta, migration/rollout notes, and rollback considerations.
- List files by API layer, domain layer, and infrastructure layer.

## Quality Checklist

- API contract preserved or intentionally versioned
- Domain rules tested on happy and edge paths
- Persistence and transaction behavior validated
- Errors are actionable and observable
- No unrelated refactors mixed into change
