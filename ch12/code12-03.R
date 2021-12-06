ds=read.csv('/Users/iwonmin/Desktop/R/R/ch12/seoul_temp_2017.csv')
par(family="AppleGothic")
dim(ds)
head(ds)

summary(ds$avg_temp)
boxplot(ds$avg_temp,
        col='green',
        ylim=c(-20,40),
        xlab='서울1년기온',
        ylab='기온')

month.avg = aggregate(ds$avg_temp, by=list(ds$month), median)[2]
month.avg

month.avg = month.avg[,1]
names(month.avg)=1:12

odr = rank(-month.avg) #평균기온 순위 내림차순 
odr

boxplot(avg_temp~month, data=ds,
        col=heat.colors(12)[odr],
        ylim=c(-20,40),
        ylab='기온',
        xlab='월',
        main='서울시 월별 기온 분포')

boxplot(state.x77[,'Income'], col='orange')
