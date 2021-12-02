#if-else를 이용한 처리
a=10
b=20
if(a>b){ #맨 앞에서 실행 시켜야함
  c=a
} else{
  c=b
}
print(c)

#ifelse를 이용한 처리
a=10
b=20
c=ifelse(a>b,a,b)
print(c)

weather = '맑음'
choice = ifelse(weather=='비','우산','모자')
print(choice)