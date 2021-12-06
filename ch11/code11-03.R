x=iris
x[1,2]=NA;x[1,3]=NA
x[2,3]=NA; x[3,4]=NA
head(x)
#열별 결측값 개수 확인
#for문 사용
for(i in 1:ncol(x)){
  this.na = is.na(x[,i])
  cat(colnames(x)[i],'\t',sum(this.na),'\n')
}

#apply를 사용
col_na=function(y){
  return(sum(is.na(y)))
}

na_count = apply(x,2,FUN = col_na)
na_count
