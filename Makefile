all: thesis

thesis: main.tex
	pdflatex -output-directory out --shell-escape main.tex

biber: biblio.bib
	biber out/main

template: fi-pdflatex.tex
	pdflatex -output-directory out --shell-escape fi-pdflatex.tex

biber-template: example.bib
	biber out/fi-pdflatex

clean:
	$(RM) -r out/
