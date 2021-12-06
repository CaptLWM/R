str(KosteckiDillon)
tot.mean=mean(KosteckiDillon$dos)
tot.mean 

for(rate in (1:5)*0.1){
  set.seed(100)
  idx=sample(nrow(KosteckiDillon),nrow(KosteckiDillon)*rate)
  sam.data = KosteckiDillon[idx,'dos']
  tmp.mean=mean(sam.data)
  cat('Diff:',rate,tot.mean-tmp.mean,'\n')
}

cbn=combn(1:5,3)
cbn
ncol(cbn)
