# DIFFERENT TYPES OF PLOTS

# GEOMS
  # - geom_point()
  # - geom_bar()
  # - geom_line()

library(ggplot2)
library(palmerpenguins)

# geom_point

    ggplot(data = penguins) +
      geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))
  
# geom_smooth
  # smoothing enables the detection of a data trend
    # - loess smoothing - best for less than 1000 points
    # - gam smoothing - large number of points
    
    ggplot(data = penguins) +
      geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g))
  
  # can combine 2 types of geom
    
    ggplot(data = penguins) +
      geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g)) +
      geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g))
  
  # plot separate line for each penguin specie
    # linetype
    
    ggplot(data = penguins) +
      geom_smooth(mapping = aes(x = flipper_length_mm, y = body_mass_g, linetype = species))
    
  # creates a scatter plot w/ small amount of random noise to each point
    # geom_jitter
    # jittering helps deal w/ over-plotting (plot overlap with each other)
    # jittering makes the point easier to find
    
    ggplot(data = penguins) +
      geom_jitter(mapping = aes(x = flipper_length_mm, y = body_mass_g, linetype = species))
  
# geom_bar
    
    # outline color
    ggplot(data = diamonds) +
      geom_bar(mapping = aes(x = cut, color = cut))
    
    # fill color
    ggplot(data = diamonds) +
      geom_bar(mapping = aes(x = cut, fill = cut))
    
    # stacked color (when the variables are not the same)
    ggplot(data = diamonds) +
      geom_bar(mapping = aes(x = cut, fill = clarity))
  
# NOTES:
  # - ggplot2 has over 30 geom functions and extension packages are present
  # - ggplot2 cheat sheet
  
  
  