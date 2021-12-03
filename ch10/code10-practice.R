#1 데이터 정제 및 전처리

#2 산점도

#3 원그래프

#4
library(Ecdat)
str(Hdma)
tbl = table(Hdma$self)
tbl = tbl/sum(tbl)
names(tbl)= c('비자영업','자영업')
barplot(tbl, main='자영업자 비율', #4.1 자영업자 비율
        col=c('green','yellow'),
        ylim=c(0,1),
        ylab='비율')

tbl2=table(Hdma$single)
tbl2=tbl2/sum(tbl2)
tbl2
names(tbl2)=c('기혼','미혼')
pie(tbl2, main='기혼,미혼 비율', #4.2 기혼,미혼 비율
    col=c('green','blue'))

boxplot(Hdma$uria, main='실업률',col='brown') #4.3 실업율 분포
boxplot.stats(Hdma$uria)#정상범위 : 2.0~4.3 / 범위 벗어난 값 457

loan.yes = mean(Hdma$hir[Hdma$deny=='yes']) #4.4 대출 승인 hir 평균
loan.yes #0.2902124
loan.no = mean(Hdma$hir[Hdma$deny=='no']) #4.4 대출 거절 hir 평균
loan.no #0.2506052
# 4.5 -> 대출 승인된 사람들의 hir 평균이 거절된 사람보다 크기때문에 대출에 유리하다.

