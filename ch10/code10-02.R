#데이터준비
grad = state.x77[,'HS Grad']
grad

#사분위수
summary(grad) 
var(grad) ##분산
sd(grad) # 표준편차

#히스토그림
hist(grad, main='주별 졸업률',
     xlab='졸업률',
     ylab='주의 개수',
     col='orange')

#상자그림
boxplot(grad, main='주별 졸업률',
        col='orange')

#졸업률이 가장 높은/낮은 주
idx=which(grad==max(grad))
grad[idx]
idx=which(grad==min(grad))
grad[idx]

#졸업률 평균 이하인 주
idx=which(grad<mean(grad))
grad[idx]

hist(TitanicSurvival$age, main='age',
     xlab='age',
     ylab='cnt')

boxplot(TitanicSurvival$age, main='age')

