head(cars)

plot(cars$speed,
     cars$dist,
     main='speed and dist',
     xlab='속도',
     ylab='제동거리')

cor(cars$speed, cars$dist)

plot(carprice$MPG.city,
     carprice$Price,
     xlab='연비',
     ylab='가격')

cor(carprice$MPG.city, carprice$Price)
