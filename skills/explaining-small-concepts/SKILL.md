---
name: explaining-small-concepts
description: Use when the user wants a teaching-style explanation of one narrow concept, one local mechanism, one term, or one specific principle; best for questions that can be answered by deeply explaining a single idea rather than designing a broad learning path or covering many topics at once.
---

# Explaining Small Concepts

Teach one small thing well.

Use this skill when the user is asking about a single concept and would benefit from a careful, step-by-step explanation instead of a survey of a whole field.

Common signals:
- "What is a closure?"
- "Why does TCP need a three-way handshake?"
- "What does idempotent mean?"
- "What is normalization in databases?"
- "Why does `await` not block the whole program?"

Do not use this skill when the real task is a large roadmap, a study plan, or a many-topic course.

## Goal

Help the user understand one specific concept deeply enough that they can:
- say what it is in plain language
- recognize why it exists
- explain how it works in a few steps
- avoid the most common misunderstandings
- apply it in a simple example

The explanation should feel like tutoring, not like a glossary entry.

## Teaching Standard

When this skill triggers:
- start with intuition, then sharpen into precision
- adapt depth to the user's apparent background
- stay focused on the local concept unless the user explicitly asks to broaden the scope
- prefer concrete explanation over abstract jargon

If the concept is often confused with something nearby, make the distinction explicit.

## Required Output Structure

Use this structure unless the conversation context requires a very small adjustment:

### 用途
Explain what problem the concept solves, what it is used for, or why it exists.

### 直觉类比
Give one intuitive analogy or mental model.

If an analogy would be misleading, say that briefly and use a simpler intuition instead.

### 正式定义
Give the most precise definition that is appropriate for the user's level.

If there is no universally formal definition, give the best working definition and say so.

### 核心原理拆解
Break the idea into a few causal steps or sub-points.

Focus on:
- what causes what
- why the mechanism works
- what the essential moving parts are

### 例子
Give 2-3 examples.

At least one example should be as small and concrete as possible.

### 常见误区
List the misunderstandings, overgeneralizations, or nearby confusions people often have.

### 自测题
Give a few short questions so the user can check whether they really understand the concept.

### 一句话总结
End with a compact summary the user could remember later.

## Programming Concept Rules

If the concept is about programming, code, systems, or tooling, also require:
- at least 1 minimal runnable example
- at least 1 short code exercise

The runnable example should be small enough to read in one glance and focused on only the target concept.

The code exercise should test the concept directly, not unrelated syntax trivia.

Good pattern:
- show a small runnable snippet
- say what to notice in one sentence
- add one short exercise such as "what does this print?" or "fill in the missing line"

## Explanation Style

Do:
- define unfamiliar terms before building on them
- prefer one clean mental model over several partial ones
- use short paragraphs and crisp bullets when useful
- correct slightly inaccurate wording gently while still answering the intended question

Do not:
- hide important nuance when simplification would become false
- turn a narrow concept question into a mini-course
- spend time on history unless it directly helps understanding

## Boundary Rule

Do not trigger this skill for prompts like:
- "Teach me operating systems from scratch"
- "Make me a study plan for machine learning"
- "Explain frontend, backend, database, and deployment together"
- "I want a complete roadmap"

Those need a broader teaching or curriculum-building skill.

If the user's request sits on the boundary:
- answer only the local concept if one is clearly dominant
- otherwise ask whether they want a focused explanation or a chaptered learning path

## Success Criteria

A strong answer produced with this skill should let the user feel:
- "I know what this is."
- "I know why it exists."
- "I can explain how it works."
- "I know the usual confusion points."
- "I can solve a tiny exercise about it."

The goal is not maximum breadth.

The goal is durable understanding of one small idea.
