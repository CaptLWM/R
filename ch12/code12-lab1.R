ds= subset(Ericksen, city=='state')
ds$stname=rownames(ds)
treemap(ds,
        index=c('stname'),
        vSize='poverty',
        vColor = 'crime',
        type='value',
        title='USA states poverty and crime')

treemap(ds,
        index=c('stname'),
        vSize='housing',
        vColor = 'minority',
        type='value',
        palette = heat.colors(nrow(ds)),
        title='USA states poverty and crime')

