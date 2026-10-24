#!/usr/bin/env bash
# Usage: scripts/new-article.sh <brief|intro|deep-dive> <YYYY-MM-DD> <slug> [issue]
set -euo pipefail
track=${1:?track}; date=${2:?publish date}; slug=${3:?slug}; issue=${4:-null}
case $track in
  brief) dir=briefs;;
  intro) dir=intros;;
  deep-dive) dir=deep-dives;;
  *) echo "track must be brief, intro, or deep-dive" >&2; exit 1;;
esac
[[ $date =~ ^[0-9]{4}-[0-9]{2}-[0-9]{2}$ ]] || { echo "date must be YYYY-MM-DD" >&2; exit 1; }
root=$(cd "$(dirname "$0")/.." && pwd)
a="$root/articles/$dir/$date-$slug"
[[ -e $a ]] && { echo "$a already exists" >&2; exit 1; }
mkdir -p "$a"/{notes,drafts,feedback,charts,data}
touch "$a/drafts/.gitkeep" "$a/feedback/.gitkeep" "$a/charts/.gitkeep" "$a/data/.gitkeep"
T="$root/templates"
sed -e "s/^slug: \"\"/slug: \"$slug\"/" -e "s/^track: \"\"/track: \"$track\"/" \
    -e "s/^publish_date: \"\"/publish_date: \"$date\"/" \
    -e "s/^issue: null/issue: $issue/" "$T/article.yml" > "$a/article.yml"
cp "$T/CONTEXT.md" "$T/pitch.md" "$a/"
cp "$T/notes/"*.md "$a/notes/"
echo "Created $a"
echo "Next: set author in article.yml, git switch -c $track/$date-$slug, write pitch.md, open a PR with 'Closes #$issue'."
