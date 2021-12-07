mdate = as.character(ds$mdate)
head(mdate)
ds$year = as.numeric(substr(mdate,1,4))
ds$month=as.numeric(substr(mdate,5,6))
ds$hour=as.numeric(substr(mdate,9,10))
ds$locname=NA
ds$locname[ds$loc==111123]='서울'
ds$locname[ds$loc==336111]='목포'
ds$locname[ds$loc==632132]='강릉'

head(ds)
