# Simple LaTeX Makefile

FILE=main
BIB=false # true for bibtex 

all: $(FILE).pdf

.PHONY: clean

clean:
	@rm -f \
	 *.aux *.blg *.out \
	 *.bbl *.log *.nav \
	 *.synctex.gz *.toc \
	 *.snm *.tex.bak *.sty.bak

$(FILE).pdf: $(FILE).tex
	pdflatex $(FILE)
	pdflatex $(FILE)
	ifeq ( $(BIB),true )
		bibtex $(FILE)
	endif
	pdflatex $(FILE)
	pdflatex $(FILE)
