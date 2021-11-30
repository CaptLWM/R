# ggplot2 불러오기
library(ggplot2)
ggplot(data=iris, aes(x=Petal.Length, y=Petal.Width))+geom_point()
#대소문자 중요

install.packages('dplyr')
library(dplyr)

install.packages('cowsay')
library(cowsay)

say('hello world!',by='cat')
say('좋은아침',by='snowman')

library(ceiling)
install.packages('ceiling')
library(ceiling)
ceiling(2.4)
ceiling(3.6)