mtcars

boxplot(mtcars$mpg)

boxplot(mtcars$mpg~mtcars$gear)

boxplot(mtcars$mpg~mtcars$vs)

boxplot(mtcars$mpg~mtcars$am)

grp=rep('high',nrow(mtcars)) #중량이 평균이상인 그룹'high'
grp[mtcars$wt<mean(mtcars$wt)]='low' #중량이 평균 이하인 그룹'low'
boxplot(mtcars$hp~grp)
