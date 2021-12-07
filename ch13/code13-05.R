str(comp)
tmp = comp[order(comp$Market.Value, decreasing=T),]
tmp[1:10, c('Company','Country','Sector','Market.Value')]
