#!/usr/bin/env bash

# See https://stackoverflow.com/questions/9976986/force-lf-eol-in-git-repo-and-working-copy

git config core.eol lf
git config core.autocrlf input

git checkout-index --force --all

# Starting with Git 2.10 (released 2016-09-03), it is not necessary to enumerate each text file separately.
# Git 2.10 fixed the behavior of text=auto together with eol=lf. See https://stackoverflow.com/a/42135910
git rm --cached -r .  # Remove every file from git's index.
git reset --hard      # Rewrite git's index to pick up all the new line endings.
