plot(iris.2,
     main='Iris plot',
     pch=c(group),
     col=color[group])

legend(x='bottomright',
       legend=levels(iris$Species),
       col=c('red','green','blue'),
       pch=c(1:3))

group = as.numeric(factor(codling$Cultivar))
color = rainbow(7)
plot(codling[,c('dose','pobs','ct')],
     pch=group,
     col=color[group])
