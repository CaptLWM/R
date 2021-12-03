boxplot(Petal.Length~Species,
        data=iris,
        main='품종별 꽃잎의 길이',
        col=c('green','yellow','blue'))

boxplot(state.x77[,'Population']~state.region)
#서로 다른 데이터 셋을 이용하여 그래프 그릴 수 있음