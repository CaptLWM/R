#1 매트릭스, 데이터프레임

#2 관측값, 변수

#3
x<-c(2,4,6,8)
y<-c(10,12,14,16)
z<-c(18,20,22,24)
m<-cbind(x,y,z)
m

matrix(c(2,10,18,
         4,12,20,
         6,14,22,
         8,16,24),
       nrow=4, byrow=T)
matrix(c(2,4,6,8,
         10,12,14,16,
         18,20,22,24),
       ncol=3, byrow=F)

#4 
colnames(m)=c('x','y'); rownames(m)=c('a','b','c','d')

#5
t(m)
df <- as.data.frame(m)
df.new<-data.frame(df,info)
class(df.new)

#6
blood <- c('A','O','AB','B','B')
rh <- c('+','+','-','+','+')
age <- c(21,30,43,17,26)

df <- data.frame(blood, rh, age)
colnames(df)
df.nb <- subset(df, blood != 'B')
df.nb

#7
str(cars)
dim(cars)
#[1] 50  2
#[2] speed, cars, 숫자

#8
matrix(1:12, nrow=3)%%3 #T
matrix(1:12, nrow=3)+3#T
matrix(1:12, nrow=3) + matrix(1:12, nrow=4)#F
matrix(1:12, nrow=3) + matrix(1:12, nrow=3)#T
rbind(matrix(1:9,nrow=3), c('1','2','3'))+3#F

#9
num <- c(1,2,3,4,5,6,7)
title <- c('그대랑','다툼','빨래','두통','보조개','매듭','이상해')
like <- c(16075,8218,12119,738,3200,16144,5110)
a<-max(like)
love <- data.frame(num,title,like)
best <- subset(love, like==a)
best

#10
name = c('스티브','엔더맨','크리퍼')
L1=c(97,88,100)
H1=c(100,82,96)
M1=c(83,90,76)
S1=c(95,91,89)
E1=c(92,87,95)
mid=data.frame(name, L1,H1, M1, S1, E1)
mid
L2=c(94,92,100)
H2=c(95,95,100)
M2=c(90,87,85)
S2=c(92,95,84)
E2=c(89,94,96)
final=data.frame(name, L2, H2, M2, S2, E2)
final
mean<-data.frame(mid, final[,2:6]) # 중간 기말 데이터 통합 
mean
each.mean = rowMeans(mean[,2:11]) # 개인 평균
total.mean<-data.frame(mean, each.mean) # 개인 평균, 중간 기말 점수 통합
total.mean

#11
class(cars) # data.farme
nrow(cars)
ncol(cars)
head(cars)
str(cars)
a<-max(cars$dist)
subset(cars, cars$dist==a)

#12
is.matrix(InsectSprays)#False
str(InsectSprays) # 'data.frame':	72 obs. of  2 variables:
tail(InsectSprays,10)
levels(InsectSprays$spray)
table(InsectSprays$spray)
InsectSprays.e<-subset(InsectSprays, InsectSprays$spray=='E')
InsectSprays.e
colMeans(InsectSprays.e['count']) # 3.5
