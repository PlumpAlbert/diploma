#!/bin/zsh
docker run \
	--detach \
	--rm \
	-v ${PWD}:/work/src \
	-v ${PWD}/build:/work/build \
	-v "$HOME/texmf":/root/texmf \
	-e FILENAME="${FILENAME:-nirs.tex}" \
	--name "$(git branch --show-current)" \
	plumpalbert/doctex
