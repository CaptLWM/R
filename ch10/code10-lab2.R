str(longley)
head(longley)

df = longley[,c('GNP','Unemployed','Armed.Forces','Population','Employed')]
plot(df)
cor(df)

install.packages('Ecdat')
library(Ecdat)
str(Hdma)

tbl = table(Hdma$deny)
tbl=tbl/sum(tbl)
tbl
barplot(tbl, main='주택담보대출 승인/거절',
        col=c('green','yellow'),
        ylim=c(0,1),
        ylab='비율')

hist(Hdma$lvr, main='주택가격대비 대출금 비율',
     col=rainbow(10))

black.yn = table(Hdma$black)
#흑인 신청자 중 거절 비율
black.deny = sum(Hdma$black=='yes'&Hdma$deny=='yes')/black.yn['yes']
#비흑인 신청자중 거절 비율
non.black.deny = sum(Hdma$black=='no'&Hdma$deny=='yes')/black.yn['no']
cat('흑인, 비흑인 거절율 : ',black.deny,non.black.deny,'\n')

black.credit = mean(Hdma$ccs[Hdma$black=='yes'])
non.black.credit=mean(Hdma$ccs[Hdma$black=='no'])
cat('흑인, 비흑인 신용등급 : ',black.credit, non.black.credit,'\n')

df = Hdma[,c('dir','hir','ccs','mcs')]
point.col = c('green','red')
plot(df, col=point.col[Hdma$deny])
cor(df)

