str(ds)
head(ds)
unique(ds$loc)
range(ds$mdate)

for(i in 3:8){
  cat(names(ds)[i], sum(is.na(ds[,i])), sum(is.na(ds[,i]))/nrow(ds),'\n')
}

ds=ds[,-8]
ds=ds[complete.cases(ds),]
ds
