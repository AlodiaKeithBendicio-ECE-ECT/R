# FILTER FUNCTION (dplyr package)

setwd("C:\\Users\\arfil\\Downloads\\DATA ANALYST FOLDER\\R")
hotel_bookings <- read.csv("hotel_bookings.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)

View(hotel_bookings)
colnames(hotel_bookings)

library(dplyr)

# SAMPLE

  filtered_hotel_bookings <- filter(hotel_bookings, is_repeated_guest > 0 & country == "PRT")
  
  filtered_hotel_bookings <- filter(hotel_bookings, is_repeated_guest > 0 | country == "PRT")
  
  filtered_hotel_bookings

# WITH PIPE OPERATOR
  
  filtered_hotel_bookings <- hotel_bookings %>% 
    filter(is_repeated_guest > 0 & country == "PRT")

  filtered_hotel_bookings <- hotel_bookings %>% 
    filter(is_repeated_guest > 0 | country == "PRT")
  
  filtered_hotel_bookings
