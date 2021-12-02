#1
getwd()
library(svDialogs)
input.value <- dlgInput('Input a value')$res

#2 \n

#3 작업폴더, getwd(), setwd()

#4 .csv

#5 xlsx, read.xlsx, write.xlsx

#6 sink 'result.txt' sink

#7
library(svDialogs)
a<-as.numeric(dlgInput('밑변길이')$res)
b<-as.numeric(dlgInput('높이')$res)
c<-a*b/2
c
cat('삼각형 넓이:', c,'\n')

#8
ds <- read.table('ds_tab.txt', header=F, sep='\t')

#9
aa <- read.table('ds.txt', header=F, sep='')
write.csv(aa,'ds.csv', row.names=F)

#10
write.xlsx(iris, 'iris.xlsx', row.names=F)

#11 2번 sink('log.txt') -> sink('log.txt', append=T) 로 변경

