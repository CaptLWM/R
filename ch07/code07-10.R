norow=nrow(iris)
mylabel=c()
for(i in 1:norow){
  if(iris$Petal.Length[i]<=1.6){
    mylabel[i]='L'
  } else if(iris$Petal.Length[i]>=5.1){
    mylabel[i]='H'
  } else {
    mylabel[i]='M'
  }
}
print(mylabel)
newds = data.frame(iris$Sepal.Length, mylabel)
head(newds)

num= 1:200
label=c()
for(i in num){
  label[i]=ifelse(i%%2 != 0,'odd','even')
}
num.new = data.frame(num, label)
num.new
