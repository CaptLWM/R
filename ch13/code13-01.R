install.packages('HSAUR')
library(HSAUR)
data('/Users/iwonmin/Desktop/R/R/ch13/Forbes Top2000 2017.csv')
ds=Forbes2000
ds
ds[!complete.cases(ds),]

comp= read.csv('/Users/iwonmin/Desktop/R/R/ch13/Forbes Top2000 2017.csv')
comp[!complete.cases(comp),]
head(comp)
table(comp$Country)
tmp=sort(table(comp$Country), decreasing=T)
top.10.country=tmp[1:10]
top.10.country

par(mar=c(8,4,4,2))
barplot(top.10.country,
        main='기업수 상위 10개국-2017년',
        col=rainbow(10),
        las=2)
