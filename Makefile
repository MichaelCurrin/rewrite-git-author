default: help

h help:
	@grep '^[a-z]' Makefile


test:
	./rewrite_author.sh 18750745+MichaelCurrin@users.noreply.github.com test@test.com
	git log

log:
	git --no-pager log -n 1

undo:
	git reset --hard origin/main
