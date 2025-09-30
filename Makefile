all: thesis

thesis: fi-pdflatex.tex
	pdflatex -output-directory out --shell-escape fi-pdflatex.tex

biber: example.bib
	biber out/fi-pdflatex

clean:
	$(RM) -r out/
