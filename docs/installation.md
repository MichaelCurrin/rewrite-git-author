# Installation

This project's shell script needs to be added to a binary executables directory so that is can be run from anywhere.

e.g. use `/usr/local/bin/` or `~/bin`.


## Install with Git

Clone this repo.

```sh
$ git clone git@github.com:MichaelCurrin/rewrite-git-author.git
$ cd rewrite-git-author
```

Add a symlink in a binary executables directory to the main script in the repo. 

e.g. 

```sh
$ sudo ln -s ~/repos/rewrite-git-author/rewrite_author.sh /usr/local/bin 
```

To get updates, pull in from GitHub:

```sh
$ cd ~/repos/rewrite-git-author/
$ git pull
```


## Install with cURL

```sh
$ cd /usr/local/bin
$ curl -O https://raw.githubusercontent.com/MichaelCurrin/rewrite-git-author/main/rewrite_author.sh
$ chmod +x rewrite_author.sh
```

To get updates, repeat the steps above.


## Test it

```console
$ rewrite_author.sh 
Rewrite Git Author

Usage: rewrite_author.sh OLD_EMAIL NEW_EMAIL

e.g. rewrite_author.sh foo@bar.com fizz@buzz.net
```
