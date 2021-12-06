combn(1:5,3) #1~5에서 3개

x=c('red','green','blue','black','white')
com = combn(x,2) #x의 원소 2개
com

for(i in 1:ncol(com)){
  cat(com[,i],'\n')
}

sp=levels(iris$Species)
combn(sp,2)
