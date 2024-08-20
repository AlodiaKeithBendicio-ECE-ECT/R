# AESTHETICS AND FACETS

# FACETS (R)
  # - let you display smaller groups, subsets of data
  # - show different sides of data by placing each subset on its own plot
  # - can help discover new patterns 

# FACET FUNCTIONS (ggplot2)
  # - facet_wrap() - by a single variable
  # - facet_grid() - facet the plot w/ two variables

  # facet_wrap(): separate plot for each species
  
  ggplot(data = penguins) +
    geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
    facet_wrap(~species)
 
  ggplot(data = diamonds) +
    geom_bar(mapping = aes(x = color, fill = cut)) +
    facet_wrap(~cut)
  
  # facet_grid(): split the plot into facets vertically by the values of the first variable
  #               and horizontally by the values of the second variable
  
  ggplot(data = penguins) +
    geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color = species)) +
    facet_grid(sex~species)

# NOTE:
  # 1. The 'tilde' (~) operator is used to define the relationship between dependent 
  #    and independent variables in a statistical model formula. 
  # 2. The variable on the left-hand side of tilde operator is the dependent variable 
  #    and the variable(s) on the right-hand side of tilde operator is/are called the independent variable(s). 
  # 3. In the case of this example, the independent variable at the end of the syntax 
  #    line would be species, and the dependent variable in this case is facet_wrap.
  # 4. The facet_wrap is actually a function that is being called to separate and 
  #    distribute the independent data within the plot. 
  
  
























