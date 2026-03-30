---
name: analyzing-research-papers
description: Use when reading a research paper from a PDF, DOI, or URL and you need a structured analysis, guidance on which original sections are worth reading directly, or field-aware evaluation for AI and systems papers.
---

# Analyzing Research Papers

This skill provides expertise in systematically analyzing research papers to extract key insights, evaluate methodological rigour, and contextualize findings for researchers.

It should not only summarize the paper, but also act as a reading guide: surface the parts that the human should read directly, explain why the core idea works, and adapt the analysis to the paper's field.

## Paper Access Methods

### Input Formats Accepted

**Local files:**
- Absolute paths: `/path/to/paper.pdf`
- Relative paths: `./papers/smith2024.pdf`
- Markdown files: `paper.md`

**DOIs:**
- Standard format: `10.1234/journal.2024.12345`
- With prefix: `doi:10.1234/journal.2024.12345`
- Resolve using: `https://doi.org/{doi}`

**URLs:**
- ArXiv: `https://arxiv.org/pdf/2301.12345.pdf`
- Journal websites: Direct PDF or HTML links
- Preprint servers: bioRxiv, medRxiv, etc.

### Handling Access Issues

**Paywalled content:**
- Work with available abstract and metadata
- Extract what's publicly accessible
- Note limitations in summary
- Suggest open access alternatives

**PDF reading failures:**
- Request text version if available
- Try alternative formats (HTML, arXiv)
- Extract from DOI metadata

## Analysis Framework

### Initial Scan

**Identify paper structure:**
- Abstract and key claims
- Section organization (IMRaD vs custom)
- Figures and tables overview
- Reference density and key citations

**Classify paper type:**
- Theory: Proofs, mathematical foundations, formal results
- Methods: New algorithms, techniques, computational approaches
- Systems: Architecture, implementation, performance, deployment, or infrastructure design
- Application: Domain-specific use cases, case studies
- Review: Surveys, systematic reviews, meta-analyses
- Empirical: Experimental results, observations, measurements

### Reader Guidance

The summary must preserve a path back to the source text.

**Always identify original content worth reading directly:**
- Sections with the real problem statement or threat model
- Paragraphs that define the key abstraction, mechanism, or invariant
- Figures and tables that carry the main experimental or system story
- Ablations, error analyses, failure cases, or limitations sections
- Implementation details that summaries often compress away

**For each recommended item, explain why direct reading matters:**
- Precise wording affects interpretation
- The mechanism is easier to understand from the original explanation
- The figure or table contains nuance lost in summary form
- The limitation or caveat changes how results should be trusted
- The section contains assumptions that downstream reasoning depends on

When possible, point to concrete section names, figure numbers, table numbers, or appendix items rather than giving vague advice.

### Content Extraction Priorities

**Must extract:**
1. Main contribution(s) and claims
2. Methodological approach and assumptions
3. Key results with statistical evidence
4. Limitations acknowledged
5. Related work positioning
6. Why the idea works according to the paper's mechanism or design logic

**Important to capture:**
- Experimental setup and validation
- Implementation details
- Performance metrics and comparisons
- Dataset characteristics
- Reproducibility information
- Evidence for the mechanism, not just the outcome

**Important for systems papers:**
- Workload assumptions and deployment context
- System model, failure model, and operational constraints
- Throughput, latency, tail latency, scalability, and resource overhead
- Baselines, hardware environment, and fairness of comparisons
- Trade-offs between performance, correctness, complexity, and operability

**Nice to have:**
- Future work suggestions
- Broader implications
- Alternative approaches considered
- Failure modes discussed

## Quality Assessment Criteria

### Methodological Rigour

**Strong indicators:**
- Clear research questions
- Appropriate methodology for questions
- Controlled comparisons
- Statistical significance properly assessed
- Limitations openly discussed
- Assumptions explicitly stated

**Weak indicators:**
- Vague objectives
- Methodology not justified
- Cherry-picked results
- Over-claiming based on limited evidence
- Ignoring contrary evidence
- Unacknowledged assumptions

### Reproducibility Assessment

**High reproducibility:**
- Code publicly available
- Data accessible or well-described
- Implementation details complete
- Hyperparameters specified
- Random seeds provided
- Environment documented

**Low reproducibility:**
- "Implementation details omitted for brevity"
- No code or data shared
- Vague parameter descriptions
- Critical details missing
- Non-standard methods without explanation

### Impact Potential

**High impact indicators:**
- Addresses important problem
- Novel approach or insight
- Strong empirical results
- Generalizable beyond specific case
- Clear practical applications
- Challenges existing assumptions

**Limited impact indicators:**
- Incremental improvement
- Narrow applicability
- Limited novelty
- Weak empirical support
- Unclear practical value

## Why It Works Analysis

Go beyond "what happened" and explain the causal story the paper is relying on.

**Extract:**
- The mechanism, inductive bias, systems principle, or design trick the idea depends on
- Which assumptions must hold for the mechanism to help
- Which experimental or analytical results support that mechanism
- Whether the evidence shows correlation, causal support, or only plausible intuition

**Assess:**
- Is the claimed mechanism clearly articulated by the authors or inferred indirectly?
- Do the ablations, comparisons, traces, or proofs actually support the mechanism?
- Does the idea work because of the named innovation, or because of confounding factors such as scale, tuning, hardware, or benchmark choice?
- In what regimes is the mechanism likely to break down?

## Analysis Structure

### Overview Section

**Synthesize (2-3 paragraphs):**
- What problem does this address?
- What's the main contribution?
- What's the key finding or result?
- Why does this matter?

### Highlights (Bullet Points)

**Extract:**
- Most important findings
- Key methodological innovations
- Surprising or counter-intuitive results
- Practical implications
- Limitations to be aware of

### Strengths Assessment

**Methodological strengths:**
- Rigorous experimental design
- Appropriate statistical analysis
- Comprehensive evaluation
- Clear presentation

**Impact strengths:**
- Novel contributions
- Practical applicability
- Theoretical insights
- Reproducibility support

### Weaknesses Assessment

**Be specific and fair:**
- Methodological limitations
- Scope constraints
- Unclear explanations
- Missing comparisons
- Reproducibility concerns
- Over-claims not supported by evidence

**Distinguish:**
- Fundamental flaws (invalidate conclusions)
- Important limitations (affect interpretation)
- Minor issues (don't affect main findings)

## Section-by-Section Analysis

### Introduction

**Extract:**
- Problem motivation and importance
- Research gap being addressed
- Main research questions
- Contributions claimed
- Paper organization

**Assess:**
- Is motivation convincing?
- Is gap clearly identified?
- Are claims appropriately scoped?

### Methods/Approach

**Extract:**
- Core methodology or algorithm
- Key design decisions and rationale
- Assumptions made (explicit and implicit)
- Implementation details
- Parameters and configurations

**Assess:**
- Is approach well-justified?
- Are assumptions reasonable?
- Is description complete enough to reproduce?
- Are limitations acknowledged?

### Results/Experiments

**Extract:**
- Experimental setup
- Datasets or scenarios used
- Metrics and evaluation criteria
- Main findings with numbers
- Statistical significance
- Comparison with baselines
- Evidence that explains why the method or system performs as claimed

**Assess:**
- Are experiments well-designed?
- Are comparisons fair?
- Are results presented clearly?
- Is statistical analysis appropriate?
- Are claims supported by evidence?
- Do the results support the proposed mechanism, not just the headline metric?

### Discussion/Conclusion

**Extract:**
- Interpretation of results
- Broader implications
- Limitations discussed
- Future work suggested
- Take-home messages

**Assess:**
- Are interpretations justified?
- Are limitations honestly addressed?
- Are broader claims supported?

## Technical Detail Extraction

### For Methods Papers

**Capture:**
- Algorithm pseudocode or description
- Computational complexity
- Key equations and formulations
- Implementation strategies
- Performance characteristics

### For Theory Papers

**Capture:**
- Main theorems and proofs structure
- Assumptions and their necessity
- Formal definitions
- Theoretical guarantees
- Connections to prior work

### For Application Papers

**Capture:**
- Domain context and requirements
- Data characteristics
- Specific challenges addressed
- Real-world constraints
- Practical validation

### For Systems Papers

**Capture:**
- Problem model, system model, and target environment
- Architecture, components, and critical data/control paths
- Design goals and the trade-offs chosen to achieve them
- Concurrency, consistency, fault tolerance, or scheduling assumptions
- Evaluation methodology, workloads, baselines, and hardware setup
- Throughput, median latency, tail latency, scalability, and resource cost
- Failure modes, bottlenecks, operational complexity, and deployment constraints

### For Review Papers

**Capture:**
- Taxonomy or classification used
- Coverage scope
- Trends identified
- Gaps in literature
- Research directions suggested

## Related Work Contextualization

### Positioning

**Identify:**
- Key related papers cited
- How this work differs
- What gaps it fills
- Which results it extends
- Where it fits in research trajectory

**Assess:**
- Is related work coverage adequate?
- Are comparisons fair?
- Are important works cited?
- Is novelty clearly established?

## Output Format Template

```markdown
# Paper Summary: [Title]

**Authors**: [All authors]
**Year**: [Year]
**Venue**: [Journal/Conference]
**DOI/URL**: [Link]

## Overview
[2-3 paragraph synthesis]

## Highlights
- [Finding 1]
- [Finding 2]
- [Finding 3]

## Recommended To Read Directly
- [Section/Figure/Table]: [Why the original wording or visual is worth reading]
- [Section/Figure/Table]: [What nuance is easy to lose in a summary]

## Strengths
- [Strength 1]
- [Strength 2]

## Weaknesses
- [Limitation 1]
- [Concern 2]

## Why It Works
[Explain the mechanism that makes the idea effective, what evidence supports it, and where that explanation is weak or incomplete]

## Detailed Summary

### Introduction
[Problem, gap, contributions]

### Methods
[Approach, algorithms, assumptions]

### Results
[Findings, metrics, comparisons]

### Discussion
[Interpretation, implications]

## Technical Details
[Implementation specifics, equations, parameters]

## Related Work Context
[How this fits in the literature]

## Potential Applications
[Practical uses]

## Reproducibility Notes
[Code, data, reproducibility assessment]
```

## Special Considerations by Field

### Machine Learning/AI

- Architecture details and hyperparameters
- Training procedures and convergence
- Dataset characteristics and splits
- Ablation studies
- Computational requirements
- Generalization evidence

### Computer Systems

- Workload model and target deployment environment
- System architecture and critical execution path
- Correctness assumptions, consistency model, or failure model
- Throughput, latency, tail latency, scalability, and efficiency metrics
- Hardware and cluster configuration
- Baseline selection and benchmark fairness
- Bottlenecks, operational complexity, and maintainability trade-offs
- External validity: whether results are likely to hold in production

### Statistics/Biostatistics

- Model specification and assumptions
- Prior choices and justification
- Identifiability and inference
- Sensitivity analyses
- Missing data handling
- Validation approach

### Epidemiology/Public Health

- Study design and population
- Exposure and outcome definitions
- Confounding adjustment
- Causal interpretation
- Generalizability
- Public health implications

### Computational Biology

- Biological context and motivation
- Data sources and preprocessing
- Validation with known biology
- Biological interpretation
- Reproducibility with data/code

## When to Use This Skill

Apply this analysis approach when:
- Reading papers for literature review
- Evaluating methods for adoption
- Assessing novelty for research direction
- Extracting technical details for implementation
- Identifying which parts of a paper should be read in the original text
- Explaining why an idea works instead of only restating results
- Preparing paper summaries for team
- Reviewing papers for journal/conference
- Building bibliography with annotations

Extract insights efficiently whilst maintaining critical assessment.
Provide researchers with actionable understanding of papers' contributions and relevance.
