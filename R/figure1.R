mtcars <- read.csv("data/mtcars.csv")
pdf(file = "figure/figure1.pdf")
hist(mtcars[["mpg"]])
dev.off()
