# else가 생략된 if 문
job.type = 'A'
bonus=100
if(job.type=='B'){
  bonus=200
}
print(bonus)
#---------------------
a=10
if(a<5){
  print(a)
} else{
  print(a*10)
  print(a/10)
}
#--------------------
a=10
b=20
if(a>5 & b>5){
  print(a+b)
}
if(a>5|b>30){
  print(a*b)
}

purchase=49000
if(purchase>=50000){
  price = purchase*0.9
} else {
  price = purchase*0.95
}
print(price)
