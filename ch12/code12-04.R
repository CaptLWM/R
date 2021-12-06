head(airquality)
ds=airquality[complete.cases(airquality),]
unique(ds$Month)

month.avg=aggregate(ds$Ozone, by=list(ds$Month), median)[2]
month.avg

month.avg=month.avg[,1]
names(month.avg)=5:9

odr=rank(-month.avg)
odr

boxplot(Ozone~Month, data=ds,
        col=heat.colors(5)[odr],
        ylim=c(0,170),
        ylab='오존농도',
        xlab='월',
        main='여름철 오존농도')

boxplot(Temp~Month, data=airquality,
        ylab='기온',
        xlab='월',
        main='월별기온')

