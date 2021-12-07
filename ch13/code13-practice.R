#1.(1)
tmp = comp[order(comp$Rank, decreasing=T),] # 하위 10개 기업
under.10=tmp[1:10, c('Rank','Company','Sales')]

tmp=comp[order(comp$Rank, decreasing=F),] # 상위 10개 기업
top.10=tmp[1:10, c('Rank','Company','Sales')]
par(mfrow=c(1,2), mar=c(3,3,4,2))
barplot(top.10$Sales~top.10$Company,
        main='top 10 sales',
        col='blue',
        las=2,
        xlab='Company',
        ylim=c(0,300))

barplot(under.10$Sales~under.10$Company,
        main='under 10 sales',
        col='red',
        las=2,
        xlab='Company',
        ylim=c(0,15))
par(mfrow=c(1,1), mar=c(8,4,4,5))

#1.(2)
str(comp)
tmp=comp[order(comp$Profits, decreasing=T),]
top.10.profit=tmp[1:10, c('Rank','Company','Sales','Profits')]
top.10.profit
barplot(cbind(Sales,Profits)~Company,top.10.profit,,
        col=c('green','red'),
        beside=T,
        legend.text=T)

#1.(3)
str(comp)
tmp=comp[order(comp$Assets, decreasing=T),]
top.10.Assets=tmp[1:10,c('Company','Assets')]
top.10.Assets
barplot(top.10.Assets$Assets~top.10.Assets$Company,
        xlab='Company',
        ylab='Assets',
        col=rainbow(10),
        ylim=c(0,3500))

#1.(4)
tail(comp)
tmp = comp[order(comp$Rank, decreasing=F),]
x=nrow(tmp)*0.2
top20=tmp[1:x, c('Rank','Sales')]
tmp = comp[order(comp$Rank, decreasing=T),]
bottom20=tmp[1:x, c('Rank','Sales')]
top.bottom = cbind(top20,bottom20)

boxplot(top.bottom$Sales~top.bottom$Sales.1,
        ylim=c(0~80))
