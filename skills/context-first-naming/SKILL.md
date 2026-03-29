---
name: context-first-naming
description: Use when writing code or naming any code-related artifact, including variables, functions, fields, types, modules, files, directories, database columns, and API names. Use when the user wants concise naming, renaming, naming cleanup, or consistent names that follow language conventions first, project rules second, and avoid repeating context already provided by scope or structure.
---

# Context First Naming

## Overview

Prefer names that are just long enough to remove ambiguity in their local context.

Follow language conventions first, then project-specific rules such as `AGENTS.md`, and only then apply personal style preferences.

## Core Philosophy

The name only needs to uniquely remove ambiguity where it appears.

Do not repeat context that is already obvious from:
- the module path
- the type
- the file or directory
- the table or API namespace
- the surrounding function or struct

If the context already tells the reader what family of thing this is, the name should focus only on the remaining distinction.

## Priority Order

When deciding between candidate names, use this order:

1. Language and ecosystem conventions
2. Project-local conventions such as `AGENTS.md`, style guides, schema conventions, or existing codebase patterns
3. Context-first brevity and common abbreviations

Do not force this skill against explicit language or project rules.

## Scope

Apply this skill to all code-related naming:
- variables
- parameters
- functions and methods
- types, traits, interfaces, enums, and variants
- fields and properties
- modules, packages, files, and directories
- database tables and columns
- API names, request fields, response fields, event names, and message names

This skill should be consulted whenever writing code, not only when the user explicitly asks for naming help.

## Naming Rules

### 1. Remove Repeated Context

Prefer the shortest name that is still clear in place.

Good:
- `encoder::a::Encoder`
- `encoder::b::Encoder`
- `status`
- `build_facts`
- `day_checks`

Avoid:
- `AEncoder`
- `BEncoder`
- `confirmation_status`
- `build_dca_facts_for_batch`
- `get_dca_day_checks`

If the path, owner, or schema already carries the prefix, drop it from the local name.

### 2. Use Familiar Abbreviations

Prefer common, boring abbreviations that most developers already recognize.

Good examples:
- `len`
- `gen`
- `ctx`
- `cfg`
- `req`
- `resp`
- `msg`
- `buf`
- `tx`
- `rx`

Avoid clever or team-private abbreviations unless they are already established in the codebase.

Bad examples:
- `lngth`
- `gnrtr`
- `cnfrmStat`

### 3. Do Not Overdescribe

Names should describe the semantic operation or distinction, not the entire story behind it.

Good:
- `build_facts`
- `tag_dca`
- `status`

Avoid:
- `build_dca_facts_for_batch`
- `update_dca_plan_key_bulk`
- `confirmation_status`

Do not encode:
- implementation details
- historical naming residue
- transport or storage medium when already known
- scope qualifiers already provided by the current context

### 4. Prefer Native Language Idioms

Match the naming habits of the language.

In Rust, prefer:
- `items()` and `items_mut()` over `get_items()`
- nouns for accessors when they return a view or reference
- verb phrases for actions with side effects

In other languages, follow that ecosystem's idioms first. If the framework or team strongly prefers `get_xxx`, obey that rule instead of this skill.

### 5. Let Structure Carry Meaning

Use modules, files, schemas, and namespaces to carry categorization.

If a module is already named `encoder::a`, the type inside can often just be `Encoder`.

If a table is already `confirmations`, the column can often just be `status` instead of `confirmation_status`.

If an API path is already `/plans/dca`, an operation name may be `tag` or `tag_plan`, not `update_dca_plan_key_bulk`.

### 6. Name By Domain Meaning, Not Mechanism

A good name tells the reader what role the thing plays in the domain.

Prefer:
- `status`
- `plan`
- `facts`
- `checks`
- `tag_dca`

Avoid names that center on plumbing:
- `info`
- `data`
- `handler`
- `manager`
- `processor`

Prefer a domain verb over a generic mechanism verb when the business action is known.

Good:
- `tag_dca`
- `confirm`
- `archive`

Avoid:
- `update_plan_keys`
- `set_confirmation_state`
- `process_archive_request`

Use generic container names only when the abstraction really is generic.

### 7. Keep Boolean Names Testable

Prefer names that read naturally in conditions.

Good:
- `enabled`
- `is_ready`
- `has_error`
- `done`

Avoid:
- `enable_flag`
- `ready_status`
- `error_state_flag`

### 8. Keep Collections And Singles Distinct

Use singular names for one item and plural names for collections.

Good:
- `fact` / `facts`
- `check` / `checks`
- `plan` / `plans`

Do not hide plurality in vague names like `fact_data` or `plan_list_data`.

## Decision Procedure

When naming something, use this checklist:

1. What context already names this thing's family or scope?
2. What is the smallest remaining distinction the name must express?
3. Is there a language-idiomatic or ecosystem-idiomatic name for this pattern?
4. Can I remove prefixes, suffixes, or words without losing clarity here?
5. Is the abbreviation common enough that most readers will recognize it?

If two names are both correct, prefer the shorter one.

## Rust-First Examples

### Types And Modules

Good:
```rust
mod encoder {
    pub mod a {
        pub struct Encoder;
    }

    pub mod b {
        pub struct Encoder;
    }
}
```

Avoid:
```rust
mod encoder {
    pub struct AEncoder;
    pub struct BEncoder;
}
```

### Accessors

Good:
```rust
impl State {
    pub fn items(&self) -> &[Item] {
        &self.items
    }

    pub fn items_mut(&mut self) -> &mut Vec<Item> {
        &mut self.items
    }
}
```

Avoid:
```rust
impl State {
    pub fn get_items(&self) -> &[Item] {
        &self.items
    }

    pub fn get_mut_items(&mut self) -> &mut Vec<Item> {
        &mut self.items
    }
}
```

### Renaming Examples

Prefer:
- `length -> len`
- `generator -> gen`
- `confirmation_status -> status`
- `build_dca_facts_for_batch -> build_facts`
- `get_dca_day_checks -> day_checks`
- `update_dca_plan_key_bulk -> tag_dca`

## Cross-Layer Examples

Prefer:
- file `encoder/a.rs` over `a_encoder.rs`
- directory `checks/` over `dca_day_checks/` when the parent context already implies DCA and day scope
- database column `status` in table `confirmations`
- API field `status` inside `confirmation`
- interface `Encoder` inside module `encoder::a`

## Python Example

When type annotations and local function context already provide the domain, shorten parameter names to the smallest remaining distinction.

Prefer:

```python
def foo(repo: TradeRepo, code: str, day: date):
    ...
```

Over:

```python
def foo(trade_repo: TradeRepo, fund_code: str, trade_date: date):
    ...
```

Why:
- `TradeRepo` already carries `trade`, so `repo` is enough
- the surrounding function context can already imply `fund`, so `code` is enough
- `trade` is already known, and `day` avoids overdescribing while staying clearer than reusing the type name `date`

## Anti-Patterns

Avoid these unless the language or project requires them:
- redundant prefixes like `dca_`, `confirmation_`, `encoder_`, `batch_` in a scope that already implies them
- filler suffixes like `_data`, `_info`, `_manager`, `_handler`, `_processor`
- names that mirror the whole call chain or SQL operation
- abbreviations that only make sense to the original author

## Output Standard

When this skill is used to propose names:
- explain which context made the shorter name safe
- mention any language or project rule that overrode brevity
- if multiple names remain reasonable, offer 2-3 concise options and recommend one

Default posture:
- shorten aggressively
- preserve clarity
- trust the surrounding context
