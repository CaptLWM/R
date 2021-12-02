library(xlsx)
my.iris = subset(iris, Species=='setosa')
write.xlsx(my.iris,'my_iris.xlsx', row.names = F)
head(read.xlsx('my_iris.xlsx', header=T, sheetIndex=1))


getwd()
my.mtcars<-subset(mtcars, cyl=6)
write.xlsx(my.mtcars,'test.xlsx',row.names = F)
new.mtcars<-read.xlsx('test.xlsx',header=T,sheetIndex=1)
head(read.xlsx('test.xlsx',header=T, sheetIndex=1))
