str(iris) #데이터셋 요약정보 보기
iris[,5] #품종 데이터 보기
levels(iris[,5]) #품종 종류 보기(중복제거)
table(iris[,'Species']) #품종 별 개수

head(sleep, n=10)
tail(sleep, n=8)
dim(sleep)
nrow(sleep)
ncol(sleep)
colnames(sleep)
str(sleep)
levels(sleep[,'group'])
table(sleep[,'group'])
