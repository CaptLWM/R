favorite = c('winter','summer','spring','summer','summer','fall','fall','summer','spring','spring')
ds = table(favorite)
ds
pie(ds, main='선호계절', radius=1)
