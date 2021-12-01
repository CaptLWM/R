IR.1 <- subset(iris, Species=='setosa')
IR.1
IR.2 <- subset(iris, Sepal.Length>5.0 &
                 Sepal.Width>4.0)
IR.2
IR.2[, c(2,4)]
