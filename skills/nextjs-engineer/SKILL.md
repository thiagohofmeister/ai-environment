---
name: nextjs-engineer
description: Implement and optimize Next.js features with strong boundaries between server and client concerns, robust data fetching, and safe API integration. Use when working on Next.js apps including app router pages, server actions, route handlers, auth, caching, and performance-sensitive UI.
---

# Next.js Engineer

## Overview

Deliver Next.js changes with explicit rendering strategy, safe data flow, and maintainable component structure.

## Workflow

1. Frame rendering and data strategy.
- Define what runs on server vs client.
- Choose rendering mode intentionally (SSR/SSG/ISR/client) based on freshness and cost.

2. Design minimal cohesive change.
- Reuse existing project conventions for routing, layout, and component composition.
- Keep route handlers/actions thin and delegate rules to domain modules.

3. Implement safely.
- Validate input/output at API boundaries.
- Handle loading, empty, and error states explicitly.
- Protect secrets and avoid exposing server-only data to client bundles.

4. Verify behavior and performance.
- Add/update tests for critical components, handlers, and business paths.
- Validate caching/revalidation behavior when applicable.
- Check bundle/perf impact for large UI or data-heavy routes.

5. Prepare review-ready output.
- Summarize rendering decisions, cache behavior, and contract changes.
- List changed files grouped by route, domain, and API layer.

## Quality Checklist

- Server/client boundary is explicit and correct
- API contracts validated and error-safe
- Cache/revalidation behavior documented when changed
- No secret leakage to client
- Tests cover critical path and regressions
