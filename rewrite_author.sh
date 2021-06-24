#!/usr/bin/env bash
# Rewrite git authors.
#
# Autmation tool to do a batch rewrite of the git author field in the whole commit history,
# replacing a select author with a new one.
#
# How to use:
# - Reference it by its full path, or put it in your ~/bin directory.
# Make
# - Make sure to add executable permissions.
# - Run from in the **root** of a git repo, otherwise it will given an error.
#
#
# ### Batch update ###
#
# The logic in this script comes from the second part of the tutorial link.
#   https://www.git-tower.com/learn/git/faq/change-author-name-email
#
# See also SO question:
#   https://stackoverflow.com/questions/4493936/could-i-change-my-name-and-surname-in-all-previous-commits
#
# An answer there provides a solution with a snippet. But, a comment for the
# answer links to an improved script:
#   https://help.github.com/articles/changing-author-info/
#
# This script is limited to replace the email address, while the git user's name
# is left unaffected. See the links above for how to set that too.
#
#
# ### Individual update ###
#
# This logic comes from the first part of the tutorial link and is provided as
# instructions below but is not used in this script.
#
# 1. $ git rebase -i -p COMMIT_HASH
# 2. Then set to 'edit' for each required commit.
# 3. You then cycle through each marked commit.
#    Replace the author for each (use the angle brackets around the
#    email address.)
#    $ git commit --amend --author="John Doe <john@doe.org>" --no-edit
#    $ git rebase --continue

if [[ $# -ne 2 ]]; then
  echo "Usage: $0 OLD_EMAIL NEW_EMAIL"
  exit 1
fi

VARS="
OLD_EMAIL=$1
NEW_EMAIL=$2
"

CONDITION='
if [ "$GIT_COMMITTER_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_COMMITTER_EMAIL="$NEW_EMAIL"
fi
if [ "$GIT_AUTHOR_EMAIL" = "$OLD_EMAIL" ]
then
    export GIT_AUTHOR_EMAIL="$NEW_EMAIL"
fi
'

FILTER="$VARS $CONDITION"

printf "$FILTER\n"

git filter-branch -f --env-filter "$FILTER" --tag-name-filter cat -- --branches --tags
