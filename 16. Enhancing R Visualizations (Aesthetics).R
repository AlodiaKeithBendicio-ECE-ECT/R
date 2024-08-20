# ENHANCING R VISUALIZATIONS

library(ggplot2)
library(palmerpenguins)

# AESTHETICS FOR POINTS
# - X           - Shape
# - Y           - Size
# - Color       - Alpha

# DEFAULT:

  ggplot(data = penguins) +
    geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

# ADD COLOR (to distinguish by specie):
  
  ggplot(data = penguins) +
    geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species))
  
  # INSIGHT:
  # - Gentoo are the largest of the three penguin species.
  
# ADD SHAPE (to highlight the different penguin species)

  ggplot(data = penguins) +
    geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, shape = species))
      
# ADD SHAPE AND COLOR
  
  ggplot(data = penguins) +
    geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, shape = species, color = species))

# ADD SIZE
  
  ggplot(data = penguins) +
    geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, size = species))

# ALPHA AESTHETIC (make some point more transparent or see-through than others)
  # - good option for dense plot w/ lots of data points
  
  ggplot(data = penguins) +
    geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, alpha = species))
  
# to change the appearance of our overall plot without regard to specific variables
#   write code outside of the aes function  
  
  ggplot(data = penguins) +
    geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g), color = "purple")
  
  
