# The Junior BA's Practical Guide

A comprehensive, hands-on training book for junior Business Analysts (0-2 years experience).

## Project Overview

This book provides practical, project-based learning through:

- **48 Chapters** organized into 12 parts
- **30-week learning path** with progressive complexity
- **Real-world examples** from actual business scenarios
- **Hands-on exercises** with clear success criteria
- **3 Capstone projects** demonstrating mastery

**Target Audience:** Junior Business Analysts, career changers, and anyone new to BA work

## Repository Structure

```
ba-books/
├── book/                       # AsciiDoc source files
│   ├── main.adoc              # Main book file
│   ├── part-01/ ... part-12/  # Part introduction files
│   ├── chapters/              # Individual chapter files (48 total)
│   ├── appendices/            # Reference materials
│   ├── images/                # Diagrams and visual aids
│   └── examples/              # Sample artifacts
├── output/                     # Generated book files (HTML, PDF, EPUB)
├── book_structure.md          # Complete book outline
├── implementation_guide.md    # Writing guidelines
├── CLAUDE.md                  # AI assistant guidance
└── Makefile                   # Build automation
```

## Building the Book

### Prerequisites

Install Ruby and the required gems:

```bash
gem install asciidoctor asciidoctor-diagram asciidoctor-pdf asciidoctor-epub3
```

For Mermaid diagram support, you'll also need:

```bash
# Install Node.js and Mermaid CLI
npm install -g @mermaid-js/mermaid-cli
```

### Build Commands

```bash
# Build HTML and PDF versions
make all

# Build HTML only
make html

# Build PDF only
make pdf

# Build EPUB version
make epub

# Quick HTML build (no diagram processing)
make quick

# Watch for changes and auto-rebuild
make watch

# Clean generated files
make clean

# Validate AsciiDoc syntax
make validate

# Show all available commands
make help
```

### Output

Generated files appear in the `output/` directory:

- `junior-ba-guide.html` - HTML version
- `junior-ba-guide.pdf` - PDF version
- `junior-ba-guide.epub` - EPUB version

## Writing Guidelines

### Chapter Structure

Each chapter follows a consistent template:

1. **At a Glance** - Time, difficulty, learning outcomes
2. **Why This Matters** - Real-world relevance
3. **The Challenge** - Common problems junior BAs face
4. **Core Concepts** - Plain language explanations
5. **Step-by-Step Guide** - Actionable instructions
6. **Real Example** - Extended realistic scenario (5-10 paragraphs)
7. **Common Pitfalls** - What to avoid and how to recover
8. **Practical Exercise** - Hands-on practice
9. **Self-Check** - Verification questions
10. **Pro Tips / Real Talk** - Insider advice
11. **Key Takeaways** - Summary bullets
12. **Quick Reference Card** - One-page printable summary

### Content Standards

- **Voice:** Conversational, mentoring tone
- **Examples:** Realistic with specific details (names, numbers, dialogue)
- **Balance:** 30% theory, 70% practice
- **Complexity:** Progressive from basic (Ch 1-15) to advanced (Ch 36-48)

See `implementation_guide.md` for complete writing guidelines.

## AsciiDoc Format

### Why AsciiDoc?

- Better support for complex book structures
- Native multi-file includes
- Superior table and list formatting
- Mermaid diagram integration
- Professional PDF/HTML/EPUB output

### Common Patterns

**Headings:**
```asciidoc
= Document Title (Level 0)
== Chapter (Level 1)
=== Section (Level 2)
==== Subsection (Level 3)
```

**Admonitions:**
```asciidoc
[TIP]
====
Pro tip content here
====

[WARNING]
====
Watch out for this!
====
```

**Mermaid Diagrams:**
```asciidoc
[mermaid]
....
graph TD
    A[Start] --> B[End]
....
```

**Tables:**
```asciidoc
|===
|Header 1 |Header 2

|Cell 1
|Cell 2
|===
```

## Project Status

**Current Status:** Initial structure created

- ✅ Repository structure
- ✅ Build system configured
- ✅ Sample Chapter 1 completed
- ✅ Part 1 introduction created
- ⏳ Remaining 47 chapters (in progress)
- ⏳ Appendices (planned)

## Book Contents

### Part 1: Welcome to Business Analysis (Weeks 1-2)
- Chapter 1: What Business Analysis Really Means ✅
- Chapter 2: The BA Mindset - Thinking Like a Problem Solver
- Chapter 3: Your First Project - A Complete Walkthrough
- Chapter 4: Essential BA Vocabulary

### Part 2: Stakeholder Engagement Fundamentals (Weeks 3-4)
- Chapters 5-8: Stakeholder understanding, meetings, facilitation, listening

### Part 3: Elicitation Essentials (Weeks 5-7)
- Chapters 9-12: Questions, interviews, workshops, observation

### Part 4: Requirements Fundamentals (Weeks 8-10)
- Chapters 13-16: Requirement quality, functional, non-functional, user stories

### Part 5: Documenting Your Work (Weeks 11-12)
- Chapters 17-20: Formats, BRD, diagrams, writing clarity

### Part 6: Essential BA Techniques (Weeks 13-16)
- Chapters 21-25: Brainstorming, process modeling, data modeling, use cases, testing

### Part 7: Requirements Management (Weeks 17-18)
- Chapters 26-29: Tracking, prioritization, scope, traceability

### Part 8: Working with Solutions (Weeks 19-20)
- Chapters 30-33: Design, vendor evaluation, business rules, prototyping

### Part 9: Validation and Verification (Weeks 21-22)
- Chapters 34-36: Reviews, validation, UAT support

### Part 10: BA in Different Contexts (Weeks 23-25)
- Chapters 37-40: Agile, Waterfall, process improvement, data/analytics

### Part 11: Professional Skills (Weeks 26-28)
- Chapters 41-44: Influence, difficult stakeholders, presenting, time management

### Part 12: Launching Your Career (Weeks 29-30)
- Chapters 45-48: Toolkit, portfolio, career paths, first 90 days

## Contributing

This book project follows strict quality standards. See `CLAUDE.md` and `implementation_guide.md` for detailed guidance.

## License

See `LICENSE` file for details.

## Author

[Your Name]

## Alignment

This book aligns with BABOK v3 (Business Analysis Body of Knowledge) while maintaining a practical, accessible approach for beginners.
