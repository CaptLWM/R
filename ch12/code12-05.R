install.packages('fmsb')
library(fmsb)

score = c(80,60,95,85,40)
max.score=rep(100,5)
min.score=rep(0,5)

ds=rbind(max.score, min.score, score)
ds=data.frame(ds)

colnames(ds)=c('국어','영어','수학','물리','음악')

radarchart(ds)
