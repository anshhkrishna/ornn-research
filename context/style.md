# Style

Voice, tone, structure and banned language are set by the standards in `standards/`.
This file holds the Ornn rules that apply on top of every standard, plus formatting.

## Hard editorial rules

1. **Only mention Ornn and Ornn's partners.** The partners we can name are listed in `ornn.md` (currently ICE). Never name competitors, such as CME or Silicon Data. If a useful fact comes from a competitor, state the fact without naming them or drop it.
2. **Do not frame GPU value decay as the thesis.** Depreciation can appear as context, never as the argument.
3. **Do not argue that spot GPU prices are decoupled from financing stress.**
4. **State units and time windows for every price.** Unit (USD per H100 GPU-hour), contract type (spot, 1-month, 1-year), and window or as-of date ("7-day average to Oct 23, 2026").
5. **Every number has a source ID** (`[S1]`) that exists in the article's `notes/sources.md`.

## Formatting

- One sentence per line in drafts, `final.md` and `x.md`.
- Headings in sentence case.
- Dates: `2026-10-24` in notes and metadata, "Oct 24, 2026" in published text.
- Money: `$2.10`, `$1.2B`. Percentages: `12%`. Ranges: "500 to 800" (no dashes, per the standards).
- Straight quotes only.
- Charts: title states the result, axes labeled with units, source series and vintage under the chart.

## Tracks

| Track | Length | Default standard |
|---|---|---|
| Weekly brief | 500 to 800 words | targeted |
| Compute markets intro | 600 to 1,000 words | targeted |
| Deep dive | 1,500 to 2,500 words | targeted |
| X version of any article | one screen scroll | broad |
