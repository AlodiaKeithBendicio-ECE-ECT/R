# TRANSFORMING DATA

  separate()
  unite()
  mutate()

      id <- c(1:10)
      name <- c("Alodia Bendicio", "Paul Olayvar", "Joshua Almari", "Gennelyn Israel",
                "Euly Casis", "Marvin Rivero", "Sophia Guerra", "Rachelle Eliang",
                "Chrisse Mejia", "Arabella Gianan")
      job_title <- c("Analyst", "Engineer", "Engineer", "Manager", "Developer", "Programmer",
                     "Engineer", "Engineer", "Engineer", "Developer")
      employee <- data.frame(id, name, job_title)
      
      employee

# separate()

  separate(employee, name, into = c('first_name', 'last_name'), sep = ' ')

      id <- c(1:10)
      first_name <- c("Alodia", "Paul", "Joshua", "Gennelyn", "Euly", "Marvin", 
                      "Sophia", "Rachelle", "Chrisse", "Arabella")
      last_name <- c("Bendicio", "Olayvar", "Almari", "Israel", "Casis", "Rivero", 
                     "Guerra", "Eliang", "Mejia", "Gianan")
      employee <- data.frame(id, first_name, last_name, job_title)
      
      employee
  
# unite()
    
  unite(employee, 'name', first_name, last_name, sep = ' ')

# mutate()
  # - create new variable in data frame
  
  View(penguins)
  
  penguins %>% 
    mutate(body_mass_kg = body_mass_g/1000, flipper_length_m = flipper_length_mm/1000)
  
  
  
  
  
  
  
  