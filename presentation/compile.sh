#!/bin/sh

docker run \
	--detach --rm \
	--name "pdp-presentation" \
	-v "${PWD}":/work/src \
	-v "${PWD}/build":/work/build \
	-e FILENAME=presentation/main.tex \
	plumpalbert/doctex
