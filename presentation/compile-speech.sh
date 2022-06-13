#!/bin/sh

CWD="$(dirname "$0")"

if [[ "$(uname)" == 'Darwin' ]]; then
	fswatch -o "$CWD/speech.md" | xargs -n1 -I{} "$CWD/pandock.sh"
fi
