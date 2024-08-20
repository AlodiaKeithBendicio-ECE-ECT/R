# CREATING TIBBLES

  # - little different from standard data frames
  # - data frame is a collection of columns (spreadsheet or a SQL table)
  # - tibbles are like streamlined data frames
  # - set to pull up only the first 10 rows and only as many columns as can fit on screen
  # - useful when you’re working with large sets of data
  # - unlike data frames, tibbles never change the names of variables or input data types 
  # - you can make more changes to data frames, but tibbles are easier to use
  # - the tibble package is part of the core tidyverse

# EXAMPLE: to preview the diamonds dataset

    library(tidyverse)
    data(diamonds)
    View(diamonds)
    
        as_tibble(diamonds)

