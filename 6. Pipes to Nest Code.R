# PIPES (R)
# - tool in R that helps make your code more efficient and easier to understand
# - expressing a sequence of multiple operations, represented as "%>%"
# - takes the output of one statement, makes it input of the next
# - code the phrase "and then"

# NESTED
# - in programming, describes code that performs a particular function
#   and is contained within code that performs a broader function

  # example: dose = 0.5, arrange by tooth length
  data("ToothGrowth")
  View(ToothGrowth)
  
  install.packages("dplyr")
  library(dplyr)
  
      # filter function
      filtered_tg <- filter(ToothGrowth, dose == 0.5)
      
      # sort function
      arrange(filtered_tg, len)
      
    # Nested Function approach
        arrange(filter(ToothGrowth, dose == 0.5), len) 
  
    # Using a Pipe
      # keyboard shortcut ctrl+shift+m
        filtered_toothgrowth <- ToothGrowth %>% 
          filter(dose == 0.5) %>%
          arrange(len)
        filtered_toothgrowth 
      # you will get the same result
        
  # example: average tooth length for each of the two supplements
   
    # Using a Pipe
      # keyboard shortcut ctrl+shift+m
        filtered_toothgrowth <- ToothGrowth %>% 
          filter(dose == 0.5) %>%
          group_by(supp) %>% 
          summarize(mean_len = mean(len, na.rm = T), .group = "drop")
        filtered_toothgrowth

# NOTES: WHEN USING PIPES:
  # - add pipe operator at the end of each line of the piped operation except last
  # - check code after programming the pipe
  # - revisit piped operations to check for parts to fix
  
  




