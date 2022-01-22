# Installation

This project's shell script needs to be added to a binary executables directory so that is can be run from anywhere.

e.g. use `/usr/local/bin/` or `~/bin`.


## Install with Git

Clone this repo.

Add a symlink in a binary executables directory to the main script in the repo. 

e.g. 

```sh
$ ln -s /usr/local/bin ~/repos/rewrite-git-author/rewrite_author.sh
```


Whenever your update the Git repo, you'll get the latest code used immediately. 


## Download script directly

```sh
$ cd /usr/local/bin
$ curl -O 
$ chmod +x rewrite_author.sh
```
