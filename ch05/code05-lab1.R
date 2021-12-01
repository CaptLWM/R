m = matrix(c(50,5,10,100),nrow=2)
colnames(m)=c('prd_Y','prd_N')
rownames(m)=c('act_Y','act_N')
m
m['act_N','prd_N']

burger = matrix(c(514,917,11,
                  533,853,13,
                  566,888,10),
                nrow=3,
                byrow=T)
burger
rownames(burger) <- c('M','L','B')
colnames(burger) <- c('kcal','na','fat')
burger
