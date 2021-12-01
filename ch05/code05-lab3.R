class(trees) # 데이터셋 확인
str(trees) # 자료구조 확인
girth.mean <- mean(trees$Girth) #나무 직경 평균값
candidate <- subset(trees, Girth>=girth.mean & Height>80 & Volume>50)
#조건에 맞는 나무 candidate에 저장
candidate
nrow(candidate)

install.packages('reshape2')
library(reshape2)
tips

is.matrix(tips)
class(tips)

head(tips)
str(tips)

table(tips$day)

dinner <- subset(tips, time=='Dinner')
lunch <- subset(tips, time=='Lunch')
table(dinner$day)
table(lunch$day)

colMeans(dinner[c('total_bill','tip','size')])
colMeans(lunch[c('total_bill','tip','size')])

tip.rate <- tips$tip/tips$total_bill
mean(tip.rate)
