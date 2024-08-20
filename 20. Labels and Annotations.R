# ANNOTATION LAYER

# LABEL FUNCTION: outside the plot
  # - Titles
  # - Subtitles
  # - Captions

# ADD TITLE

  ggplot(data = penguins) +
    geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
    labs(title = "Palmer Penguins: Body Mass vs. Flipper Length")

# ADD SUBTITLE
  
  ggplot(data = penguins) +
    geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
    labs(title = "Palmer Penguins: Body Mass vs. Flipper Length", 
         subtitle = "Sample of Three Penguin Species")
  
# ADD CAPTIONS
  
  ggplot(data = penguins) +
    geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
    labs(title = "Palmer Penguins: Body Mass vs. Flipper Length", 
         subtitle = "Sample of Three Penguin Species",
         caption = "Data Collected by Dr. Kristen Gorman")
  
# ANNOTATE: inside the plot
  # - to add notes to a document or diagram to explain or comment upon it
  
  ggplot(data = penguins) +
    geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
    labs(title = "Palmer Penguins: Body Mass vs. Flipper Length", 
         subtitle = "Sample of Three Penguin Species",
         caption = "Data Collected by Dr. Kristen Gorman") +
    annotate("text", x = 220, y = 4000, label = "The Gentoos are the largest specie",
             color = "darkblue", fontface = "bold", size = 2.5, angle = 20)
  
# SAVE THE IMAGE USING EXPORT OR ggsave function
  
  ggsave("Three Palmer Penguins.png")
  
# NOTE:
# - if the code is getting long, you can always assign a variable to it



