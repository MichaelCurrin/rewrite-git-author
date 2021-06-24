#!/usr/bin/env bash
# Rewrite git authors.
#
# Licensed under MIT - see https://github.com/MichaelCurrin/rewrite-git-author/blob/main/LICENSE .

if [[ "$#" -ne 2 ]]; then
  echo "Usage: $0 OLD_EMAIL NEW_EMAIL"
  exit 0
fi

OLD_EMAIL=$1
NEW_EMAIL=$2

VARS="
OLD_EMAIL=$OLD_EMAIL
NEW_EMAIL=$NEW_EMAIL
"

CONDITION='
if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]; then
  export GIT_COMMITTER_EMAIL="$NEW_EMAIL"
fi

if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]; then
  export GIT_AUTHOR_EMAIL="$NEW_EMAIL"
fi
'

FILTER="$VARS $CONDITION"

printf "$FILTER\n"

git filter-branch \
  -f \
  --env-filter "$FILTER" \
  --tag-name-filter \
  cat -- \
  --branches \
  --tags
