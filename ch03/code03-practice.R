#1
a <- 7
b <- 7 
c <- a*b
c

#2
a<-90
b<-60
c<-80
d<-360-(a+b+c)
d

#3
a<-4
b<-3
s<-(a*b)/2
s

#4
v1 <- 20
v2 <- 30
time1 <- 60/v1
time2 <- 60/v2
avg <- time1+time2
avg

#5
#A:25 B:125 C:sugar D:water E:percent

#6
v <- c(92,43,55,28,19)

#7
v1 <- c('cyan','magenta','yellow','black')
v2 <- c(TRUE,FALSE,TRUE)
v3 <- c(37.5,8.2,9.6,11.8,24.9)

#8
#숫자와 문자열은 서로 합할 수 없음

#9
v1 <- c('T','T','T','F','T','F','F','T','T','F')
sum(v1) # 에러 발생, 문자열은 합할 수 없음
v2 <- c(T,T,T,F,T,F,F,T,T,F)
sum(v2) # TRUE, FALSE 는 1, 0으로 인식

#10
v3 <- 1:5000
sum(v3)

#11
even <- seq(0,100,2)
sum(even)

#12
d <- 1:100
odd <- d[seq(1,100,2)]
odd[seq(from = 1, to=length(odd)-10, by=1)]
odd[c(3,7,32)]
pick <- c('3rd','7th','32th')
pick[-2]
pick[1]<-3
pick[1]
