bt <- c('A','B','B','O','AB','A')
bt.new<-factor(bt) #팩터 bt.new 정의
bt
bt.new
bt[5]
bt.new[5]
levels(bt.new) #저장된 값의 종류 출력
as.integer(bt.new) # 문자값을 숫자로 바꾸어 출력
bt.new[7]<-'B'
bt.new[8]<-'C' #사전에 정의된 값 종류 외에 다른값 들어오는 것을 막음
bt.new

a <-c('red','white','brown','green','white','red','brown','white')
b <-factor(a)
levels(b)
as.integer(b)
