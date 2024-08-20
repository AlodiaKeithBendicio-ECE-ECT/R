# CREATING SAMPLE DATA FRAMES
# BLENDICIOUS CAFE ORDER

install.packages("tidyverse")
library(tidyverse)

  quantity <- c(1, 1, 2, 1, 2)
  cup_size <- c("L", "S", "M", "L", "L")
  flavor <- c("Blueberry Fruit Tea", "Green Apple Fruit Tea", 
              "Oreo Cheesecake Milktea", "OG Brown Milktea", "Lychee Fruit Tea")
  percent_sugar_level <- c(100, 50, 25, 0, 100)
  item_price <- c(45, 25, 60, 55, 45)
  total_price <- quantity * item_price

blendicious_order <- data.frame(quantity, cup_size, flavor, percent_sugar_level,
                                item_price, total_price)
blendicious_order








