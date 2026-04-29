# MVR-User-Guide

## Purpose
The purpose of this guide is to coordinate the data science efforts of the Rock Island District of the U.S. Army Corps of Engineers. We have established these best practice guidelines to streamline onboarding of new data scientists, promote consistency across projects, and ensure the quality and reproducibility of our work. This discipline is rapidly evolving and there are many new approaches that exist to solve any problem. This guide will not explain data science methods; the Internet is full of content that accomplishes that goal. This guide only documents the framework **we have chosen** to remove common pain-points that typically hinder data scientists from rapidly implementing their analyses. 

## Audience
This guide targets USACE geospatial data scientists. 

## Sections
This guide contains several broad sections describing a range of technologies commonly used in data science. 

### Git Repositories ("repos")
Git repos are where we keep and share our code, docs, and templates, with a clear history of what changed and why. They’re the backbone for collaboration (branching/PRs), traceability (commit history), and trust (things like GPG commit signing).

### R Projects
R projects are how we keep an analysis “self-contained” so it can be opened and run reliably by someone else (or by you six months later). This section focuses on the practical tooling we actually use—RStudio/Positron setup, Oracle connectivity, deploying Shiny, and administering Posit Cloud.

### Containers
Containers are lightweight, repeatable computing environments—great when you need the same toolchain everywhere without fighting dependencies. Here we focus on Podman as a practical way to package and run data science tooling in a consistent, reviewable way.

### AI Workflows
AI can speed up drafting, coding, and analysis—but only if we use it in a controlled way. This section covers a workflow mindset: protect sensitive data, document what the tool did, and make outputs reviewable and reproducible (not magic).

### Data Governance
Data governance is how we keep data usable and defensible: lineage, quality checks, access controls, and “where did this number come from?” documentation. Our focus here is on practical governance workflows, including dbt as a way to formalize transformations and testing.

### Unstructured Data
Tooling for pre-processing unstructured data to massage it into a format that is readily available to RAG systems. 

### Bibliography
If we’re going to standardize how we work, we need to standardize what we cite. This section covers how we manage sources (Zotero) so methods, decisions, and claims in our work are easy for reviewers to trace back to authoritative references.

### Foundry Workflows
Palantir Foundry (Army Vantage) workflows describe how to build, run, and operationalize pipelines and analytics inside the Army’s enterprise platform. Standard workflows matter because they make lineage, permissions, inputs/outputs, and review steps explicit—so results are easier to trust and easier to QA/QC.
