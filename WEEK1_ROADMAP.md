# CareAtlas Revival — Week 1 Roadmap

## Goal
Build an evidence base for intervention effects. Find 15-20 high-quality studies on community health interventions, extract effect sizes, and create a structured database for meta-analysis.

---

## Day 1 (Today): Setup & Search Strategy

### Tasks
1. **Define search queries** for each intervention type
2. **Identify target databases** and journals
3. **Create data extraction template**
4. **Set up literature tracking system**

### Search Queries (Draft)

**Clinics/Health Centers:**
- "community health center" AND "uninsured rate" AND ("quasi-experimental" OR "difference-in-differences")
- "federally qualified health center" AND "insurance coverage" AND impact
- "clinic opening" AND "healthcare access" AND evaluation

**Diabetes Screening:**
- "diabetes screening program" AND "community" AND effectiveness
- "mobile health clinic" AND "diabetes" AND outcomes
- "HbA1c" AND "screening intervention" AND population

**Asthma Interventions:**
- "asthma intervention" AND "home-based" AND "pediatric"
- "air filtration" AND "asthma" AND "randomized"
- "community health worker" AND "asthma" AND children

**Maternal/Infant Health:**
- "home visiting program" AND "infant mortality" AND evaluation
- "maternal health program" AND "birth outcomes"
- "community doula" AND "low birth weight"

**Substance Use/Overdose:**
- "medication-assisted treatment" AND "overdose" AND community
- "harm reduction" AND "naloxone" AND outcomes
- "addiction treatment center" AND "mortality"

### Target Sources
- **PubMed** — biomedical literature
- **Google Scholar** — broader coverage, grey literature
- **RAND Corporation** — health policy research
- **Urban Institute** — social policy
- **Cochrane Library** — systematic reviews
- **JAMA, Health Affairs, NEJM, AJPH** — top journals

### Data Extraction Template

```yaml
study_id: string
authors: string
year: integer
title: string
journal: string

# Study Design
design: enum[RCT, quasi-experimental, diff-in-diff, RDD, cohort, other]
quality_score: 1-5  # Newcastle-Ottawa or custom

# Population
location: string
population_size: integer
demographics:  # if reported
  age_mean: float
  race_ethnicity: string
  income_level: string
baseline_health: string

# Intervention
intervention_type: enum[clinic, screening, air_filter, maternal_program, addiction_treatment]
description: string
duration_months: integer
intensity: string  # e.g., "1 clinic per 10k residents"
implementation_quality: string

# Outcome
outcome_metric: string  # e.g., "uninsured rate"
baseline_value: float
followup_value: float
effect_size: float  # primary: percentage point change
confidence_interval: [lower, upper]
p_value: float

# Contextual factors
comparison_group: string
confounders_controlled: [string]
limitations: [string]
```

---

## Day 2-3: Literature Search & Screening

### Tasks
1. Execute searches across databases
2. Screen titles/abstracts for relevance
3. Full-text review of promising studies
4. Begin data extraction

### Target: 30-40 studies screened → 20 full-text reviews → 15 included

---

## Day 4-5: Data Extraction & Quality Assessment

### Tasks
1. Complete data extraction for all included studies
2. Assess study quality (risk of bias)
3. Create effect size database
4. Begin descriptive analysis

### Quality Assessment Criteria
- **Randomization** (if RCT) or **comparable groups** (if observational)
- **Pre-specified outcomes** vs. cherry-picked
- **Adequate follow-up** (>80% retention)
- **Intention-to-treat analysis**
- **Confounder control** (observational studies)

---

## Day 6-7: Preliminary Analysis & Documentation

### Tasks
1. Forest plot of effect sizes
2. Heterogeneity assessment (I² statistic)
3. Subgroup analysis planning
4. Document methodology
5. Week 1 report

### Deliverables
- [ ] `literature/studies_database.json` — structured study data
- [ ] `literature/forest_plot.png` — visual summary
- [ ] `literature/week1_report.md` — findings summary
- [ ] Updated `TECHNICAL_ANALYSIS.md` with evidence base

---

## Success Criteria

- ✅ 15+ studies with extractable effect sizes
- ✅ Coverage of all 5 intervention types
- ✅ Quality assessment completed
- ✅ Preliminary heterogeneity analysis
- ✅ Clear path to meta-analysis (Week 2)

---

## Resources

### Tools
- **Zotero** or **Mendeley** — reference management
- **Rayyan** — systematic review screening
- **R (metafor package)** or **Python (pymeta)** — meta-analysis

### Key Papers to Start
1. **Community Health Centers:**
   - Shi et al. (2019) — Impact of FQHC expansion
   - 

### Reading for You
- **Introduction to Meta-Analysis** (Borenstein et al.) — Chapters 1-4
- **Cochrane Handbook** — Section 10 (analyzing data)
- **Target Trial Framework** (Hernán & Robins) — for causal inference

---

## Notes for Adi

**What you'll learn this week:**
1. How to search academic literature systematically
2. How to assess study quality (critical appraisal)
3. How to extract and standardize effect sizes
4. Basics of meta-analysis methodology
5. How to document research for reproducibility

**Daily check-ins:**
- I'll summarize what I found
- You review and ask questions
- We adjust strategy as needed

**End of week:**
- You'll have a database of real evidence
- You'll understand why some studies are better than others
- You'll be ready to build a statistical model (Week 2)

---

*Created: March 6, 2026*
*Approach: Evidence-Based Statistical Modeling (Option C)*
