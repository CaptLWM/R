#작성된 함수 어디서든 사용 가능
#R 종료 하면 함수 코드 다시 실행시켜주어야 함
mymax=function(x,y){
  num.max=x
  if(y>x){
    num.max=y
  }
  return(num.max)
}