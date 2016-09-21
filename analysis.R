# R code analogous to `makefile`

## Figure 1
if (!file.exists("figure/figure1.pdf") || file.mtime("R/figure1.R") > file.mtime("figure/figure1.pdf")) {
    message("Making figure1.pdf")
    source("R/figure1.R", echo = FALSE)
}

## Table 1
if (!file.exists("table/table1.tex") || file.mtime("R/table1.R") > file.mtime("table/table1.tex")) {
    message("Making table1.tex")
    source("R/table1.R", echo = FALSE)
}

## Paper
p <- "paper.tex"
if (!file.exists("paper.pdf") || file.mtime(p) > file.mtime("paper.pdf")) {
    message("Making paper.pdf")
    system(paste("pdflatex", p))
    system(paste("pdflatex", p))
    system(paste("bibtex", p))
    system(paste("pdflatex", p))
}
