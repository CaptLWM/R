iris.2 = iris[,3:4]
levels(iris$Species)
group = as.numeric(iris$Species)
group
color = c('red','green','blue')
plot(iris.2,
     main='Iris plot', 
     pch=c(group), #점 모양 선택
     col=color[group]) #색상 선택
