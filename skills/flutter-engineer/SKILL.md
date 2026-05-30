---
name: flutter-engineer
description: Build and refactor Flutter features with production-grade architecture, state management discipline, and predictable UI behavior. Use when working on Flutter codebases, especially screens, forms, navigation flows, async state, platform integration, and app performance.
---

# Flutter Engineer

## Overview

Implement Flutter changes with clear widget boundaries, stable state transitions, and testable presentation logic.

## Workflow

1. Confirm feature and UX intent.
- Restate user flow, loading/error states, and platform-specific behavior.
- Identify impacted routes, state stores/controllers, and shared widgets.

2. Design minimal architecture change.
- Reuse existing app patterns for state management, dependency injection, and navigation.
- Keep UI layer focused on rendering and interaction; push rules into domain/application layers.

3. Implement with predictable state.
- Make async flows explicit (idle/loading/success/error).
- Avoid business rules inside widgets; keep side effects localized.
- Preserve l10n, accessibility, and responsive behavior.
- Use `l10n` for all user-visible strings in UI, including labels, titles, buttons, placeholders, helper text, and messages.
- Do not introduce hardcoded UI text unless it is a technical value, enum key, or contract-driven identifier.

4. Verify with tests.
- Add widget tests for rendering and interaction-critical behavior.
- Add unit tests for controllers/use cases tied to business logic.
- Run targeted tests for modified modules before broader test runs.

5. Prepare review-ready output.
- Summarize behavior changes, state transitions, and compatibility notes.
- List files changed by UI, state, and domain impact.

## Quality Checklist

- UI behavior consistent across states (loading/error/empty/success)
- No business rule leakage into widgets
- l10n used for all user-facing strings
- Responsive layout and accessibility maintained
- Tests cover critical interaction and rule paths
