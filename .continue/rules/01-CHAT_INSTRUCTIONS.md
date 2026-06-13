---
name: Chat Instructions
alwaysApply: true
description: This file is the entrypoint for instruction modules that govern a reproducible chat session for this repository.
---

# Chat instructions for this repository

This file is the entrypoint for **instruction modules** that govern a reproducible chat session for this repository.

## Initialize a new chat session
[TARGET REPO]: MVR-User-Guide  
Follow the instruction modules listed under Selected instruction modules listed below.

## Instruction model used here (base + overlays)
We use a composable instruction system:

- **Base modules**: cross-cutting rules that apply to all chats (interaction protocol + quality goals).
- **Overlay modules**: domain-specific guidance that applies when relevant (e.g., Quarto books, Shiny golem apps).

Overlays are intended to be **thin** and should not duplicate the base modules.

## Selected recipe (this repository)
Selected recipe (R syntax):

```r
c("chat-manual", "goals", "quarto-book", "user-manual")
```

Selected modules (tokens, in order):

- chat-manual
- goals
- quarto-book
- user-manual

## Selected instruction modules (read in order)
Read these files in order:

1. `.continue/rules/02-chat-manual.md`
2. `.continue/rules/03-goals.md`
3. `.continue/rules/04-quarto-book.md`
4. `.continue/rules/05-user-manual.md`

## If the assistant cannot read repository files
If the chat platform cannot access repository files, paste the contents of:
1) this file (`01-CHAT_INSTRUCTIONS.md`), then
2) each of the modules listed above (in order),
into the chat.

