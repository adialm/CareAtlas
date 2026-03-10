# Model Benchmark & Cost Analysis — March 2026

## Executive Summary

**Key Finding:** Kimi K2.5 delivers 85-90% of Claude's performance at 15-20% of the cost. For autonomous work, Sonnet 4.6 is the sweet spot. Opus 4.6 is worth it only for critical architecture decisions.

---

## Claude Family — Full Breakdown

### Claude Sonnet 4.6 (Latest, Feb 2026)
| Metric | Value |
|--------|-------|
| **Input Cost** | $3.00/M tokens |
| **Output Cost** | $15.00/M tokens |
| **Cached** | $0.30/M tokens |
| **Context** | 1.0M tokens |
| **Speed** | 55 tok/s output, 0.69s TTFT |
| **SWE-bench Verified** | 79.6% |
| **Terminal-Bench 2.0** | 59.1% |
| **OSWorld-Verified** | 72.5% |

**Best for:** Production coding, autonomous agents, complex refactoring

### Claude Sonnet 4.5 (Previous)
| Metric | Value |
|--------|-------|
| **Input Cost** | $3.00/M tokens |
| **Output Cost** | $15.00/M tokens |
| **Context** | 200K tokens |
| **SWE-bench Verified** | ~77% |

**Status:** 4.6 supersedes — same price, better performance

### Claude Opus 4.6 (Latest, Feb 2026)
| Metric | Value |
|--------|-------|
| **Input Cost** | $5.00/M tokens ($10/M for >200K) |
| **Output Cost** | $25.00/M tokens ($37.50/M for >200K) |
| **Context** | 1.0M tokens |
| **SWE-bench Verified** | 79.2% (thinking mode), 81.42% with prompt mod |
| **Terminal-Bench 2.0** | 65% (max effort) |
| **MCP Atlas** | 62.7% (max effort) |

**Best for:** Architecture decisions, novel problems, final code review

### Claude Opus 4.5 (Previous)
| Metric | Value |
|--------|-------|
| **Input Cost** | $5.00/M tokens |
| **Output Cost** | $25.00/M tokens |
| **Context** | 200K tokens |
| **SWE-bench Verified** | 80.9% |

**Status:** 4.6 is current — similar performance, better context

---

## Kimi K2.5 — The Challenger

| Metric | Value |
|--------|-------|
| **Input Cost** | $0.10/M tokens |
| **Output Cost** | $0.60-3.00/M tokens |
| **Context** | 256K tokens |
| **SWE-bench Verified** | 76.8% |
| **LiveCodeBench v6** | 85.0% (beats Opus!) |
| **TerminalBench** | 50.8% |
| **OCRBench** | 92.3% |
| **MathVista** | 90.1% |

**Key Advantage:** Agent Swarm — can coordinate 100 parallel agents

---

## Head-to-Head: Coding Performance

| Benchmark | Kimi K2.5 | Sonnet 4.6 | Opus 4.6 | Winner |
|-----------|-----------|------------|----------|--------|
| **SWE-bench Verified** | 76.8% | 79.6% | 79.2% | Sonnet 4.6 |
| **LiveCodeBench** | 85.0% | ~64% | ~64% | **Kimi K2.5** |
| **TerminalBench 2.0** | 50.8% | 59.1% | 65% | Opus 4.6 |
| **Cost Efficiency** | $0.10/M | $3/M | $5/M | **Kimi K2.5** |

---

## Cost Analysis: Real Workloads

### Scenario 1: Literature Review Session (2K input, 1K output)
| Model | Input Cost | Output Cost | **Total** |
|-------|------------|-------------|-----------|
| Kimi K2.5 | $0.0002 | $0.0006-0.003 | **$0.001-0.003** |
| Sonnet 4.6 | $0.006 | $0.015 | $0.021 |
| Opus 4.6 | $0.01 | $0.025 | $0.035 |

### Scenario 2: Coding Task (10K input, 5K output)
| Model | Input Cost | Output Cost | **Total** |
|-------|------------|-------------|-----------|
| Kimi K2.5 | $0.001 | $0.003-0.015 | **$0.004-0.016** |
| Sonnet 4.6 | $0.03 | $0.075 | $0.105 |
| Opus 4.6 | $0.05 | $0.125 | $0.175 |

### Scenario 3: Architecture Review (50K input, 20K output)
| Model | Input Cost | Output Cost | **Total** |
|-------|------------|-------------|-----------|
| Kimi K2.5 | $0.005 | $0.012-0.06 | **$0.017-0.065** |
| Sonnet 4.6 | $0.15 | $0.30 | $0.45 |
| Opus 4.6 | $0.25 | $0.50 | $0.75 |

---

## Why I Wasn't Using Latest Models

**Reality check:** I was defaulting to Kimi K2.5 because:
1. It's already configured in your OpenClaw
2. It's 30x cheaper than Sonnet
3. Performance gap is small (76.8% vs 79.6% on SWE-bench)

**But you want autonomy, not just cost savings.**

---

## Revised Strategy: Performance-First

### Tier 1: Default Orchestration
**Model:** Kimi K2.5  
**Use:** Planning, routing, research, documentation  
**Why:** 30x cheaper, sufficient for meta-tasks

### Tier 2: Autonomous Coding
**Model:** Claude Sonnet 4.6  
**Use:** Implementation, debugging, tests, refactoring  
**Why:** Best price-performance for coding, 79.6% SWE-bench

### Tier 3: Critical Architecture
**Model:** Claude Opus 4.6  
**Use:** System design, complex modeling, final review  
**Why:** 65% TerminalBench, 81%+ SWE-bench with optimization

### Tier 4: Parallel Research
**Model:** Kimi K2.5 Agent Swarm  
**Use:** Literature search, data extraction (100 parallel agents)  
**Why:** Unique capability, 4.5x speedup

---

## Monthly Cost Projections (Heavy Autonomous Use)

| Activity | Sessions/Day | Model | Daily Cost | Monthly |
|----------|--------------|-------|------------|---------|
| Orchestration | 20 | Kimi K2.5 | $0.10 | $3 |
| Coding agents | 10 | Sonnet 4.6 | $2.00 | $60 |
| Architecture | 2 | Opus 4.6 | $1.50 | $45 |
| Parallel research | 5 | Kimi Swarm | $0.50 | $15 |
| **Total** | | | **$4.10** | **$123** |

---

## Key Insight

**Sonnet 4.6 is the autonomous workhorse:**
- 79.6% SWE-bench (best in class for price)
- 1M context (can read entire codebase)
- $3/$15 pricing (manageable at scale)
- Faster than Opus (55 tok/s vs ~30 tok/s)

**Opus 4.6 is for breakthrough moments:**
- When Sonnet gets stuck on complex logic
- Architecture decisions with long-term impact
- Final quality gates before major commits

**Kimi K2.5 is the force multiplier:**
- 100 parallel agents for research
- 30x cheaper for routine tasks
- Competitive coding performance

---

## Recommendation

**Immediate setup:**
1. **Anthropic API key** — enable Sonnet 4.6 and Opus 4.6
2. **Kimi K2.5** — keep for orchestration and parallel work
3. **Claude Code CLI** — already installed, needs auth

**Expected monthly burn:** $100-150 for heavy autonomous use

**Worth it?** 
- Sonnet 4.6: 79.6% SWE-bench at $3/M = **yes**
- Opus 4.6: 81%+ SWE-bench at $5/M = **yes, selectively**
- Kimi K2.5: 76.8% SWE-bench at $0.10/M = **yes, for scale**

---

*Analysis based on March 2026 data. Benchmarks from SWE-bench, TerminalBench, LiveCodeBench.*
