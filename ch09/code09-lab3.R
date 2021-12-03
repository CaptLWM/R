library(DAAG)
str(tinting)

plot(tinting$it, tinting$csoa)

group = as.numeric(tinting$tint)
color = c('red','green','blue')
plot(tinting$it,tinting$csoa,
     pch=c(group),
     col=color[group])

group = as.numeric(tinting$agegp)
color=c('red','blue')
plot(tinting$it,tinting$csoa,
     pch=c(group),
     col=color[group])

#실전분석
str(socsupport) #데이터 구조 확인
help(socsupport) # 변수별 의미 확인

library(plotrix)
ds=table(socsupport$age)
pie3D(ds, main='연령분포',
      labels=names(ds),
      labelcex=1.0,
      explode=0.1,
      radius=1.5,
      col=rainbow(length(ds)))

boxplot(socsupport$emotional~socsupport$country,
        main='정서적 지원제도 비교')

boxplot(socsupport$emotionalsat~socsupport$gender,
        main='정서적 지원 제도 만족도 비교')

boxplot(socsupport$emotionalsat~socsupport$age,
        main='정서적 지원 제도 만족도 비교',
        col=rainbow(5))

group = as.numeric(socsupport$gender)
color = c('blue','red')
plot(socsupport[,c('emotionalsat','tangiblesat','age')],
     pch=group,
     col=color[group])
