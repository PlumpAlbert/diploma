docker run `
	--detach `
	--rm `
	-v ${PWD}:/work/src `
	-v ${PWD}/build:/work/build `
	-e FILENAME=nirs.tex `
	--name "$(git branch --show-current)" `
	plumpalbert/doctex
