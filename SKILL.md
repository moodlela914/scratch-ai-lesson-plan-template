---
name: scratch-ai-lesson-plan-template
description: "Generate a complete Traditional Chinese Grade 5 Scratch lesson plan from a course topic, using the included landscape Word template, 12pt text, detailed step-by-step activities, assessment, and responsible AI-use guidance."
metadata:
  short-description: "只要提供主題即可產生12pt範本格式Scratch教案"
---

# Scratch AI 範本教案生成器

Use this skill when the user wants a new Scratch lesson plan and provides a topic, especially when they want the established RedFlame/template Word format.

## Default input

When the user provides only a topic, use the defaults documented in [references/defaults.md](references/defaults.md): Grade 5, Scratch, three 40-minute lessons, Traditional Chinese, and the included template. If the user supplies grade, subject, lesson count, or duration, use those values instead.

## Required output

Create a new `.docx` in the shared workspace. Do not overwrite the template asset or an earlier deliverable unless the user explicitly asks for an overwrite. Use a descriptive filename such as `五年級Scratch_<主題>_範本格式教案.docx`.

The document must use the included `assets/指引教案格式.docx` as its structural and visual authority. Preserve its landscape A4 sections, tables, colors, appendix material, and page furniture. Use the slot map in [references/template_mapping.md](references/template_mapping.md).

All visible text must be explicitly set to 12pt, including table text and appendix text. Keep the template's bolding, colors, cell fills, borders, and alignment unless the requested content requires a local adjustment.

## Content requirements

Generate a complete lesson plan, not a short outline. Include:

- learning context, rationale, objectives, tasks, resources, student digital background, curriculum links, and issue integration;
- three detailed lesson periods with minute-by-minute or step-by-step teacher actions, student actions, Scratch blocks/concepts, checks for understanding, troubleshooting, peer testing, and evidence/notes;
- assessment criteria with Excellent / Good / Needs Support levels and a detailed teacher reflection;
- differentiated support for students who need scaffolding and extension challenges for advanced students;
- teacher guidance for AI use in at least three moments: before class, during a coding blockage, and after class reflection;
- at least two age-appropriate prompt examples that ask AI to guide with questions or testing steps rather than write the solution;
- AI green/yellow/red guidance, privacy reminders, fact-checking, attribution of AI assistance, and a clear prohibition on copying a complete program.

For Scratch topics, make the final project concrete and ensure every named concept is used in the activities and assessment. Do not invent an AI tool as available to students; describe it as teacher demonstration or optional supervised use unless the user names a platform.

## Authoring and verification

Use the documents skill for DOCX work. Copy the template asset to the output path, fill the existing table slots, and insert assessment/reflection tables under the corresponding headings when needed. Do not rebuild the document from a blank file.

Before delivery:

1. Confirm the output exists and all editable runs are 12pt.
2. Render the DOCX to PDF/PNG with LibreOffice and inspect every page at 100% for clipping, overlap, broken tables, unreadable text, and awkward page breaks.
3. If rendering tools are unavailable, still complete structural checks and state that visual QA was not completed.

When the user asks only for a lesson plan in chat rather than a Word file, provide Markdown instead; otherwise default to the Word deliverable described above.
