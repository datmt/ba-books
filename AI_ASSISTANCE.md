# Using AI Assistance to Write This Book

How to effectively use Claude Code (or other AI assistants) to accelerate writing while maintaining quality.

## The AI-Assisted Writing Workflow

### Phase 1: Planning (WITH AI)

Start each chapter by having a conversation with Claude:

```
You: I'm writing Chapter 15 about Non-Functional Requirements.
According to book_structure.md, this chapter should cover:
- Common NFR categories (performance, security, usability)
- Quantifying qualitative needs
- Priority of NFRs
- Working with technical stakeholders on NFRs

Help me plan this chapter. What are the 3-5 core concepts I should cover?
What realistic examples would illustrate NFR failures?
```

**Claude provides:**
- Suggested core concepts breakdown
- Initial example ideas
- Exercise concepts
- Chapter outline

**You decide:**
- Which examples feel most realistic
- Which concepts to emphasize
- How to order the content

---

### Phase 2: Core Content Draft (WITH AI)

```
You: Based on our outline, write the "Core Concepts" section for
Chapter 15. Include:
1. Definition of NFRs in plain language
2. Common NFR categories with examples
3. How NFRs differ from functional requirements

Use the conversational tone from Chapter 1. Remember the audience
is junior BAs with 0-2 years experience.
```

**Claude provides:**
- Initial draft of core concepts
- Definitions in plain language
- Examples and comparisons

**You refine:**
- Add specific industry context
- Ensure tone matches Chapter 1
- Verify technical accuracy
- Add practical insights from your experience

---

### Phase 3: Extended Example (COLLABORATIVE)

This is the most important part. The extended example needs to be realistic, detailed, and instructive.

**Step 1: Scenario Setup**

```
You: Create a detailed scenario for Chapter 15 showing a junior BA
working on NFRs for a healthcare patient portal. The scenario should:
- Show the BA discovering missing NFRs through questioning
- Include dialogue between BA and technical lead
- Demonstrate consequences of vague NFRs
- Show how to quantify qualitative needs

Make it realistic with specific names, numbers, and context.
```

**Step 2: Review and Enhance**

Claude will provide a draft scenario. You then:
- Add realistic business context
- Refine dialogue to sound natural
- Add specific metrics and numbers
- Include BA's internal thought process
- Show both problems and solutions

**Step 3: Iterate**

```
You: Good start. Make these changes:
1. Add more specific dialogue where the tech lead pushes back on vague requirements
2. Include actual example NFRs (e.g., "Page load time < 2 seconds")
3. Show the BA using the "5 Whys" to understand performance needs
4. Add a section showing the impact when NFRs were missing on a previous project
```

Keep iterating until the example is realistic and instructive.

---

### Phase 4: Exercises (WITH AI)

```
You: Create 3 hands-on exercises for Chapter 15 on NFRs:

Exercise 1: Evaluation exercise - give students 10 requirements
(mix of good and bad NFRs) to evaluate

Exercise 2: Creation exercise - give a scenario and have them
write 5 NFRs with specific, measurable criteria

Exercise 3: Application exercise - scenario where they identify
missing NFRs and write them

Include clear success criteria for each.
```

**Claude provides:**
- Exercise scenarios and instructions
- Sample requirements to evaluate
- Success criteria

**You review:**
- Ensure exercises are doable with chapter knowledge
- Verify scenarios are realistic
- Adjust difficulty appropriately
- Add hints if needed

---

### Phase 5: Tables and Reference Materials (WITH AI)

```
You: Create these reference materials for Chapter 15:

1. A comparison table showing Functional vs Non-Functional requirements
with 5 examples of each

2. A table of common NFR categories (performance, security, usability,
reliability, scalability) with example requirements for each

3. A "Quick Reference Card" summarizing NFR best practices

Format as AsciiDoc tables.
```

**Claude provides:**
- Properly formatted AsciiDoc tables
- Reference materials
- Quick reference content

**You verify:**
- Technical accuracy
- Completeness
- Proper formatting

---

### Phase 6: Diagrams (WITH AI)

```
You: Create Mermaid diagrams for Chapter 15:

1. A flowchart showing the process of identifying and documenting NFRs
2. A diagram showing the relationship between business needs,
functional requirements, and NFRs

Provide the Mermaid code in AsciiDoc format.
```

**Claude provides:**
- Mermaid diagram code
- Properly formatted for AsciiDoc

**You:**
- Test in Mermaid Live Editor: https://mermaid.live/
- Adjust styling and layout
- Verify it builds correctly

---

### Phase 7: Polish and Quality Check (MOSTLY YOU)

This is where you take over:

1. **Read the full chapter start to finish**
   - Does it flow naturally?
   - Is the tone consistent with Chapter 1?
   - Are examples realistic enough?

2. **Run the quality checklist** (from WRITING_PLAN.md)
   - All required sections present?
   - Examples have specific details?
   - Exercises are clear and doable?

3. **Build and review**
   ```bash
   make html
   open output/junior-ba-guide.html
   ```

4. **Get feedback** (optional but valuable)
   - Ask a junior BA to read it
   - Does it make sense to them?
   - Are examples relatable?

---

## What AI Does Well

### Excellent for:

✅ **First drafts** - Getting content on the page quickly
✅ **Structure** - Following the template consistently
✅ **Tables and lists** - Creating reference materials
✅ **Diagrams** - Generating Mermaid code
✅ **Variety** - Creating multiple example scenarios
✅ **Formatting** - Proper AsciiDoc syntax
✅ **Consistency checks** - Comparing across chapters
✅ **Brainstorming** - Generating ideas for examples/exercises

### Limited effectiveness:

⚠️ **Deep realism** - AI examples can feel generic
⚠️ **Voice/tone** - Requires your refinement
⚠️ **Industry specifics** - You need to add domain knowledge
⚠️ **Subtle nuances** - Professional insights come from you
⚠️ **Quality judgment** - You decide what's good enough

---

## Sample Chapter Writing Session with AI

Here's a real example of how a 10-hour chapter might break down:

**Hour 1-2: Planning (with AI)**
```
You: Let's plan Chapter 15 on NFRs...
[Discussion, outline creation, example brainstorming]

Output: Chapter outline, 3-5 example ideas, exercise concepts
```

**Hour 3-5: Core Content (with AI)**
```
You: Write the Core Concepts section...
[AI drafts, you refine and enhance]

You: Write the Step-by-Step Guide...
[AI drafts, you add practical tips]

Output: Core Concepts section (70% complete),
Step-by-Step Guide (60% complete)
```

**Hour 6-7: Extended Example (collaborative)**
```
You: Create a scenario showing...
[AI drafts initial scenario]

You: Enhance with these specifics...
[Iteration - 3-4 rounds]

You: Add more realistic dialogue...
[More refinement]

Output: Extended example (90% complete,
needs final polish)
```

**Hour 8: Exercises (with AI)**
```
You: Create 3 exercises...
[AI provides exercises]

You: Review and adjust difficulty
[Quick refinement]

Output: 3 exercises complete
```

**Hour 9: Tables, Tips, Reference (with AI)**
```
You: Create comparison table...
You: Generate Quick Reference Card...
You: Write Pro Tips for...

Output: All supporting materials complete
```

**Hour 10: Polish (mostly you)**
```
- Read full chapter
- Refine examples for realism
- Ensure tone consistency
- Build and review in browser
- Run quality checklist
- Final edits

Output: Chapter complete and ready
```

---

## Prompting Best Practices

### Be Specific

**Bad prompt:**
```
Write about stakeholder management.
```

**Good prompt:**
```
Write the "Core Concepts" section for Chapter 5 about Understanding
Your Stakeholders. Cover:
1. Stakeholder categories (internal, external, primary, secondary)
2. Power/Interest analysis with a 2x2 matrix
3. Building stakeholder profiles

Use conversational tone appropriate for junior BAs. Include specific
examples from a retail e-commerce company.
```

### Provide Context

**Always include:**
- Chapter number and title
- Target audience (junior BAs, 0-2 years)
- Desired tone (conversational, mentoring)
- Specific requirements from book_structure.md
- Any related content from other chapters

### Iterate Don't Settle

**First draft is rarely final:**
```
You: [Initial prompt]
Claude: [Provides draft]

You: Good start. Now enhance with:
- More specific dialogue
- Actual metrics (not placeholders)
- Show the BA's thinking process

Claude: [Improved version]

You: Better. Now add:
- A contrasting example showing what NOT to do
- Specific industry context (healthcare)

Claude: [Final version]
```

### Reference the Style Guide

```
You: Write this section using the tone and style from Chapter 1
(book/chapters/chapter-01.adoc). Use "you" throughout, short
paragraphs, and a mentoring voice like explaining to a colleague
over coffee.
```

---

## Quality Control: You Are the Editor

### AI provides the draft. You ensure quality.

**Your responsibilities:**

1. **Verify realism**
   - Do examples sound like real business situations?
   - Are names, numbers, contexts specific?
   - Would a junior BA recognize this scenario?

2. **Check technical accuracy**
   - Are BA concepts correct?
   - Do processes align with BABOK?
   - Are tools/techniques described accurately?

3. **Maintain voice**
   - Is tone consistent with Chapter 1?
   - Does it sound like one author throughout?
   - Is it conversational and encouraging?

4. **Ensure completeness**
   - Are all template sections present?
   - Do exercises have clear success criteria?
   - Are key takeaways actionable?

5. **Test practicality**
   - Could a junior BA actually do these exercises?
   - Are examples detailed enough to learn from?
   - Is advice immediately actionable?

---

## Time Savings

**Without AI:**
- 15-20 hours per chapter
- Heavy cognitive load throughout
- Risk of writer's block

**With AI (used well):**
- 8-12 hours per chapter
- AI handles structure and first drafts
- You focus on quality and realism
- Faster through difficult sections

**Potential savings:** 30-40% reduction in time while maintaining (or improving) quality

---

## When NOT to Use AI

**Don't use AI for:**

1. **Final quality decisions** - You judge what's good enough
2. **Personal anecdotes** - If you have real BA stories, use them
3. **Industry-specific details** - Add your domain expertise
4. **Sensitive content** - Security, compliance topics need expert review
5. **Voice calibration** - You set the tone, AI follows

---

## Sample Prompts for Each Chapter Section

### For Core Concepts
```
Write the Core Concepts section for Chapter [X] about [topic].
Include 3-5 key concepts. For each concept:
- Define it in plain language (no jargon)
- Explain why it matters to junior BAs
- Provide a simple example
- Address common misconceptions

Use conversational tone. Target audience: BAs with 0-2 years experience.
```

### For Extended Examples
```
Create a detailed, realistic scenario for Chapter [X] showing [concept]
in action. Requirements:

- Set in [industry context]
- Include 2-3 characters with specific names and roles
- Show realistic dialogue (natural speech patterns)
- Demonstrate both problems and solutions
- Include specific numbers, metrics, timelines
- Show the BA's thought process
- Length: 8-10 paragraphs minimum

Make it feel like a real project, not a textbook example.
```

### For Exercises
```
Create [number] hands-on exercises for Chapter [X] on [topic]:

Exercise 1: [Type] - [Description]
Exercise 2: [Type] - [Description]

For each exercise, provide:
1. Clear objective (what skill they're practicing)
2. Detailed scenario with all necessary information
3. Specific instructions on what to create/do
4. Success criteria (what "good" looks like)
5. 2-3 hints to guide them

Ensure exercises are doable with only the chapter's content.
```

### For Diagrams
```
Create a Mermaid [diagram type] for Chapter [X] showing [concept].

Requirements:
- [Specific elements to include]
- Clear labels
- Appropriate complexity for junior BAs

Provide the code in AsciiDoc format with [mermaid] block syntax.
```

### For Tables
```
Create an AsciiDoc table for Chapter [X] comparing [A] vs [B].

Include:
- [Number] rows
- Columns for [list columns]
- Specific, realistic examples in each cell
- Professional formatting

Format as proper AsciiDoc table syntax.
```

---

## Consistency Across Chapters

### Every 5 chapters, do a consistency check:

```
You: Review Chapters [X] through [Y] for consistency.
Check:
1. Voice and tone - does it sound like one author?
2. Terminology - are terms used consistently?
3. Cross-references - are they accurate?
4. Difficulty progression - does it increase appropriately?

Provide a summary of any inconsistencies found.
```

**You then:**
- Review Claude's findings
- Make necessary adjustments
- Update earlier chapters if needed

---

## The Bottom Line

**AI is a powerful writing assistant, but you're the author.**

Use AI to:
- ✅ Accelerate first drafts
- ✅ Generate variety of examples
- ✅ Handle structure and formatting
- ✅ Create reference materials
- ✅ Overcome writer's block

You provide:
- ✅ Quality judgment
- ✅ Realism and specificity
- ✅ Voice and tone
- ✅ Domain expertise
- ✅ Final editorial decisions

**Result:** Faster writing with consistent quality.

---

## Getting Started with AI Assistance

**First chapter with AI:**

```bash
# Open Claude Code
claude

# Then say:
"I'm writing Chapter 2 of my BA book. Let me share the context:

1. Chapter 1 is in book/chapters/chapter-01.adoc
2. Implementation guide is in implementation_guide.md
3. Chapter 2 outline is in book_structure.md (lines 34-48)

Review these files, then help me plan Chapter 2 following the
same quality and style as Chapter 1."
```

**Claude will:**
- Read your existing content
- Understand the style and quality bar
- Help you plan and write Chapter 2
- Maintain consistency with Chapter 1

**You'll complete the chapter in 8-10 hours instead of 15-20.**

Ready to start Chapter 2 with AI assistance?
