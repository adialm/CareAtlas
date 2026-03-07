# CareAtlas Technical Analysis

## Current State Assessment

### ✅ What's Working Well

1. **Real Data Integration**
   - 6 ZIP codes with actual Boston Public Health Commission data
   - 72,718 residents represented
   - Population-weighted aggregation from 222 census tracts
   - Evidence-based intervention levers from research

2. **Frontend Architecture**
   - React + TypeScript with proper type definitions
   - Material-UI for consistent design
   - Zustand for state management
   - Mapbox integration for geographic visualization
   - Clean component separation (Left/Center/Right panels)

3. **Simulation Engine Structure**
   - Baseline metrics calculated from real data
   - Intervention effects with caps and multipliers
   - Policy sliders (healthcare access, funding) affect outcomes
   - Time-based simulation (months × years)

### ⚠️ Critical Gaps (Why the Simulation Isn't "Real")

#### 1. **No Causal Model**
The current simulation applies linear effects:
```typescript
// Current: Simple multiplication
const effect = baseEffect * policyMultiplier * clinics
```

**What's missing:**
- No interaction effects between interventions
- No diminishing returns (3 clinics ≠ 3× the effect of 1 clinic)
- No spillover effects between ZIP codes
- No temporal dynamics (health outcomes take years to change, not months)

#### 2. **No Geographic Realism**
- Interventions are just counts per ZIP, not actual locations
- No distance/decay effects (a clinic helps nearby tracts more)
- No capacity constraints (infinite patients per clinic)
- No travel time/accessibility modeling

#### 3. **Simplified Health Dynamics**
- Cardiometabolic score averages 3 conditions (diabetes, hypertension, obesity)
- Realistically, these are correlated but distinct pathways
- No comorbidity modeling (diabetes → hypertension → worse outcomes)
- No demographic stratification within ZIPs

#### 4. **No Validation**
- Model outputs haven't been compared to real intervention studies
- No sensitivity analysis on parameters
- No uncertainty quantification

---

## What "Real" Simulation Looks Like

### Option A: Agent-Based Model (ABM)
**Complexity:** High | **Realism:** High | **Time:** 4-6 weeks

Simulate individual "agents" (residents) with:
- Demographics (age, race, income)
- Health states (healthy, diabetic, hypertensive, etc.)
- Behaviors (seek care, adhere to treatment)
- Locations (which census tract)

Interventions affect agents based on proximity, eligibility, and uptake rates.

**Pros:** Captures heterogeneity, emergent behavior, individual trajectories
**Cons:** Computationally expensive, needs lots of data, hard to validate

### Option B: Compartmental Model (System Dynamics)
**Complexity:** Medium | **Realism:** Medium | **Time:** 2-3 weeks

Model populations moving between health states:
```
Healthy → At Risk → Diabetic → Complications
   ↑________↓
   (interventions can reverse/stall progression)
```

Use differential equations with:
- Transition rates between states
- Intervention effects on rates
- Demographic-specific parameters

**Pros:** Mathematically rigorous, interpretable, faster than ABM
**Cons:** Loses individual heterogeneity, still needs parameter estimation

### Option C: Statistical/Machine Learning Model
**Complexity:** Medium | **Realism:** Medium-High | **Time:** 2-3 weeks

Train on real intervention studies:
- Propensity score matching on similar communities
- Difference-in-differences for before/after
- Meta-analysis of published intervention effects

Predict outcomes based on:
- Community characteristics
- Intervention type/intensity
- Duration

**Pros:** Data-driven, can quantify uncertainty, grounded in reality
**Cons:** Needs training data, may not generalize to untested interventions

---

## Recommended Path Forward

Given your goals (learning + portfolio + time constraints), I recommend **Option C with elements of B**:

### Phase 1: Evidence Synthesis (Week 1)
1. **Literature Review:** Find 10-20 studies on community health interventions
   - Clinic openings → uninsured rates
   - Screening programs → diabetes detection/management
   - Air quality → asthma outcomes
   - Addiction treatment → overdose rates

2. **Effect Size Database:** Extract:
   - Point estimates (mean effect)
   - Confidence intervals
   - Study population characteristics
   - Intervention details (dose, duration)

### Phase 2: Statistical Model (Week 2)
1. **Meta-analysis:** Pool effect sizes, weight by study quality
2. **Moderator Analysis:** What makes interventions more/less effective?
   - Baseline health status
   - Population demographics
   - Implementation quality
3. **Predictive Model:** Input → Expected outcome distribution

### Phase 3: Integration (Week 3)
1. Replace current linear effects with evidence-based distributions
2. Add confidence intervals to predictions
3. Implement sensitivity analysis (what if effects are 50% weaker?)
4. Add model validation against holdout studies

### Phase 4: Geographic Layer (Week 4, optional)
1. Add spatial interaction model
2. Implement distance-decay for intervention effects
3. Model capacity constraints

---

## Immediate Next Steps

1. **Scope Decision:** Which option resonates? How much time can you commit?

2. **Data Audit:** What's in `Boston_Health_Resilience_Data_Pack/`?
   - Raw census tract data
   - Intervention lever sources
   - Any validation datasets?

3. **Literature Search:** Start collecting intervention studies
   - Google Scholar: "community health center uninsured rate"
   - PubMed: "diabetes screening program effectiveness"
   - RAND, Urban Institute reports

4. **Code Refactor:** Clean up simulation engine for new model integration
   - Separate "model" from "presentation"
   - Add unit tests for current behavior
   - Create model interface/abstraction

---

## Technical Debt to Address

1. **Type Safety:** Some `any` types in simulation results
2. **Error Handling:** No bounds checking on extreme inputs
3. **Testing:** No unit tests for simulation logic
4. **Documentation:** Model assumptions not documented
5. **Performance:** Recalculates everything on every render

---

## Success Metrics

How do we know the new simulation is "better"?

| Metric | Current | Target |
|--------|---------|--------|
| Grounded in evidence | ❌ Arbitrary | ✅ Cited studies |
| Uncertainty quantified | ❌ Point estimates | ✅ Confidence intervals |
| Validated externally | ❌ None | ✅ Matches literature |
| Sensitivity analysis | ❌ None | ✅ Parameter sweeps |
| Geographic realism | ❌ ZIP-level only | ✅ Tract-level or better |

---

*Analysis completed: March 6, 2026*
*Next review: After scope decision*
