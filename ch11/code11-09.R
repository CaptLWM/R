name=c('정대일','강재구','신현석','홍길동')
order(name) #값의 크기에 따라 값들의 인덱스를 정렬
order(name, decreasing=T)

idx=order(name)
name[idx]

sort(iris$Petal.Length, decreasing=T)
