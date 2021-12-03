install.packages('DAAG')
library(DAAG)

ds=table(science$like) 
pie(ds, main='선호 점수별 비율', #2차원 원그래프
    col=rainbow(length(ds)),
    radius=1)

library(plotrix)

ds = table(science$State)
pie3D(ds, main='주별 학생 비율', #3차원 원그래프
      labels=names(ds),
      labelcex=1.0,
      explode=0.1,
      radius=1.5,
      col=c('brown','green'))

year=1875:1972
ds=data.frame(year, LakeHuron)

plot(ds$year,
     ds$LakeHuron,
     main='수위변화',
     type='b',
     lty=1,
     col='blue',
     xlab='year',
     ylab='stage')
