month = 1:12
late1 = c(5,8,7,9,4,6,12,13,8,6,6,4)
late2 = c(4,6,5,8,7,8,10,11,6,5,7,3)
plot(month,
     late1,
     main='Late students',
     type='b',
     col='red',
     xlab='month',
     ylab='late cnt')

lines(month,
      late2,
      type='b',
      col='blue')
c1 = subset(ChickWeight, Chick==1)
c21 = subset(ChickWeight, Chick==21)

plot(c1$Time,
     c1$weight,
     main='병아리 체중변화',
     type='b',
     col='red',
     xlab='Time',
     ylab='Weight',
     ylim=c(40,400)
     )
lines(c21$Time,
      c21$weight,
      type='b',
      col='blue')
