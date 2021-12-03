#1
n = 12
type = ifelse(n%%2==1,'odd','even')
print(type)

#2
res=ifelse(n<0,-n,n)

#3
input = 1:10
n = as.numeric(length(input))
switch = T
if(switch==T){
  for(i in 1:n){
    result=result*i
  }
} else { #else 위치 변경 
  result=sum(input)
}
print(result)  
