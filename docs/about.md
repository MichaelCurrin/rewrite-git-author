# About


## Batch update

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

1. Set your new author. For example:
    ```sh
    $ export AUTHOR="John Doe <john@doe.org>"
    ```
2. Start a rebase, starting with the target oldest commit.
    ```sh
    $ git rebase -i -p COMMIT_REFERENCE
    ```
3. Then change set to `edit` for each required commit. Be careful - this will replace the author regardless of who it was.
4. Save the content in the editor view then exit.
5. Now you adjust each commit one at a time with these two commands.
   ```sh
   $ git commit --amend --author="$AUTHOR" --no-edit
   $ git rebase --continue
   ```
