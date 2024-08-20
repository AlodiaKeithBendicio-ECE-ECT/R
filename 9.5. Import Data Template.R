# IMPORT DATA TEMPLATE

install.packages("readxl")
library(readxl)

# Comma Separated Values: .csv file

setwd("C:\\Users\\arfil\\Downloads\\DATA ANALYST FOLDER\\R")

hotel_bookings <- read.csv("hotel_bookings.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)

View(hotel_bookings)


# ERRORS ENCOUNTERED:
  # can't import 
  # setwd("C:\Users\arfil\Downloads\DATA ANALYST FOLDER\R")
  # ("Error: '\U' used without hex digits in character string (<input>:1:11)")

# SOLUTION:
  # use double backslash instead of single
  # setwd("C:\\Users\\arfil\\Downloads\\DATA ANALYST FOLDER\\R")