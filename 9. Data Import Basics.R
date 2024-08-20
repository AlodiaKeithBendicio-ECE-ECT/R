# DATA IMPORT BASICS

  # display a list of preloaded datasets in R from datasets package
      data()
  # display preview of mtcars in R console pane (just type its name)
      data("mtcars")
      mtcars      
  # can also display the dataset by clicking the name of the dataset in the environment pane
      
# THE readr PACKAGE
  # - tool for reading rectangular data
  # - ectangular data is data that fits nicely inside a rectangle of rows and columns
  # - each column referring to a single variable and each row referring to a single observation. 
      
      # examples of rectangular data
      # - .csv (comma separated values) - separated by delimiters
      # - .tsv (tab separated values) - separated by tabs like database table, spreadsheet
      # - .fwf (fixed width files) - specific format that saves data in organized fashion
      # - .log - computer-generated file tat records events from OS, software programs
      
  # readr functions
      # - read_csv(): comma-separated values (.csv) files
      # - read_tsv(): tab-separated values files
      # - read_delim(): general delimited files
      # - read_fwf(): fixed-width files
      # - read_table(): tabular files where columns are separated by white-space
      # - read_log(): web log files
      
# Reading a .csv file with readr 
  # sample files from built-in datasets
      readr_example()
  # supply the path to the mtcars.csv file
      read_csv(readr_example("mtcars.csv"))

# THE readxl package
  # - import spreadsheet data into R
  # - the readxl package makes it easy to transfer data from Excel to R
  # - readxl supports: legacy .xls file format, modern xml-based .xlsx file format
      
  library(readxl)
      
# Reading an .xlsx file with readxl
  # sample files from built-in datasets
      readxl_example() 
  # use the read_excel() function to read a spreadsheet file just like read_csv() function to read a  .csv file
      read_excel(readxl_example("type-me.xlsx"))
  # you can use the excel_sheets function to list the names of individual sheets
      excel_sheets(readxl_example("type-me.xlsx"))
  # you can also specify a sheet by name or number
      read_excel(readxl_example("type-me.xlsx"), sheet = "numeric_coercion")

# ERRORS ENCOUNTERED:
  # can't import 
  # setwd("C:\Users\arfil\Downloads\DATA ANALYST FOLDER\R")
  # ("Error: '\U' used without hex digits in character string (<input>:1:11)")

# SOLUTION:
  # use double backslash instead of single
  # setwd("C:\\Users\\arfil\\Downloads\\DATA ANALYST FOLDER\\R")
      
      