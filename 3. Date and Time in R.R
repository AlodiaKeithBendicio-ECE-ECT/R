install.packages("tidyverse")
library(tidyverse)
library(lubridate)

# WORKING WITH DATES AND TIMES 
# data types for dates and times in R
# how to convert strings to date-time formats

# TYPES
# date ("2024-08-12")
# time within a day (“14:15:59 UTC")
# date-time ("2024-08-12 14:15:48 UTC")

# current date
today()
# current date-time
now()

# Converting from Strings
ymd("2024-08-12")
mdy("August 12th, 2024")
dmy("12-Aug-2024")
# or it can also take unquoted numbers
ymd(20240812)

# Creating date-time components
ymd_hms("2024-08-12 16:02:59")
mdy_hm("08/12/2024 16:02")

# Switching between existing date-time objects
# converting date-time to a date
as_date(now())

