print('Begin work')
a=10;b=20
sink('result.txt',append=T)
cat('a+b=',a+b,'\n')
sink()
cat('hello\n')
sink('result.txt',append=T)
