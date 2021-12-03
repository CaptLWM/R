#1
install.packages('carData')
library(carData)
str(MplsStops)
ds = table(MplsStops$race)
pie(ds, # 인종비율
    main='race',
    radius=1)
ds=table(MplsStops$problem)
pie(ds, main='ploblems', # 멈춤 원인
    col=c('red','blue'),
    radius=1)
ds=table(MplsStops$personSearch)
pie(ds, main='perosnSearch', # 수색 여부
    radius=1)
library(plotrix)
ds=table(MplsStops$gender)
pie3D(ds, main='gender', # 성별 비율
      labels=names(ds),
      labelcex=1.0,
      explode=0.1,
      radius=1,
      col=c('orange','green','yellow'))

#2
library(DAAG)
data(greatLakes)
ds=data.frame(year=1918:2009, greatLakes)
ds
plot(ds$year, #Erie호 연도별 수위 변화
     ds$Erie,
     main='stage',
     type='b',
     lty=1,
     col='red',
     xlab='year',
     ylab='stage')

plot(ds$year, #michHuron 수위변화 점선 그래프
     ds$michHuron,
     main='stage',
     type='b',
     lty=2,
     col='red',
     xlab='year',
     ylab='stage',
     ylim=c(173.0,177.5))
lines(ds$year, #Erie 그래프 추가
      ds$Erie,
      type='b',
      col='blue')
lines(ds$year,
      ds$StClair, # StClair 그래프 추가
      type='b',
      col='green')

#3
head(cfseal)
boxplot(cfseal[,'weight']) #물개 체중 분포
heart=cfseal[,'heart']
boxplot.stats(heart) #특이값, 1012, 1075
grp = rep('young', nrow(cfseal)) # 나이와 몸무게 상관관계
grp[cfseal$age > mean(cfseal$age)]='old'
boxplot(cfseal$weight~grp, 
        main='age-weight',
        col=c('orange','green'))

weight=cfseal[,'weight']
boxplot.stats(weight) # 위 무게 사분위수 확인 1사분위:28.0 / 3사분위 :68.5
grp = rep('low',nrow(cfseal)) # 위 무게 범위 설정
grp[28.0<=cfseal$weight  & cfseal$weight<68.5]='middle'
grp[68.5<=cfseal$weight] = 'high'
boxplot(cfseal$stomach~grp, #boxplot 생성
        main='stomach weight') 

#4
data(greatLakes)
ds=data.frame(greatLakes)
plot(ds$Erie, ds$michHuron, main='Erie-michHuron',#Erie, michHuron 수위
     col=c('red','green'))

greatlakes2 = ds[,1:4]
plot(greatlakes2, main='all greatLakes',
     col=c('red','green','brown','black'))

#5
data(grog)
str(grog)
head(grog,5)
plot(grog$Beer, grog$Wine, 
     main='Beer-Wine', col=c('black','red')) # 맥주 와인 산점도
group = as.numeric(grog$Country)
color=c('red','blue')
grog[,-5]
plot(grog[,c(1,3)], # 맥주,와인, 스피릿 다중 산점도
     pch=c(group),
     col=color[group])
