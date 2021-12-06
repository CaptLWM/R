library(carData)
str(UN)

col_na=function(y){
  return(sum(is.na(y)))
}

mean(UN$lifeExpF, na.rm=T) # NA 제외하고 여성평균수명 확인

tmp=UN[,c('pctUrban','infantMortality')]
tmp=tmp[complete.cases(tmp),]
colMeans(tmp)

tmp=subset(UN, region=='Asia')
mean(tmp$fertility, na.rm=T)
