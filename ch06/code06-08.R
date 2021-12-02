install.packages('xlsx')
library(xlsx)
air <- read.xlsx('/Users/iwonmin/Desktop/R/R/ch06/airquality.xlsx',header=T,sheetIndex=1)
head(air)
