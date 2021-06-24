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


## Run

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

The script will do a rebase of _all_ commits. Even if the email address is not matched, the rebase will still be done.

Sample output:

```
Rewrite 80b85af8f4454c2c7b820ed13229897262f18bb2 (11/14) (1 seconds passed, remaining 0 predicted)
Ref 'refs/heads/main' was rewritten
Ref 'refs/heads/test' was rewritten
Ref 'refs/tags/v0.1.0' was rewritten
```


## Revert

Okay so you mess up your main branch.

Here is how to undo.

Assuming the content on the remote like GitHub is good.

```sh
$ git reset --hard origin/main
```

Or if you used a back-up branch.

```sh
$ git reset --hard main-backup
```
