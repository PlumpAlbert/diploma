#!/bin/sh

docker run \
	--detach --rm \
	--name "pdp-presentation" \
	-v "${PWD}/presentation":/work/src \
	-v "${PWD}/build":/work/build \
	-e FILENAME=main.tex \
	plumpalbert/doctex
