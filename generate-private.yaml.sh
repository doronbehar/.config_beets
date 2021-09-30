#!/bin/sh

if type gopass &> /dev/null; then
	alias pass=gopass
elif type pass &> /dev/null; then
	:
else
	"No pass comaptible password manager to use"
fi

printf 'musicbrainz:\n\tpass: %s\n' $(pass show -f www/musicbrainz.org | head -1)
