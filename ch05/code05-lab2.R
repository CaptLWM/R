kcal = c(514,533,566)
na = c(917,853,888)
fat = c(11,13,10)
menu = c('새우','불고기','치킨')

burger = data.frame(kcal, na, fat, menu)
burger

rownames(burger)=c('M','L','B')
burger
