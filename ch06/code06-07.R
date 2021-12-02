my.iris = subset(iris, Species=='setosa')
write.csv(my.iris, 'my_iris.csv', row.names=F)
getwd()

setwd('/Users/iwonmin/Desktop/R/R/ch06')
my.mtcars = subset(mtcars, gear==4)
write.csv(my.mtcars, 'test.csv', row.names=F)
new.mtcars = read.csv('test.csv')
head(new.mtcars)
