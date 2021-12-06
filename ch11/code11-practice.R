#1
for (i in 1:ncol(Chile)){
  this.na=is.na(Chile[,i])
  cat(colnames(Chile)[i],'\t',sum(this.na),'\n')
}

#2
n=sum(rowSums(is.na(Chile))>0)/nrow(Chile)*100
cat(n,'%')

#3
str(airquality)
tmp = airquality[,c('Ozone','Solar.R','Wind','Temp','Month','Day')] 
tmp$Ozone[is.na(tmp$Ozone)]=0
tmp$Solar.R[is.na(tmp$Solar.R)]=0
tmp

#4
head(airquality)
airquality[order(airquality$Solar.R,decreasing=T),]

#5
tmp=airquality[c("Month","Day","Solar.R")]
tmp
tmp[order(tmp$Solar.R, decreasing = T),]

#6
tmp=airquality[order(airquality$Solar.R),c('Month','Day','Solar.R')]
tmp
tmp[1:10,]

#7
str(CES11)
set.seed(1234)
idx=sample(1:nrow(CES11), size=200, replace=F)
idx.200=CES11[idx,]
table(idx.200$urban)

#8
set.seed(1234)
idx=sample(nrow(CES11), nrow(CES11)*.2)
idx.20=CES11[idx,]
table(idx.20$education)

#9
x=c('김밥','라면','쫄면','칼국수','아메리카노')
com=combn(x,3)
com #10가지


for(i in 1:ncol(com)){
  if('라면' %in% com[,i]){
      cat('라면',com[,i],'\n')  
  }
}

#10
str(Leinhardt)
x=Leinhardt[complete.cases(Leinhardt),]
region.infant=aggregate(x[,'infant'],by=list(대륙=x$region),FUN=mean) #대륙별 평균영아사망률
region.infant

oil.infant=aggregate(x[,'infant'],by=list(산유국=x$oil),FUN=mean) #산유국 여부에 따른 평균영아사망률
oil.infant

y=mean(x$income)
income.up.infant=aggregate(x[,'infant'],by=list(인당소득=x$income>=y),FUN=mean) #소득별 평균 영아 사망률
income.up.infant

#11
str(Ericksen)
city.minority=aggregate(Ericksen[,'minority'],by=list(지역=Ericksen$city), FUN=mean) # 지역별 평균소수인종 비율
city.minority

minority.crime=aggregate(Ericksen[,'crime'],by=list(인종비율=(Ericksen$minority>=25)),FUN=mean)
minority.crime #인종비율 별 평균 범죄율
minority.poverty=aggregate(Ericksen[,'poverty'],by=list(인종비율=(Ericksen$minority>=25)),FUN=mean)
minority.poverty #인종비율 별 빈곤율

grp = rep('L',nrow(Ericksen)) # 졸업자 비율
grp[28.0<=Ericksen$highschool  & Ericksen$highschool<40]='M'
grp[40<=Ericksen$highschool] = 'H'
tmp=data.frame(Ericksen,grp)
tmp
highschool.housing=aggregate(tmp[,'housing'],by=list(고졸여부=tmp$grp),FUN=mean)
highschool.housing #고졸, 거주비율
highschool.crime=aggregate(tmp[,'crime'],by=list(고졸여부=tmp$grp),FUN=mean)
highschool.crime #고졸, 범죄율
highschool.poverty=aggregate(tmp[,'poverty'],by=list(고졸여부=tmp$grp),FUN=mean)
highschool.poverty #고졸, 빈곤율

highschool.problem=data.frame(highschool.housing, highschool.crime[,2], highschool.poverty[,2])
highschool.problem
