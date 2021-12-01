#매트릭스를 데이터 프레임으로 변환
is.matrix(state.x77)
st <- data.frame(state.x77)
head(st)
class(st)

#데이터프레임을 매트릭스로 변환
is.data.frame(iris[,1:4])
iris.m <-as.matrix(iris[,1:4])
head(iris.m)
class(iris.m)

class(mtcars)
is.matrix(mtcars)
is.data.frame(mtcars)
mtcars.m <-as.matrix((mtcars))
class(mtcars.m)
