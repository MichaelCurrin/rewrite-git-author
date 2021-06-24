# About

## Batch update ##

The logic in this script comes from the second part of the tutorial link.

https://www.git-tower.com/learn/git/faq/change-author-name-email

See also SO question:

https://stackoverflow.com/questions/4493936/could-i-change-my-name-and-surname-in-all-previous-commits

An answer there provides a solution with a snippet. But, a comment for the
answer links to an improved script:

https://help.github.com/articles/changing-author-info/

This script is limited to replace the email address, while the git user's name
is left unaffected. See the links above for how to set that too.


## Individual update

How to update one commit at a time, without a script.

This logic comes from the first part of the tutorial linked above and is provided as
instructions below.

1. Rebase:
    ```sh
    $ git rebase -i -p COMMIT_HASH
    ```
2. Then set to `edit` for each required commit.
3. You then cycle through each marked commit.
   Replace the author for each (use the angle brackets around the
   email address.)
   ```sh
   $ git commit --amend --author="John Doe <john@doe.org>" --no-edit
   $ git rebase --continue
   ```
