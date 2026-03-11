# CareAtlas — Strategic Analysis & Execution Plan

**Analyzed by:** Alfred  
**Date:** March 11, 2026  
**Status:** Ready for autonomous execution

---

## 1. WHAT IS CAREATLAS?

**The Product:** A virtual policy lab for healthcare intervention simulation

**The Core Idea:** 
- Take real Boston health data (222 census tracts, 6 ZIP codes, 72K residents)
- Let users model interventions (clinics, screenings, policies)
- Predict health outcomes over 5-10 years
- Optimize for equitable, effective resource allocation

**The Innovation:**
- Hyper-local (census tract level, not city-wide averages)
- Predictive (simulates future outcomes, not just describes past)
- Actionable (shows impact of specific interventions)
- Equitable (targets health disparities explicitly)

---

## 2. WHY ARE WE BUILDING IT?

**Primary Goals:**
1. **Portfolio piece** — Demonstrate full-stack + data science + health domain expertise
2. **Learning project** — Causal inference, simulation modeling, geospatial analysis
3. **Hackathon winner** — Novel approach to health equity visualization
4. **Real impact potential** — Could inform actual Boston Public Health Commission decisions

**The Problem We're Solving:**
Current health data is:
- **Aggregated** — City averages hide neighborhood disparities
- **Descriptive** — Shows what happened, not what will happen
- **Static** — No way to test "what if we add a clinic here?"
- **Inequitable** — Resources often go to loudest voices, not greatest need

**Our Solution:**
- **Granular** — Census tract level (222 micro-communities)
- **Predictive** — ML models forecast 5-10 year outcomes
- **Interactive** — Test interventions before spending money
- **Equity-focused** — Explicitly targets disparities

---

## 3. CURRENT STATE

### ✅ What's Built
| Component | Status | Details |
|-----------|--------|---------|
| Frontend shell | ✅ Complete | React + TypeScript + Material-UI, 3-panel layout |
| Real data integration | ✅ Complete | 6 ZIP codes, 222 tracts, Boston Public Health Commission data |
| Simulation engine | ⚠️ Functional but naive | Linear effects, no causal model |
| Map visualization | ✅ Mapbox integrated | Geographic display working |
| Literature database | 🟡 In progress | 11 studies collected, need more |

### ❌ Critical Gaps
1. **No causal model** — Current simulation is linear multiplication, not real epidemiology
2. **No evidence base** — Intervention effects are arbitrary, not from research
3. **No validation** — Model outputs never compared to real studies
4. **Backend API** — FastAPI scaffolded but not implemented

---

## 4. THE EVIDENCE-BASED PATH FORWARD

**Chosen Approach:** Option C — Statistical/Machine Learning Model

**Why This Approach:**
- **Time realistic** — 2-3 weeks vs 4-6 weeks for agent-based modeling
- **Grounded in reality** — Uses real intervention study results
- **Interpretable** — Can explain why predictions work
- **Portfolio-friendly** — Demonstrates meta-analysis + causal inference

**The Method:**
1. Collect 15-20 high-quality intervention studies
2. Extract effect sizes with confidence intervals
3. Meta-analysis to pool effects
4. Build predictive model: (community characteristics + intervention) → outcome distribution
5. Replace naive simulation with evidence-based predictions

---

## 5. EXECUTION PLAN

### Phase 1: Evidence Base (Week 1) — IN PROGRESS
**Goal:** 15-20 studies with extractable effect sizes

**What I'll Do:**
| Task | Tool | Output |
|------|------|--------|
| Literature search | Tavily API | 30-40 candidate studies |
| Quality screening | Manual review | 20 full-text reviews |
| Data extraction | Python script | Structured database |
| Effect size calculation | Python (pymeta) | Standardized effects |

**What I Need:**
- ✅ Tavily API working
- ✅ Database schema defined
- ⚠️ Access to full-text papers (may need institutional access)

**Deliverables:**
- `literature/studies_database.json` (15+ studies)
- `literature/forest_plot.png` (visual summary)
- `literature/week1_report.md` (findings)

---

### Phase 2: Statistical Model (Week 2)
**Goal:** Meta-analysis + predictive model

**What I'll Do:**
| Task | Tool | Output |
|------|------|--------|
| Meta-analysis | Python (pymeta/metafor) | Pooled effect sizes |
| Heterogeneity analysis | Python | I² statistics, forest plots |
| Moderator analysis | Python | What makes interventions work better? |
| Predictive model | Scikit-learn | Input → outcome distribution |

**What I Need:**
- ✅ Week 1 data
- ✅ Statistical knowledge (I have this)
- ⚠️ May need Opus for complex causal inference questions

**Deliverables:**
- `backend/models/intervention_effects.py` (statistical model)
- `backend/models/predictions.py` (prediction engine)
- `docs/META_ANALYSIS.md` (methodology)

---

### Phase 3: Integration (Week 3)
**Goal:** Replace naive simulation with evidence-based model

**What I'll Do:**
| Task | Tool | Output |
|------|------|--------|
| Backend API | FastAPI | Simulation endpoints |
| Frontend integration | React/TypeScript | Connect to real model |
| Uncertainty visualization | D3.js/Recharts | Confidence intervals on predictions |
| Sensitivity analysis | Python | "What if effects are 50% weaker?" |

**What I Need:**
- ✅ Week 2 models
- ✅ Frontend codebase (exists)
- ✅ Backend scaffold (exists)

**Deliverables:**
- Working simulation with real predictions
- Uncertainty quantification
- Sensitivity analysis feature

---

### Phase 4: Geographic Realism (Week 4, Optional)
**Goal:** Spatial interaction modeling

**What I'll Do:**
| Task | Tool | Output |
|------|------|--------|
| Distance decay model | GeoPandas | Closer interventions = stronger effects |
| Capacity constraints | Python | Clinics have patient limits |
| Spillover effects | Spatial regression | Interventions affect neighboring tracts |

**What I Need:**
- ⚠️ More time (may skip for hackathon)
- ✅ GeoPandas (installed)

**Deliverables:**
- Spatial interaction model
- More realistic geographic effects

---

## 6. TOOLS & RESOURCES

### What I Have
| Resource | Status | Use |
|----------|--------|-----|
| PostgreSQL memory | ✅ | Log everything, never forget |
| Tavily API | ✅ | Literature search |
| Sonnet/Opus via OpenRouter | ✅ | Complex coding, architecture |
| Kimi K2.5 | ✅ | Daily work, cheap |
| Ollama (local) | ✅ | Embeddings, heartbeats |
| GitHub repo | ✅ | Code sync |
| CareAtlas codebase | ✅ | Frontend ready, backend scaffolded |

### What I Might Need
| Resource | When | Why |
|----------|------|-----|
| Institutional access | Week 1 | Full-text papers behind paywalls |
| More OpenRouter credits | Week 2-3 | Heavy Sonnet/Opus usage for modeling |
| Validation dataset | Week 3 | Compare predictions to real outcomes |

---

## 7. RISK MITIGATION

| Risk | Likelihood | Mitigation |
|------|------------|------------|
| Can't access full-text papers | Medium | Use open access, preprints, abstracts; ask you for institutional access |
| Effect sizes too heterogeneous | Medium | Focus on subgroup analysis; document uncertainty |
| Model too complex for hackathon | Low | Build simple version first, add complexity if time |
| Costs exceed budget | Low | Track spending; use Kimi for 80% of work |

---

## 8. SUCCESS CRITERIA

**Minimum Viable Product (Hackathon):**
- ✅ 15+ studies in database
- ✅ Meta-analysis with forest plot
- ✅ Evidence-based simulation (not arbitrary effects)
- ✅ Uncertainty visualization
- ✅ Working demo: "Click neighborhood → See intervention impact"

**Stretch Goals:**
- 🎯 25+ studies
- 🎯 Spatial interaction model
- 🎯 Real-time optimization recommendations
- 🎯 Published methodology documentation

---

## 9. IMMEDIATE NEXT ACTIONS

**If you approve this plan:**

1. **Today:** I'll resume literature search, target 5 more studies
2. **This week:** Complete Week 1 (15-20 studies total)
3. **Daily:** Log progress, update studies database
4. **Ask you for help only if:**
   - Can't access critical paper (need institutional login)
   - Cost approaching $5/day limit
   - Unclear on methodological decision

**Ready to execute. Awaiting your go-ahead.**
