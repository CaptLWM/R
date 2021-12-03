st = data.frame(state.x77)
head(st)

plot(st)

cor(st)

par(family="AppleGothic")

tmp = carprice[,c('Price','gpm100','MPG.city','MPG.highway')]
plot(tmp)
cor(tmp)
