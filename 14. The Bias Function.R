# BIAS FUNCTION

# it is possible to quantify bias by comparing actual outcome to predicted outcome
# the bias function finds the average amount the actual outcome is greater than predicted
# computed outcome close to zero means unbiased

install.packages("SimDesign")
library(SimDesign)

  actual_temp <- c(68.3, 70, 72.4, 71, 67, 70)
  predicted_temp <- c(67.9, 69, 71.5, 70, 67, 69)
  bias(actual_temp, predicted_temp)
  # [0.7166667] - close to zero but the prediction seemed bias towards lower temp
  
  actual_sales <- c(150, 203, 137, 247, 116, 287)
  predicted_sales <- c(200, 300, 150, 250, 150, 300)
  bias(actual_sales, predicted_sales)
  # [- 35] - predicted > actual 



