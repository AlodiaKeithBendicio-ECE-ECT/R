# CLEANING UP WITH THE BASICS

  # CLEAN UP COLUMNS
    # - referencing files easier
        install.packages("here")
        library("here")
    # summarizing data easy, skim through quickly
        install.packages("skimr")
        library("skimr")
    # functions for cleaning data
        install.packages("janitor")
        library("janitor")
    # make sure dplyr package is installed
        install.packages("dplyr")
        library("dplyr")
      
  # LOADING DATA
        install.packages("palmerpenguins")
        library("palmerpenguins")        
    # functions to get summaries of data frame
      # 1. comprehensive summary of a dataset
        skim_without_charts(penguins)
      # 2. quick idea what is in the dataset
        glimpse(penguins)
      # 3. preview of the column names and first few rows 
        head(penguins)
      # 4. pulling just a subset of the dataset
        # species column only
        penguins %>% 
          select(species)
        # all columns except species column
        penguins %>% 
          select(-species)
        
# OTHER FUNCTIONS
  # 1. change column names
      penguins %>% 
        rename(island_new = island)
  # 2. change columns so they are spelled and formatted consistently
        rename_with(penguins, toupper)
        rename_with(penguins, tolower)
  # 3. clean names func in janitor package makes sure col names unique & consistent
        clean_names(penguins)
        
        
        
        
        
        