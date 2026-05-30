---
name: node-wa-engineer
description: Implement WhatsApp integration features in Node.js with resilient queue-worker design, webhook reliability, and idempotent message processing. Use when working on WA transport, webhook ingestion, retries/backoff, session lifecycle, and external provider integrations.
---

# Node WA Engineer

## Overview

Build WA integration flows that are idempotent, observable, and resilient to provider/network instability.

## Workflow

1. Confirm message-flow scope.
- Map inbound and outbound flow end-to-end (provider -> wa-api -> core-api and reverse when applicable).
- Identify where idempotency keys, deduplication, and ordering guarantees are required.

2. Design queue-worker behavior.
- Keep enqueue and process responsibilities explicit.
- Define retry/backoff strategy, max attempts, dead-letter/failure handling, and recovery path.
- Ensure failure of one message does not block unrelated traffic.

3. Implement provider-safe integration.
- Guard against transient provider outages and timeout variance.
- Normalize provider payload differences into stable internal contracts.
- Keep integration adapters isolated from domain use cases.

4. Verify reliability and correctness.
- Add tests for retry scheduling, idempotency, and failure fallback behavior.
- Validate webhook dispatch behavior under temporary downstream outage.
- Cover business-critical media/text edge cases when message shape changes.

5. Prepare rollout notes.
- Document feature flags, environment variables, and operational toggles.
- Include runbook-style notes for monitoring and incident triage signals.

## Quality Checklist

- Inbound/outbound processing is idempotent
- Retry and backoff behavior is explicit and tested
- Queue/workers have bounded failure behavior
- Webhook contracts remain stable for core-api
- Logs and metrics support debugging under outage conditions
