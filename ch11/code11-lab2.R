str(Highway1)
Highway1[order(Highway1$rate, decreasing=T),]

tmp = Highway1[order(Highway1$len, decreasing = T),'len']
tmp
sum(tmp[1:10])

tmp=Highway1[order(Highway1$adt),c('adt','rate')]
tmp
tmp[1:10,]

tmp = Highway1[order(Highway1$slim, decreasing = T),c('len','adt','rate')]
tmp
tmp[1:5,]
