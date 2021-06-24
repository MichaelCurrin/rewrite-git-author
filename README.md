# Rewrite Git Author

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
