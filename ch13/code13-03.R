table(ds$country)
tmp=sort(table(ds$country), decreasing = T)
top.10.country=tmp[1:10]
top.10.country

par(mar=c(8,4,4,2))
barplot(top.10.country,
        main='기업수 상위 10개국',
        col=rainbow(10),
        las=2)
par(mar=c(5,4,4,2))
