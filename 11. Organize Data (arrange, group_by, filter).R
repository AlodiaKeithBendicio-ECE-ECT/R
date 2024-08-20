# ORGANIZE DATA

library(tidyverse)
  
  arrange()
  group_by()
  filter()

# arrange()
  
  penguins %>% arrange(bill_length_mm)    # ASCENDING ORDER
  penguins %>% arrange(-bill_length_mm)   # DESCENDING ORDER
  # - this data is just in the console, to save it as a data frame:
  penguins2 <- penguins %>% arrange(-bill_length_mm)
  View(penguins2)

# group_by()
  
  # summarize function
    # - Center: mean() , median()
    # - Spread: sd() , IQR() , mad()
    # - Range: min() , max() , quantile()
    # - Position: first() , last() , nth() ,
    # - Count: n() , n_distinct()
    # - Logical: any() , all()
  # not interested in NA values so drop it

  penguins %>% group_by(island) %>%  drop_na() %>% 
    summarize(mean_bill_length = mean(bill_length_mm))
  
  penguins %>% group_by(island) %>%  drop_na() %>% 
    summarize(min_bill_length = min(bill_length_mm))

  penguins %>% group_by(island) %>%  drop_na() %>% 
    summarize(max_bill_length = max(bill_length_mm))

  penguins %>% group_by(species, island) %>%  drop_na() %>% 
    summarize(max_bl = max(bill_length_mm), min_bl = min(bill_length_mm),
              mean_bl = mean(bill_length_mm))

filter()

  # double equal sign means exactly equal

  penguins %>% filter(species == "Adelie")
  
