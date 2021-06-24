# Usage

1. Navigate to your repo.
    - Make to sure to be in the **root**, since when you rebase you are rewinding the history to when there were **zero** directories and then you'll get an error.
2. Make sure all changes are committed or stashed - nothing is left unstaged.
3. Run the tool.
    - Reference it by its full path.
        ```sh
        $ ~/scripts/rewrite_author.sh
        ```
    - Or run from your `~/bin` directory from anywhere.
        ```sh
        $ rewrite_author.sh
        ```
