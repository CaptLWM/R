str(comp)

table(comp$Sector)
tmp=sort(table(comp$Sector), decreasing=T)
top.10.category = tmp[1:10]
top.10.category

par(mar=c(10,4,4,2))
barplot(top.10.category,
        main='상위 10개 업종',
        col='pink',
        las=2)
par(mar=c(5,4,4,2))

tmp=comp[comp$Sector %in% names(top.10.category),]
tmp
levels(tmp$Sector)
tmp$Sector = factor(tmp$Sector)
levels(tmp$Sector)

par(mar=c(10,4,4,2))
boxplot(Assets~Sector, data=tmp,
        ylim=c(0,100),
        xlab='',
        las=2)

