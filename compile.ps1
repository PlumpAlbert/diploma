docker run `
	--detach `
	--rm `
	-v ${PWD}:/work/src `
	-v ${PWD}/build:/work/build `
	-e FILENAME=nirs.tex `
	--name doctex `
	plumpalbert/doctex
