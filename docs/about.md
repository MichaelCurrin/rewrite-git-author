# About


## Batch update

The logic in this script comes from the second part of the tutorial link.

[How can I change the author name / email of a commit?](https://www.git-tower.com/learn/git/faq/change-author-name-email)

See also SO question:

[Could I change my name and surname in all previous commits?](https://stackoverflow.com/questions/4493936/could-i-change-my-name-and-surname-in-all-previous-commits)

An answer there provides a solution with a snippet. But, a comment for the
answer links to an improved script:

- [Changing author info](https://help.github.com/articles/changing-author-info/)

This script is limited to replace the email address, while the Git user's name
is left unaffected. See the links above for how to set that too.


## Individual update

How to update one commit at a time, using Git manually one command at a time.

This logic comes from the first part of the tutorial linked above and is provided as
instructions below.

1. Set your new author name and email in a variable. e.g.
    ```sh
    $ export AUTHOR="John Doe <john@doe.org>"
    ```
1. Start a rebase, starting with one commit _before_ the first commit you want to update.
    ```sh
    $ git rebase -i -p COMMIT_REFERENCE
    ```
    e.g. use the carat and the target first commit to get one commit before it.
    ```sh
    $ git rebase -i -p fd27b00ac^
    ```
1. Change `pick` to `edit` or `e` for each commit where you want to change the author. **Warning** - this will replace the author regardless of who it was.
1. Save the content in the editor view then exit.
1. Now you adjust each commit one at a time with these two commands:
   ```sh
   $ git commit --amend --author="$AUTHOR" --no-edit
   $ git rebase --continue
   ```
