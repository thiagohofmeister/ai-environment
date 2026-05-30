---
name: test-performance
description: Plan and execute performance validation focused on latency, throughput, resource usage, and regression detection. Use when features or changes may impact scalability, response time, concurrency behavior, or infrastructure cost.
---

# Test Performance

## Overview

Measure performance with repeatable baselines and enforce regression visibility.

## Workflow

1. Define workload model.
- Describe traffic shape, concurrency, payload size, and critical user journeys.
- Separate steady-state and stress scenarios.

2. Set budgets and SLIs.
- Define target metrics such as p50/p95/p99 latency, throughput, error rate, and resource ceilings.
- Tie thresholds to business impact when possible.

3. Establish baseline.
- Capture baseline measurements before change when available.
- Keep environment and dataset comparable.

4. Execute tests.
- Run warm-up and measured phases.
- Repeat runs to reduce noise and report variance.

5. Analyze regressions.
- Compare before/after against budgets.
- Identify bottleneck suspects and propose next diagnostic steps.

6. Deliver decision-ready report.
- Summarize pass/fail against budgets.
- Include raw metric table and concise recommendation.

## Output Format

Return sections in this order:
1. Workload definition
2. Metrics and budgets
3. Baseline vs current
4. Findings
5. Recommendation
