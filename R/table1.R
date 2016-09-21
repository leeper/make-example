library("stargazer")

mtcars <- read.csv("data/mtcars.csv")
m <- lm(mpg ~ wt, data = mtcars)
stargazer(m, out = "table/table1.tex")
