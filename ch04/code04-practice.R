#1 리스트, 벡터, 팩터

#2 a (숫자로 구성)

#3 4
v1=c(6,1,3,7,9)
v2=c(9,1,0,3,7)
3*v1-v2 # [1]  9  2  9 18 20

#4
a<-25:150
condi <- a%%3==0 & a<100
sum(condi)

#5
a<-c('good','great','bad','okay','good','bad','good')
f <- factor(a)
unique(a)

#6
shop<-c(76000,52000,36000)
dis<-c(shop[1]*0.95, shop[2]*0.9, shop[3]*0.95)
sum(dis)

#7
smartphone <- list(model="iphone_se",
                   capacity = c(64,128,256),
                   display = 'Retina',
                   color=c('black','red','white'))
smartphone$color

#8
weight <- c(56,23,89,46,76,14,97,72,68,62,35)
names(weight) <- c('a','b','c','d','e','f','g','h','i','j','k')
W<-sum(weight)
W
condi <- weight>(W-600)
weight[condi]
a<-min(weight[condi])
a
names(weight[weight==a])

#9
wether = c('여름','봄','여름','겨울','봄','겨울','여름','여름','봄','가을')
wether = factor(wether)
unique(wether)

#10
country = c('호주','독일','영국','일본','미국','중국','호주','영국','중국','일본','터키','미국','중국','중국','호주','터키','독일','일본','중국','독일')
country = factor(country)
levels(country)
as.integer(country)
#7 1 3 4 2 5 7 3 5 4 6 2 5 5 7 6 1 4 5 1

#11
post <- list(user_id="mr_steve",
             post_id="p11010",
             view = 37,
             image = FALSE,
             like = c("creeper","alex","skeleton","enderman"))

#12
account <- list(name='하늘',
                number = 123-468-120566,
                balance = 4128750,
                history = c(-50000,+20000,-32500,-79000,+42000))

income=account$history>0
sum(income)
ex=account$history<0
sum(ex)
