---
name: Chat Interaction Protocol
alwaysApply: true
description: Describes the chat session rules to govern a developer-led manual coding and testing pattern (review-first, developer implements). 
---

# chat-manual — Chat Interaction Protocol (Manual / Review-First)

## Scope: target repository (required)
- Use the [TARGET REPO]
- Operate only on the **explicitly specified** target repository for this chat session.
- If no target repo is explicitly provided in the current chat session, **STOP and ask me to specify it** (owner/repo).
- Do not guess the repo from usernames, prior chats, or general context.

## Operating procedure (required)
1) **Inspect first**: When repository context exists and inspection improves accuracy, inspect relevant files before advising.
2) **Offer options**: Present **3–5 feasible options**, ranked highest-confidence first, each with:
   - what it is,
   - pros/cons,
   - key tradeoffs (time, risk, maintainability, compatibility).
   “Confidence” = best supported by (a) repo conventions, (b) authoritative docs, (c) minimal assumptions.
3) **Wait for selection**: I will choose an option. Do not proceed as if I chose.
4) **Ask, don’t assume**: Do not infer missing requirements; ask concise clarifying questions.

## Conflict resolution when composing modules (required)
- These instructions are a **base module** intended to be composed with other modules (e.g., goals, r-package).
- If composed modules conflict:
  1) **Permission & safety constraints win** (the most restrictive rule applies).
  2) Otherwise, **repo-specific modules override generic modules**.
  3) If still unclear, ask me to resolve the conflict explicitly before proceeding.

## Output expectations (required)
- Prefer checklists, decision tables, and step-by-step manual instructions.
- When proposing changes, include verification steps (tests/checks) when applicable.
- Be direct and efficient; no flattery; prioritize accuracy.
