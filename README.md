# ornn-research

The editorial pipeline for Ornn's research articles on compute markets.

## Tracks

| Track | Folder | Length | Cadence | Publishes |
|---|---|---|---|---|
| Weekly brief | `articles/briefs/` | 500 to 800 words | Weekly | Friday |
| Compute markets intro | `articles/intros/` | 600 to 1,000 words | Weekly | Monday |
| Deep dive | `articles/deep-dives/` | 1,500 to 2,500 words | Every other week | Wednesday |

Owners are set per article in `article.yml`, not per track.

### Weekly cycles

- **Brief:** pitch Monday morning, first draft Thursday morning, feedback Thursday, final and publish Friday afternoon.
- **Intro:** pitch Monday, first draft Thursday, feedback Friday, final Sunday, publish Monday.
- **Deep dive:** pitch Thursday of week 1, first draft Friday of week 2, feedback the following Monday, final Tuesday of week 3, publish that Wednesday.

The schedule of open slots and planned titles lives in `topics/`.

## Layout

```
articles/
  briefs/         one folder per article, named YYYY-MM-DD-slug (publish date)
  deep-dives/
  intros/
context/          shared context every article draws on
  ornn.md           what Ornn does, products (OCPI), partners we can name (ICE)
  style.md          Ornn's hard editorial rules and formatting
  glossary.md       canonical definitions
  market-log.md     weekly state of the compute market, newest first
  standards/
    targeted.md     voice, structure and banned language for research articles
    broad.md        the same for short serialized X articles
templates/        starter files for every part of an article folder
topics/           schedule and backlog per track, plus unclaimed ideas
data/             shared datasets: raw/ and processed/
scripts/          helpers to scaffold articles and new drafts
```

## Inside an article folder

```
2026-11-06-space-compute/
  article.yml          title, track, standard, author, reviewer, status, dates, issue, draft number, URL
  CONTEXT.md           read this first: thesis, facts, decisions, rejected angles, draft log
  pitch.md             the original pitch
  notes/
    research.md        raw dated notes
    sources.md         source table (S1, S2, ...)
    outline.md
  drafts/
    draft-1.md ...     one file per review round
  feedback/
    feedback-1.md ...  feedback on the matching draft
  final.md             publish-ready version
  charts/              images used by this article
  data/                data used by this article
```

## Standards

Every article names its standard in `article.yml`:

- `targeted`: the full-length research article. Briefs, intros and deep dives use this by default.
- `broad`: a short serialized X article cut from a piece of Ornn research. An X version of an article lives in the same folder as `x.md`.

Run the standard's normalization pass on every draft, then its pre-publish checklist on `final.md`.

## Pipeline

```
pitched -> researching -> drafting -> in-review -> (drafting <-> in-review per round) -> final -> published
```

Tracker status mapping: Not started = `pitched`, In progress = `researching` or `drafting`, Pending Review = `in-review`, Completed = `published`.

Rules:

1. Once `feedback-N.md` exists, `draft-N.md` is frozen. All edits go into `draft-(N+1).md`, which starts as a copy of draft N. Use `scripts/new-draft.sh`.
2. Every number needs a source ID that exists in `notes/sources.md`.
3. Decisions and rejected angles go in `CONTEXT.md` so they are not argued again.
4. One sentence per line in drafts, so diffs and review comments point at single sentences.

## Context layers

Read in this order before working on an article:

1. **Program**: `context/ornn.md`, `context/style.md`, `context/glossary.md`, and the article's standard in `context/standards/`
2. **Market**: `context/market-log.md`
3. **Article**: `CONTEXT.md`, `pitch.md`, `notes/`, then every file in `feedback/`
4. **Current text**: `final.md` if it exists, otherwise the latest draft

## GitHub workflow

1. Each topic is a GitHub issue labeled by track (`brief`, `intro`, `deep-dive`).
2. When work starts, scaffold the folder, then open a branch and a PR:
   ```
   scripts/new-article.sh brief 2026-11-06 space-compute 12
   git switch -c brief/2026-11-06-space-compute
   ```
   The PR body says `Closes #<issue>`.
3. The PR stays open from first notes until final.
4. Reviewers comment on the PR, then record the substance in `feedback/feedback-N.md`.
5. Merge when `final.md` is approved. Merging closes the topic issue.

## Scripts

- `scripts/new-article.sh <brief|intro|deep-dive> <publish-date> <slug> [issue]`: creates the article folder from templates.
- `scripts/new-draft.sh <article-dir>`: creates the next draft. Refuses to start draft N+1 until `feedback-N.md` exists, then bumps `current_draft`.
