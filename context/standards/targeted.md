---
type: article-standard
name: Targeted (research) article
applies_to: Full-length Ornn research articles for research-minded readers
owner: Ornn Research
---

# Targeted article standard

This file is the standardization layer for targeted articles. A targeted article is
a full-length research piece written for readers who want the depth and will check
the numbers. Apply this file to any draft of a targeted article, no matter who wrote
it, and the output should come out with the same voice, tone and structure every
time. When the standard changes, change this file, not the prose conventions from
memory.

## Audience and register

The audience is researchers, analysts and engineers. They will read the methodology,
reproduce the arithmetic and check the claims on the underlying series. The register
is finance professional and standard. Plain American English, full sentences, real
connectives. The model voice is Marc Rubinstein's Net Interest. The quality bar is
our published work on GPU useful life: measured result first, generic setup cut,
caveats stated specifically.

## Voice and tone

- Impersonal. No first person and no personal stories. The data and the argument
  carry the piece.
- Active voice with a named subject. Never hide who acts.
- Short sentences. If a sentence cannot be parsed on one read, delete it or make
  it plain. Technical mechanisms get spelled out step by step.
- Transition words and varied sentence structure. Even, mid-length cadence is a
  tell.
- Let the numbers carry the argument. Cut parallel constructions, punchlines and
  dramatic framing.
- State caveats specifically. Name the exact limitation, sample or assumption.
  Cut hedges that only repair an earlier overstatement.
- Every number must trace to Ornn data or a named source. Never invent a figure.
- Hypotheses are labeled as hypotheses. Results are labeled as results.

## Structure

1. Executive summary. One page or less. A reader who stops here knows the
   question, the measured result and why it matters.
2. Sections lead with the measured result. The first paragraph of each section
   states what the data shows; the rest of the section supports it. Cut generic
   setup.
3. Methodology is disclosed. Sample counts, time windows, aggregation and
   filtering rules are published with the piece, same-vintaged to the data it
   describes.
4. Charts carry the load where a chart says it faster than a paragraph. Every
   figure is labeled with its source series and vintage.
5. End on the last concrete fact. No outlook paragraph, no send-off.

## Banned language

Remove every item below on sight. Rewrite the sentence around the gap; do not swap
in a near-synonym.

### Words

delve, crucial, pivotal, vibrant, leverage, streamline, holistic, nuanced,
comprehensive, robust, seamless, foster, empower, navigate, craft, elevate,
underscore, garner, intricate, showcase, groundbreaking, renowned, profound,
boasts, highlight (as a verb), landscape (abstract), tapestry, testament,
valuable, key (as an adjective), quietly, enduring, enhance, fostering,
interplay, align with, additionally (habitual), actually (habitual),
against, tape, print, reads, instead, before, works

### Phrases and shapes

- Em dashes and en dashes anywhere in the text.
- Colons inside prose sentences. Colons in labels, equations or citations are
  fine.
- "Not just X, but Y" and the whole family ("not X but Y", "what changes is",
  "X stops being Y and becomes Z").
- "serves as", "stands as", "marks", "represents", "boasts", "features",
  "offers" used in place of "is", "has" or "does".
- Colon-aphorism and punchline sentences that land the same point twice.
- Stacked dramatic fragments. One short sentence for emphasis is fine.
- Forced groups of three. List two items or four when that is the truth.
- Throat-clearing openers and announcements ("Let's dive in", "Here's what you
  need to know").
- Fake-candid openers ("Honestly?", "Look,", "Here's the thing").
- "The real question is", "at its core", "what really matters", "fundamentally".
- Formulaic sayings ("the language of", "the currency of", "X is the Y of Z").
- Generic positive endings ("The future looks bright", "Exciting times ahead").
  End on the last concrete fact.
- Chatbot filler ("I hope this helps", "Let me know if...").
- Vague attribution ("experts say", "industry reports", "observers note").
  Name the source or cut the claim.
- Curly quotes. Use straight quotes.

## Normalization pass

Run these steps in order on every draft.

1. Fact check. Confirm every number, name and claim survives from the source.
   Nothing added, nothing lost. Flag any number that cannot be traced.
2. Banned scan. Search the draft for every word, phrase and shape in the banned
   list and rewrite each hit.
3. Structure check. Confirm the executive summary stands alone, every section
   leads with its result, and the methodology is fully disclosed.
4. Rhythm pass. Vary sentence length. Active voice with a named subject. Cut any
   sentence that only frames the next one.
5. Read aloud. If a sentence cannot be parsed on one read, delete it or make it
   plain.

## Pre-publish checklist

- [ ] Executive summary fits on one page and stands alone.
- [ ] Every section opens with its measured result.
- [ ] Methodology discloses sample counts, windows and aggregation.
- [ ] Hypotheses labeled as hypotheses, results as results.
- [ ] No banned word, phrase or shape survives.
- [ ] No first person and no personal material.
