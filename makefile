all: paper.pdf

/figure/figure1.pdf: data/mtcars.csv
	Rscript R/figure1.R

/table/table1.tex: data/mtcars.csv
	Rscript R/table1.R

paper.pdf: paper.tex figure/figure1.pdf table/table1.tex
	pdflatex paper.tex
	pdflatex paper.tex
	bibtex paper.tex
	pdflatex paper.tex
