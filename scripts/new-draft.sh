#!/usr/bin/env bash
# Usage: scripts/new-draft.sh <article-dir>
# Creates the next draft. draft-1 comes from the track template; draft-N+1 copies draft-N
# and requires feedback-N to exist (draft-N is then frozen).
set -euo pipefail
a=${1:?article dir}; a=${a%/}
root=$(cd "$(dirname "$0")/.." && pwd)
yml="$a/article.yml"
track=$(sed -n 's/^track: *"\{0,1\}\([a-z-]*\)"\{0,1\}.*/\1/p' "$yml")
n=$(ls "$a/drafts" 2>/dev/null | sed -n 's/^draft-\([0-9]*\)\.md$/\1/p' | sort -n | tail -1)
n=${n:-0}; next=$((n + 1))
if (( n == 0 )); then
  cp "$root/templates/drafts/$track.md" "$a/drafts/draft-1.md"
else
  [[ -f $a/feedback/feedback-$n.md ]] || { echo "feedback-$n.md missing: draft-$n is still the working draft" >&2; exit 1; }
  cp "$a/drafts/draft-$n.md" "$a/drafts/draft-$next.md"
fi
sed -i '' "s/^current_draft: .*/current_draft: $next/" "$yml" 2>/dev/null || sed -i "s/^current_draft: .*/current_draft: $next/" "$yml"
echo "Created $a/drafts/draft-$next.md. Log it in CONTEXT.md's draft log."
