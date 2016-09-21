# Example of `make` for data analysis

This repository shows how to use `make` for a data analysis project.

The paper (PDF) is generated from a LaTeX source file, a table, and a figure.

`make` generates the table and figure using R code, and then generates the PDF from the manuscript.

`make` is clever because it deconstructs each part of the analysis so that only parts that have changed need to be rerun.

Zach Jones has [a good tutorial](http://zmjones.com/make/) about this.
