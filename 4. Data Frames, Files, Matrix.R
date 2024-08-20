# DATA STRUCTURES

# DATA FRAMES - a collection of columns containing data
  # similar to a spreadshee or SQL table
  # can include many different types of data, including numeric, logical, or character
  # can have only one element in each cell
  # each column should be named
  # each column should consist of elements of the same data type

alodia <- data.frame(age = c(8, 13, 23) , height_cm = c(120, 154, 163))

  # extract operator to extract a subset from a data frame
  # it takes two arguments: the row(s) and column(s) separated by a comma

alodia[2,1]

# FILES

  # Create a file - place the name and the type of the file in the parentheses

    file.create("new_text_file.txt") 
    file.create("new_word_file.docx") 
    file.create("new_csv_file.csv") 
  
  # Copy a file
    
    file.copy("new_text_file.txt", "destination_folder")
  
  # Delete R files
    
    unlink("some_.file.csv")
  
# MATRIX
    # A matrix is a two-dimensional collection of data elements. 
    # By contrast, a vector is a one-dimensional sequence of data elements. 
    # But like vectors, matrices can only contain a single data type. 

    matrix(c(3:8), nrow = 2)
    
    matrix(c(3:8), ncol = 2)
    
    
    
    