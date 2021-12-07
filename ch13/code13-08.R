getwd()
setwd('/Users/iwonmin/Desktop/R/R/ch13')
files = c('ds.2015.csv','ds.2016.csv','ds.2017.csv','ds.2018.csv','ds.2019.csv')
ds=NULL
for(f in files){
  tmp=read.csv(f, header=T)
  ds = rbind(ds,tmp)
  print(f)
}

head(ds)
tail(ds)
