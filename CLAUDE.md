# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a book writing project for **"The Junior BA's Practical Guide"** - a comprehensive, hands-on training book for junior Business Analysts (0-2 years experience). The book consists of 12 parts, 48 chapters, designed to be completed over 30 weeks with a project-based, practical approach.

**Target Format**: Each chapter includes Theory + Real Examples + Hands-on Exercises + Self-Check

## Repository Structure

- `book_structure.md` - Complete book outline with all 48 chapters, learning objectives, exercises, and capstone projects
- `implementation_guide.md` - Detailed writing guidelines, chapter templates, and quality standards
- `BABOK_Guide_v3_Member.pdf` - Reference material for BABOK v3 alignment
- `LICENSE` - Project license
- `book/` - AsciiDoc source files for the book
  - `main.adoc` - Main book file that includes all chapters
  - `part-*/` - Directories for each of the 12 parts
  - `chapters/` - Individual chapter files (chapter-XX.adoc)
  - `appendices/` - Appendix files
  - `images/` - Diagrams, screenshots, and visual aids
  - `examples/` - Code samples and artifacts

## Format and Tooling

**Document Format:** AsciiDoc (.adoc files)

AsciiDoc is used instead of Markdown for:
- Better support for complex book structures
- Native support for includes and multi-file projects
- Superior table and list formatting
- Integration with Mermaid diagrams
- Professional PDF/HTML/EPUB output via Asciidoctor

**Mermaid Diagram Support:**

Mermaid diagrams are embedded in AsciiDoc using the asciidoctor-diagram extension:

```asciidoc
[mermaid]
....
graph TD
    A[Start] --> B{Decision}
    B -->|Yes| C[Action 1]
    B -->|No| D[Action 2]
....
```

Common diagram types to use:
- **Flowcharts** - Process flows, decision trees
- **Sequence diagrams** - Stakeholder interactions, meeting flows
- **Entity relationship diagrams** - Data models
- **Gantt charts** - Project timelines (for examples)
- **State diagrams** - System states, workflow states

**Building the Book:**

```bash
# Install asciidoctor (if not already installed)
gem install asciidoctor asciidoctor-diagram asciidoctor-pdf

# Generate HTML
asciidoctor -r asciidoctor-diagram book/main.adoc -o output/book.html

# Generate PDF
asciidoctor-pdf -r asciidoctor-diagram book/main.adoc -o output/book.pdf

# Generate EPUB (requires asciidoctor-epub3)
asciidoctor-epub3 book/main.adoc -o output/book.epub
```

## AsciiDoc Formatting Guidelines

### Document Structure

Each chapter file should start with:
```asciidoc
= Chapter Title
:chapter-number: XX
:icons: font
:toc:

[.chapter-intro]
--
Brief chapter introduction goes here.
--
```

### Common AsciiDoc Patterns

**Sections:**
```asciidoc
== Level 2 Heading
=== Level 3 Heading
==== Level 4 Heading
```

**Admonitions (for Pro Tips, Real Talk, Watch Out):**
```asciidoc
[TIP]
.Pro Tip: Stakeholder Mapping
====
Always identify the decision-maker early. They may not be the loudest voice in the room.
====

[WARNING]
.Watch Out!
====
Don't schedule requirements workshops on Monday mornings or Friday afternoons.
====

[NOTE]
.Real Talk
====
Sometimes stakeholders won't read your documentation. Plan for that reality.
====
```

**Examples and Scenarios:**
```asciidoc
.Example: The Dashboard That Nobody Used
====
During the weekly project meeting, Sarah (Product Owner) mentioned...
====
```

**Tables:**
```asciidoc
.Stakeholder Analysis Matrix
|===
|Stakeholder |Power |Interest |Strategy

|CEO
|High
|Low
|Keep Satisfied

|Operations Manager
|Medium
|High
|Manage Closely
|===
```

**Cross-references:**
```asciidoc
See <<requirement-quality>> for more details.

[[requirement-quality]]
== What Makes a Good Requirement?
```

## Content Development Approach

### Chapter Template Structure

Every chapter follows this consistent format (see implementation_guide.md for full template):

1. **At a Glance** - Time, difficulty, learning outcomes
2. **Why This Matters** - Real-world relevance with anecdotes
3. **The Challenge** - Typical problems junior BAs face
4. **Core Concepts** - Plain language explanations with visual aids
5. **Step-by-Step Guide** - Concrete, actionable instructions
6. **Real Example** - Extended realistic scenario (5-10 paragraphs minimum)
7. **Common Pitfalls** - What to avoid and how to recover
8. **Practical Exercise** - Hands-on practice with clear success criteria
9. **Self-Check** - Knowledge, application, and reflection questions
10. **Pro Tips / Real Talk / Tool Spotlight** - Insider advice and honest guidance
11. **Key Takeaways** - Summary bullets
12. **Quick Reference Card** - One-page printable summary

### Writing Quality Standards

**Voice and Tone:**
- Conversational - write like mentoring over coffee
- Use "you" and "your" throughout
- Active voice, present tense for instructions
- Short sentences (15-20 words average)
- Short paragraphs (3-4 sentences maximum)
- Encouraging but honest about challenges

**Example Quality Requirements:**
Every example MUST be:
1. **Realistic** - Based on actual business scenarios with specific names, numbers, details
2. **Complete** - Show entire process, not fragments
3. **Instructive** - Include both good and bad approaches
4. **Detailed** - Real dialogue, thought processes, specific decisions

**BAD Example:**
> "The stakeholder wanted a new feature. The BA asked questions and documented the requirement."

**GOOD Example:**
> "During the weekly project meeting, Sarah (Product Owner) mentioned, 'Our call center is getting complaints that customers can't track their orders without calling us.' Instead of immediately writing a requirement, Alex (the BA) asked, 'How many calls are you getting about this?' Sarah checked her notes: 'About 50 per day, taking 3-5 minutes each.'..."

### Scenario Development

**Industry Coverage:**
Create examples across multiple industries: Retail/E-commerce, Healthcare, Financial Services, Education, Manufacturing, Technology SaaS, Government, Telecommunications

**Complexity Levels:**
- **Level 1 (Weeks 1-10):** Single stakeholder, clear problem, limited scope
- **Level 2 (Weeks 11-20):** Multiple stakeholders, some ambiguity, medium scope
- **Level 3 (Weeks 21-30):** Many stakeholders, complex problems, enterprise scope

### Dialogue Writing

Make conversations realistic with actual stakeholder types:
- The Executive (big picture, time-pressed)
- The Subject Matter Expert (detailed, technical)
- The End User (practical, skeptical)
- The Developer (solution-focused)
- The Project Manager (timeline-focused)

Avoid formal, stilted dialogue. Use natural speech patterns.

### Required Artifacts

When creating chapters, include realistic versions of:

**Documents:** BRDs, functional specifications, user stories with acceptance criteria, use cases, meeting minutes, interview guides, stakeholder analysis, traceability matrices

**Diagrams:** Process flows (as-is and to-be), system context diagrams, use case diagrams, ERDs, stakeholder maps, data flow diagrams, wireframes/mockups

**Communications:** Meeting invitations, follow-up emails, requirement clarification requests, status reports, presentation slides

## Progressive Complexity

**Tone Adjustments:**

- **Early Chapters (1-15):** More encouraging, slower pace, more explanation, simpler examples, hand-holding okay
- **Middle Chapters (16-35):** Challenging but supportive, faster pace, less explanation, complex examples, expect more independence
- **Later Chapters (36-48):** Peer-level tone, professional pace, minimal explanation, sophisticated examples, trust their judgment

## Content Balance

- **30% Theory/Concepts** - Explain the "what" and "why"
- **70% Practice/Application** - Show the "how" with extensive examples

## BABOK Alignment

The book maps to BABOK v3 knowledge areas:
- Stakeholder Engagement: Chapters 5-8, 41-42
- Elicitation and Collaboration: Chapters 9-12
- Requirements Analysis and Design Definition: Chapters 13-20
- Requirements Life Cycle Management: Chapters 26-29
- Solution Evaluation: Chapters 30-33
- Techniques: Chapters 21-25
- Perspectives: Chapters 37-40

Reference BABOK_Guide_v3_Member.pdf when needed for alignment.

## Quality Checklist

Before considering any chapter complete, verify:

- [ ] All concepts clearly explained in plain language
- [ ] Examples are realistic with specific details (names, numbers, dialogue)
- [ ] Exercises are complete with clear success criteria
- [ ] Common pitfalls identified with remediation strategies
- [ ] Follows chapter template structure exactly
- [ ] Conversational, encouraging tone throughout
- [ ] Immediately applicable to real BA work
- [ ] BABOK references cited where applicable
- [ ] Key takeaways summarize learning effectively

## Key Principles

1. **Reality Over Perfection** - Show messy real situations, acknowledge constraints, include workarounds
2. **Actionable Content** - Every chapter should leave readers thinking "I could do this tomorrow"
3. **Progressive Mastery** - Early: "Here's how to do X" → Middle: "Here's when to use X vs. Y" → Later: "Here's how to adapt X to situation Z"
4. **Avoid Generic Content** - No "Company X" scenarios, use realistic business contexts
5. **Respect Intelligence** - Explain without condescending, assume smart readers learning a new skill

## What NOT to Include

- Generic development practices already obvious to professionals
- Obvious instructions like "Provide helpful error messages" or "Write unit tests"
- Lists of every file that can be easily discovered
- Time estimates for tasks or chapters
- Excessive praise or superlatives
- Emojis (except in Pro Tips sections where appropriate)

## Extended Example Format

Real examples should follow this narrative structure:
1. **The Situation** - Context and background
2. **What Actually Happened** - The story with dialogue and decisions
3. **The Analysis Phase** - How the BA approached it
4. **The Key Insight** - What was learned
5. **The Outcome** - Results and impact
6. **Your Turn to Analyze** - Questions for readers
7. **The Lessons** - 3-5 specific takeaways
8. **What This Means for You** - Application to junior BAs

See implementation_guide.md lines 729-854 for the complete "Dashboard That Nobody Used" example as a model.
