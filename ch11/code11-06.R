head(x)
x[!complete.cases(x),] #NA가 포함된 행을 나타냄
y=x[complete.cases(x),] #NA가 포함된 행들을 제거
head(y)

col_na=function(y){
  return(sum(is.na(y)))
}

apply(airquality, 2, FUN=col_na)
