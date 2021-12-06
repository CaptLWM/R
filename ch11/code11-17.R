head(mtcars)
agg=aggregate(mtcars,by=list(cyl=mtcars$cyl, vs=mtcars$vs),FUN=max)
agg

agg=aggregate(iris[,'Sepal.Length'],by=list(품종=iris$Species),FUN=max)
agg
