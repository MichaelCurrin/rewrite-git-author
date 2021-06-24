# Rewrite Git Author
> The easy way to replace your email in all commits in a repo

[![GitHub tag](https://img.shields.io/github/tag/MichaelCurrin/rewrite-git-author?include_prereleases=&sort=semver)](https://github.com/MichaelCurrin/rewrite-git-author/releases/)
[![License](https://img.shields.io/badge/License-MIT-blue)](#license)

[![Made with Bash](https://img.shields.io/badge/Bash->=3-blue?logo=gnu-bash&logoColor=white)](https://www.gnu.org/software/bash/)

Automation tool to do a batch rewrite of the git author in the whole commit history, replacing a selected author's email with a new email.

This affects both commit _author_ and _committer_ fields.


## Sample

```sh
$ rewrite_author.sh OLD_EMAIL NEW_MAIL
```

e.g.

```sh
$ rewrite_author.sh old@example.com new@another-example.com
```

Then check your Git log and your commits will go from:

```
Author: Foo Bar old@example.com
Date:   Thu Jun 24 20:08:18 2021 +0200
```

To the new email:

```
Author: Foo Bar new@another-example.com
Date:   Thu Jun 24 20:08:18 2021 +0200
```


## License

Released under [MIT](/LICENSE) by [@MichaelCurrin](https://github.com/MichaelCurrin).
