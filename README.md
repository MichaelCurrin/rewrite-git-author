# Rewrite Git Author
> The easy way to replace an email address across all commits in a repo

[![GitHub tag](https://img.shields.io/github/tag/MichaelCurrin/rewrite-git-author?include_prereleases=&sort=semver)](https://github.com/MichaelCurrin/rewrite-git-author/releases/)
[![License](https://img.shields.io/badge/License-MIT-blue)](#license)

[![Made with Bash](https://img.shields.io/badge/Bash->=3-blue?logo=gnu-bash&logoColor=white)](https://www.gnu.org/software/bash/)

A simple tool to replace the email address for all commits in a repo by a user - using a single command. The timestamps and patches of the commits are left as is.

## ⚠️ **Warning**

Since a rebase is done here, this tool rewrites your Git history of commits. So you'll have to force-push your changes and get everyone to pull in the changes. 

Further, _every_ commit in the history back to the _first_ commit will get rewritten, even if _nothing_ changed in the commits. So don't use this to just fix a few recent commits - rather fix those by hand, or submit an issue or PR improve this tool to only go back to a certain commit!


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

<div align="center">

[![view - Documentation](https://img.shields.io/badge/view-Documentation-blue?style=for-the-badge)](https://michaelcurrin.github.io/rewrite-git-author/ "Go to project documentation")

</div>
    
See that for how to set up and run this tool and for more info on how this works.

It also has instructions for how to update an email address for a _single commit_ with plain Git.


## License

Released under [MIT](/LICENSE) by [@MichaelCurrin](https://github.com/MichaelCurrin).
