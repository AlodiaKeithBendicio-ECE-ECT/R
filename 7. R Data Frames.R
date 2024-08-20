# R DATA FRAMES

# DATA FRAME - a collection of columns
  # - columns should be named
  # - data stored can be many different types: numeric, factor, character
  # - each column should contain the same number of data items

# TIBBLES
  # - in tidyverse, tibbles are like streamlined data frames
  # - never change the data types of the inputs
  # - never change the names of your variables
  # - never create row names
  # - make printing in R easier
  # - set to pull up only the first 10 rows and as many columns that fit in screen

# TIDY DATA STANDARDS:
  # - variables are organized into columns
  # - observations are organized into rows
  # - each value must have its own cell

  # PRACTICE QUESTION:
  install.packages("tidyverse")
  library(ggplot2)
  data("diamonds")
  View(diamonds)
  
    # to get a much simpler and shorter overview/preview of data observations
    head()
    str()
    colnames()
    glimpse()
    
    # add new column
    library(tidyverse)
    mutate(diamonds, carat_2 = carat*100)
  
  

  











