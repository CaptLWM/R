library(carData)

# 데이터 준비
room.class = TitanicSurvival$passengerClass
room.class

#도수분포표 계산
tbl = table(room.class)
tbl
sum(tbl)

#막대그래프 작성
barplot(tbl, main='선실별 탑승객',
        xlab='선실등급',
        ylab='탑승객수',
        col = c('blue','green','yellow'))

# 원그래프 작성
tbl/sum(tbl)
par(mar=c(1,1,4,1))
pie(tbl, main='선실별 탑승객',
    col=c('blue','green','yellow'))
par(mar=c(5.1,4.1,4.1,2.1))

tbl=table(TitanicSurvival$sex)
barplot(tbl, main='성별 탑승객수',
        xlab='성별',
        ylab='탑승객수',
        col=c('green','blue'))

