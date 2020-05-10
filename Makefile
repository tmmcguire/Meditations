all: meditations-signatures.pdf

meditations-signatures.pdf: meditations.pdf
	sh ./signatures.sh

meditations.pdf: meditations.tex
	xelatex meditations.tex
	xelatex meditations.tex

clean:
	rm -f *.aux *.log* *.out *.pdf *.toc
