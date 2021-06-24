# Usage


## Back-up

Recommended, so you can easily roll back if you mess up.

Push your work.

Or make a duplicate branch.

```sh
$ git checkout main
$ git checkout -b main-backup
$ git checkout main
```

Also make sure that if others are working on the repo as you that they are expecting this change.


## Run

### What it does

The script will do a rebase of _all_ commits. Even if the email address is not matched, the rebase will still be done.

You are overwriting git history by editing commits and not adding new ones on top of the old and so will have to a do **force push** at the end.

This affects the email of both commit _author_ and _committer_ fields.

### Steps

1. Navigate to your repo.
    - Make to sure to be in the **root**, since when you rebase you are rewinding the history to when there were **zero** directories and then you'll get an error.
2. Make sure all changes are committed or stashed - nothing is left unstaged.
3. Run the tool.
    - Reference it by its full path.
        ```sh
        $ ~/scripts/rewrite_author.sh OLD_EMAIL NEW_MAIL
        ```
    - Or run from your `~/bin` directory from anywhere.
        ```sh
        $ rewrite_author.sh OLD_EMAIL NEW_MAIL
        ```
4. Use `git log` to verify your changes.
5. Do a force push to GitHub.
    ```sh
    $ git push --force
    ```
6. Pull in changes on other machines. Give these instructions to other collaborators on your repo to avoid getting errors when they push or pull.
    ```sh
    $ git fetch
    $ git reset --hard origin/main  # or origin/master
    ```

Sample output of the script.

```
Rewrite 80b85af8f4454c2c7b820ed13229897262f18bb2 (11/14) (1 seconds passed, remaining 0 predicted)
Ref 'refs/heads/main' was rewritten
Ref 'refs/heads/test' was rewritten
Ref 'refs/tags/v0.1.0' was rewritten
```


## Undo changes

Okay so you messed up your main branch.

Here is how to undo.

**Warning** the tags got rewritten, and the steps here will **not** bring them back.

Assuming the content on the remote like GitHub is good.

```sh
$ git reset --hard origin/main
```

Or if you used a back-up branch.

```sh
$ git reset --hard main-backup
```
