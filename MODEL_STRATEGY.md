# Alfred Model Strategy — Cost-Optimized AI Stack

## Current Pricing (March 2026)

| Model | Input | Output | Context | Best For |
|-------|-------|--------|---------|----------|
| **Kimi K2.5** | $0.10/M | $0.60-3.00/M | 256K | General tasks, reasoning |
| **Claude Sonnet 4** | ~$3/M | ~$15/M | 200K | Coding, analysis |
| **Claude Opus 4.5** | $5/M | $25/M | 200K | Complex architecture |
| **GPT-4o mini** | $0.15/M | $0.60/M | 128K | Simple queries |
| **Haiku 3** | $0.25/M | $1.25/M | 200K | Fast responses |
| **Ollama (local)** | Free | Free | Varies | Heartbeats, status checks |

## Proposed Stack for CareAtlas Work

### Tier 1: Default (80% of tasks)
**Model:** Kimi K2.5  
**Cost:** ~$0.50-2 per session  
**Use for:**
- Literature search and synthesis
- Data extraction and formatting
- Documentation writing
- Code review and planning
- Daily logs and summaries

**Why:** You already have Moonshot credits. Kimi K2.5 is competitive with Sonnet for most tasks at 1/10th the cost.

### Tier 2: Complex Reasoning (15% of tasks)
**Model:** Claude Sonnet 4 (via Cursor Pro)  
**Cost:** Included in Cursor Pro  
**Use for:**
- Architecture decisions
- Debugging complex code
- Statistical model design
- Meta-analysis methodology

**Why:** Cursor Pro includes Sonnet. Use it when Kimi struggles with complexity.

### Tier 3: Heavy Lifting (5% of tasks)
**Model:** Claude Opus 4.5 (only when needed)  
**Cost:** $5-25 per heavy session  
**Use for:**
- Initial system architecture
- Complex causal inference models
- Final code architecture review
- Critical debugging

**Why:** Expensive but worth it for make-or-break decisions.

### Tier 4: Autonomous Agents (future)
**Model:** Kimi K2.5 via ACPX or Claude via Anthropic API  
**Cost:** TBD based on usage  
**Use for:**
- Overnight literature searches
- Automated data processing
- Test running
- Documentation generation

**Why:** Enables true async work. Set up when ready.

## Cost Projections

### Current Setup (Kimi + Cursor Pro)
| Activity | Sessions/Week | Cost/Session | Weekly | Monthly |
|----------|---------------|--------------|--------|---------|
| Daily work (Kimi) | 14 | $1 | $14 | $56 |
| Complex tasks (Cursor) | 3 | $0* | $0 | $0 |
| **Total** | | | **$14** | **$56** |

*Cursor Pro already paid

### With Autonomous Agents (Future)
| Activity | Sessions/Week | Cost/Session | Weekly | Monthly |
|----------|---------------|--------------|--------|---------|
| Daily work (Kimi) | 14 | $1 | $14 | $56 |
| Autonomous tasks | 10 | $2 | $20 | $80 |
| Heavy lifting (Opus) | 2 | $10 | $20 | $80 |
| **Total** | | | **$54** | **$216** |

## Recommendations

### Immediate (This Week)
1. **Stay on Kimi K2.5** — sufficient for literature review
2. **Use Cursor Pro Sonnet** — for coding sessions
3. **No new API keys needed yet**

### Short Term (Next 2-4 Weeks)
1. **Monitor Kimi usage** — track costs vs. $20-50 budget
2. **Add Anthropic API** — if Kimi hits limits on complex tasks
3. **Evaluate ACPX autonomy** — worth it for overnight work?

### Long Term (Month 2+)
1. **Ollama for heartbeats** — local Llama for status checks
2. **Hybrid routing** — automatic model selection by task type
3. **Cost optimization** — cache common queries, batch requests

## Decision Matrix

| Situation | Model | Why |
|-----------|-------|-----|
| Literature search | Kimi K2.5 | Fast, cheap, good synthesis |
| Code architecture | Cursor Sonnet | Interactive, already paid |
| Statistical modeling | Kimi first, Opus if stuck | Cost vs. quality tradeoff |
| Emergency debugging | Cursor Sonnet | Real-time collaboration |
| Overnight batch work | ACPX + Kimi/Claude | Async, can retry |
| Final review | Opus 4.5 | Worth the cost for quality |

## Open Questions

1. **What's your monthly AI budget ceiling?** ($50? $100? $200?)
2. **Is autonomous overnight work worth $80-100/mo?**
3. **Do you want me to track costs per session?**

---

*Strategy: Start cheap, scale up based on value. Kimi + Cursor Pro is sufficient for Week 1-2.*
