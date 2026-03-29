---
name: teaching-large-topics
description: Use when the user asks to learn a broad, multi-layer topic through a structured roadmap or systematic study path rather than a narrow point answer, such as learning a language, framework, platform, or domain from foundations toward real practice.
---

# Teaching Large Topics

Teach broad topics as a guided curriculum instead of a one-shot explanation.

Use this skill when the user wants a structured learning path for a language, framework, platform, field, or large technical domain.

Common signals:
- "How do I learn Haskell?"
- "Teach me Kubernetes systematically"
- "Give me a roadmap to learn distributed systems"
- "I want to study Rust from beginner to advanced"
- "Help me understand machine learning step by step"

Do not use this skill for:
- a single concept or term
- a narrow debugging question
- a short comparison between two tools
- a one-off factual answer
- a small skill that can be taught well in one compact response

## Default Teaching Assumptions

Unless the user gives stronger constraints:
- teach from basics to advanced
- optimize for the most important 20% before chasing completeness
- prefer conceptual clarity before internals and edge cases
- use concrete examples early
- keep each chapter self-contained but connected to earlier chapters
- avoid dumping the whole field at once

## Required Flow

### 1. Build the learning map first

Do not jump straight into detailed teaching.

Start with a chapter-level learning map that includes:
- chapter number and title
- why the chapter matters
- prerequisite relationship to earlier chapters
- the main capability the learner should gain

If the topic is very large, group it into a few phases and still expose chapter order inside those phases.

### 2. Make the order explicit

Mark:
- where a beginner should start
- which chapters are core
- which chapters can be postponed
- where theory turns into practice

If the topic is huge, say so and narrow the first pass to the essential path.

### 3. Teach in chapter order

After presenting the map:
- begin with Chapter 1 by default
- or follow the user's requested chapter if they choose one
- or stop at the map only if the user asked for roadmap-only output

Do not expand every chapter in full unless the user explicitly wants a long-form course in one reply.

## Chapter Template

Every taught chapter must include all of the following sections.

### Current Chapter
State the chapter title and where it sits in the overall path.

### Learning Goals
State what the learner should understand or be able to do by the end of the chapter.

### Core Knowledge Points
Break the chapter into clear subtopics and explain each one separately.

Use plain language first, then add the precise terminology.

Show relationships between ideas, not just isolated definitions.

### Example
Include at least one concrete example.

Prefer examples that make the idea operational:
- worked reasoning example
- code example
- real-world scenario
- small case study
- comparison that reveals tradeoffs

### Common Pitfalls
List typical misunderstandings, wrong intuitions, or misuse patterns.

Explain why each pitfall happens and how to avoid it.

### Self-Check Questions
Include short questions that let the learner test whether the key ideas have landed.

Prefer questions that check reasoning, not memorization alone.

### What to Study Next
Connect this chapter to the next chapter or the next practice step.

## Programming Topic Rules

When the topic is programming-related, each taught chapter should include:
- at least 1 concrete code example
- at least 1 business-oriented coding task

The coding task should resemble real use of the language, framework, or library rather than a toy syntax drill.

Prefer tasks like:
- build an API endpoint for a product workflow
- implement authentication or authorization logic
- process files, queues, or events
- design a small data pipeline
- add an async workflow
- ship a UI feature with real interaction rules
- integrate a framework or library into a business flow

Avoid defaulting to:
- calculator
- syntax-only exercises
- isolated language trivia
- CRUD with no business context

## Business-Oriented Coding Task Format

For each programming chapter, specify:
- business goal
- scenario or product context
- required inputs and outputs, or operational constraints
- what the learner needs to implement
- evaluation points
- optional solution direction

Evaluation points should match the concepts taught in the chapter.

Optional solution direction may include:
- recommended decomposition
- module or API boundaries
- framework features worth using
- likely edge cases

Do not give a full solution by default.

Prefer this progression:
- present the task
- offer hints or a suggested approach
- let the user attempt it
- provide a full solution only if the user asks or gets stuck

For larger frameworks, the coding task can be moderately complex and should feel like a small business feature, not a toy demo.

## Depth Control

If the user does not ask for advanced depth:
- teach the essential mental models first
- postpone rare edge cases
- postpone performance tuning details
- postpone advanced internals until the learner has working intuition

If the user asks to go deeper:
- expand the current chapter before jumping ahead
- add tradeoffs, failure modes, and advanced examples
- connect implementation details back to the core model

## Response Style

Be teacherly, structured, and cumulative.

Do:
- explain why each chapter exists
- connect new material to prior chapters
- keep jargon introduced in context
- prefer progression over exhaustiveness
- explicitly say what can be skipped on a first pass

Do not:
- front-load every detail
- collapse the roadmap into an unstructured essay
- assume the learner wants the deepest possible coverage immediately
- substitute trivia for understanding

## Output Pattern

Use this shape when responding:
1. Learning Map
2. Current Chapter
3. Learning Goals
4. Core Knowledge Points
5. Example
6. Common Pitfalls
7. Self-Check Questions
8. Business-Oriented Coding Task
9. What to Study Next

Only include `Business-Oriented Coding Task` when the topic is programming-related or implementation-heavy.

## Boundary Rule

Use this skill when the user wants:
- learning path
- chapter order
- progressive scaffolding
- systematic study from foundations toward practice

If the request sits on the boundary, ask whether the user wants:
- a quick focused answer
- a chaptered learning path

## Success Criteria

A strong answer produced with this skill should make the learner feel:
- "I can see the whole path."
- "I know what to study next."
- "This chapter has a clear purpose."
- "I have a realistic practice task."
- "I am learning in the right order."
