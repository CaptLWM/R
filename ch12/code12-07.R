install.packages('ggplot2')
library(ggplot2)

month=c(1,2,3,4,5,6)
rain = c(55,50,45,50,60,70)
df=data.frame(month,rain)
df

ggplot(df, aes(x=month, y=rain))+
  geom_bar(stat='identity',
           width=0.7,
           fill='steelblue')
