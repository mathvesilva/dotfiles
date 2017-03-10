#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function syncDotFiles() {
	  rsync --exclude ".git/" \
		      --exclude "bootstrap.sh" \
		      --exclude "README.md" \
		      --exclude "LICENSE" \
		      --exclude ".directory" \
		      -avh --no-perms . ~;
	  source ~/.bash_profile;
}

syncDotFiles;

unset syncDotFiles;
