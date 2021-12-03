ds=read.csv('/Users/iwonmin/Desktop/R/R/ch10/fdeaths.csv', row.names='year')
ds

my.col=c('black','blue','red','green','purple','dark gray')
my.lty=1:6

plot(1:12,
     ds[1,],
     main='월별 사망자 추이',
     type='b',
     lty=my.lty[1],
     xlab='Month',
     ylab='사망자수',
     ylim=c(300,1200),
     col=my.col[1])

for(i in 2:6){
  lines(1:12,# 기준이 될 그래프가 실행중이어야 함
        ds[i,],
        type='b',
        lty=my.lty[i],
        col=my.col[i]
        )
}

legend(x='topright',
       lty=my.lty,
       col=my.col,
       legend=1974:1979)

death = as.vector(window(mdeaths, 1974, c(1974,12)))
plot(1:12,
     death,
     main='월별 사망자 추이',
     type='b',
     lty=1,
     xlab='Month',
     ylab='사망자수')

