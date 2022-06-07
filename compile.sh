#!/bin/sh

docker run \
    --detach --rm \
    --name "$(git branch --show-current)" \
    -v ${PWD}:/work/src \
    -v ${PWD}/build:/work/build \
    -e FILENAME=nirs.tex \
    plumpalbert/doctex
