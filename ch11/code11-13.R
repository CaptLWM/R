sample(1:20, size=5)
sample(1:20, size=5)
sample(1:20, size=5)
set.seed(100) #임의추출한 값 고정
sample(1:20, size=5)
set.seed(100)
sample(1:20, size=5)
sample(1:20, size=5) #한번만 적용됨

idx = sample(nrow(state.x77), size=10, replace=F)
state.10=state.x77[idx,]
state.10
