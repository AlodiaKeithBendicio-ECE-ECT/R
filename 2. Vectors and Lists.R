# 2 types of Vectors: Atomic Vectors and Lists

# ATOMIC VECTORS (same data  type): character, integer, double, logical, complex, raw

    # Numeric
    c(28.4, 6.26, 9.28, 4.1)
    
    # Integer
    c(10L, 28L, 26L)
    
    # Character
    c("Alodia", "Keith", "Paul", "Lorenz")
    
    # Logical
    c(TRUE, FALSE, TRUE)
    
    # Determining the properties of Vectors: type and length
    # Type
    typeof(c(10L, 28L, 26L))
    typeof(c("Alodia", "Keith", "Paul", "Lorenz"))
    # Length - the number of elements it contains
    x <- c(28.4, 6.26, 9.28, 4.1)
    length(x)
    
    # you can also check if a vector is a specific type by using an is function: 
    w <- c(TRUE, FALSE, TRUE)
    x <- c(28.4, 6.26, 9.28, 4.1)
    y <- c(10L, 28L, 26L)
    z <- c("Alodia", "Keith", "Paul", "Lorenz")
    
    is.logical(w)
    is.double(x)
    is.integer(y)
    is.character(z)
    
    # Naming Vectors
    y <- c(10L, 28L, 26L)
    names(y) <- c("a", "b", "c")

# LISTS (elements can be of any data type)

list("Alodia", 10L, 4.1, TRUE)
list(list(list(1 , 3, 5)))

    # Determining the structures of lists
    str(list("Alodia", 10L, 4.1, TRUE))
    
    z <- list(list(list(1 , 3, 5)))
    str(z)
    
    # indentation of $ symbols reflect the nested structure of this lisst.
    
    # Naming Lists
    list('Chicago' = 1, 'New York' = 2, 'Los Angeles' = 3)
    
    
    