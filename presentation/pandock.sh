#!/bin/sh
CWD="$PWD/$(dirname "$0")"

docker rm --force pdp-presentation-speech
# docker build \
# 	-t pandoc-cyr \
# 	-f "${CWD}/pandoc-cyrillic.Dockerfile" \
# 	.
docker run \
	--detach --rm --pull=never \
	--name "pdp-presentation-speech" \
	--user $(id -u):$(id -g) \
	-v "${CWD}":/data \
	pandoc-cyr speech.md \
	--pdf-engine=xelatex \
	-V 'mainfont:DejaVu Sans Mono' \
	-V 'geometry:top=20mm,bottom=20mm,left=25mm,right=20mm' \
	-o speech.pdf
