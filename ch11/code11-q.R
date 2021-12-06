help(Chile)
str(Chile)

sum(is.na(Chile))
ch=Chile[complete.cases(Chile),] #결측값 제거

set.seed(100)
idx = sample(nrow(ch),nrow(ch)*.6) #60%샘플링
ch60 = ch[idx,]
dim(ch60)

agg=aggregate(ch60[,'population'], by=list(지역=ch60$region),sum)
agg[order(agg$x,decreasing=T),]

table(ch60$vote)

no.people = table(ch60$sex)
tmp = subset(ch60, vote=='Y')
agg=aggregate(tmp[,'vote'],by=list(성별=tmp$sex),length)
yes.ratio=agg$x/no.people
yes.ratio

no.region=table(ch60$region)
tmp=subset(ch60, vote=='Y')
agg=aggregate(tmp[,'vote'],by=list(지역=tmp$region),length)
yes.ratio=agg$x/no.region
yes.ratio
