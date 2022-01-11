filename=main
outdir=build
cmd=-output-directory ${outdir}

pdf:
	if [ ! -d "build" ]; then mkdir build; fi
	pdflatex ${cmd} ${filename}.tex
	pdflatex ${cmd} ${filename}.tex

bib:
	bibtex ${outdir}/${filename}

all: pdf bib pdf

clean:
	rm -r build
