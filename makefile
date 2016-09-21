all: paper.pdf

figure/figure1.pdf: R/figure1.R data/mtcars.csv
	Rscript R/figure1.R

table/table1.tex: R/table1.R data/mtcars.csv
	Rscript R/table1.R

paper.pdf: paper.tex figure/figure1.pdf table/table1.tex
	pdflatex $<
	pdflatex $<
	bibtex $<
	pdflatex $<
