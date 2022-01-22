# Rewrite Git Author
> The easy way to replace an email address across all commits in a repo

[![GitHub tag](https://img.shields.io/github/tag/MichaelCurrin/rewrite-git-author?include_prereleases=&sort=semver)](https://github.com/MichaelCurrin/rewrite-git-author/releases/)
[![License](https://img.shields.io/badge/License-MIT-blue)](#license)

[![Made with Bash](https://img.shields.io/badge/Bash->=3-blue?logo=gnu-bash&logoColor=white)](https://www.gnu.org/software/bash/)

A simple tool to replace the email address for all commits in a repo by a user - using a single command. The timestamps and patches of the commits are left as is.


## Sample usage

Run the shell script:

```sh
$ rewrite_author.sh OLD_EMAIL NEW_MAIL
```

Then check your Git log and force push if you're satisfied.

e.g. If your ran this:

```sh
$ rewrite_author.sh old@example.com new@another-example.com
```

Then your commits will be changed from the old email like:

```
Author: Foo Bar old@example.com
Date:   Thu Jun 24 20:08:18 2021 +0200
```

To the new email:

```
Author: Foo Bar new@another-example.com
Date:   Thu Jun 24 20:08:18 2021 +0200
```


## Documentation

[![View - Documentation](https://img.shields.io/badge/View-Documentation-blue?style=for-the-badge)](/docs/)

To set up and run and for more info on how this works.

And for how to update an email address for _single commit_ with plain Git.


## License

Released under [MIT](/LICENSE) by [@MichaelCurrin](https://github.com/MichaelCurrin).
