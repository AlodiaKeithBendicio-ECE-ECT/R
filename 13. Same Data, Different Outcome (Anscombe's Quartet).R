# SAME DATA, DIFFERENT OUTCOME

# Anscombe's Quartet
  # - four datasets that have nearly identical summary statistics

install.packages("Tmisc")
library(Tmisc)
data("quartet")
View(quartet)

# mean, standard deviation, correlation
library(tidyverse)
  quartet %>% 
    group_by(set) %>% 
    summarize(mean(x),sd(x), mean(y), sd(y), cor(x,y))

  # mean - average
  # standard deviation - spread of values, how far each value from mean
  # correlation - how strong the relationship between two variables
  
  ggplot(quartet, aes(x,y)) + geom_point() + geom_smooth(method = lm, se = FALSE) + facet_wrap(~set)
  # as you can see, the numbers were almost the same but when you plot it, it's different
  
install.packages("datasauRus")
library('datasauRus')
  
ggplot(datasaurus_dozen, aes(x = x, y = y, colour = dataset)) + geom_point() + 
  theme_void() + theme(legend.position = "none") + facet_wrap(~dataset, ncol = 3)
  
  
  
  
    