#VISUALIZATION BASICS IN R AND TIDYVERSE

# some visualization packages

  # Basic R
  # General Purpose Packages (Plotly)
  # RGL - specific solutions like 3D visuals
  # ggplot2
  # Lattice
  # Dygraphs
  # Leaflet
  # Highcharter
  # Patchwork
  # gganimate
  # ggridges

# BENEFITS OF ggplot2:
  # - create different types of plots
  # - customize the look and feel of plots
  # - create high quality visuals
  # - combine data manipulation and visualization

# CORE CONCEPTS IN ggplot2:
  # - Aesthetics
  # - Geoms
  # - Facets
  # - Labels and Annotations

    # AESTHETICS (R)
    # - visual property of an object in your plot
    # - ex. in scatter plot: position, size, shape, color

    # GEOM (R)
    # - geometric object used to represent your data
    # - ex. points, bars, lines

    # MAPPING (R)
    # - matching up a specific variable in dataset w/ specific aesthetic
    # - ex. map the variable to the x-axis or y-axis

    # FACETS (R)
    # - let you display smaller groups, or subsets of data
    # - can create separate plots for all the variables in dataset

    # LABELS AND ANNOTATIONS (R)
    # - let you customize your plot
    # - add text: titles, subtitles, captions
    # - highlight important data

# STEPS IN MAKING A PLOT:
# 1. Start with the ggplot function and choose a dataset to work with
# 2. Add a geom_function to display your data
# 3. Map the variables in the arguments of the aes() function

# TEMPLATE:
#    ggplot(data = <DATA>) +
#      <GEOM_FUNCTION>(mapping = aes(<AESTHETIC MAPPINGS>))

library(ggplot2)
library(palmerpenguins)
data("penguins")
View(penguins)

# EXAMPLE: plot the relationship between body mass and flipper length of
#          the three penguin species

ggplot(data = penguins) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))
# or PRO TIP:
ggplot(data = penguins, mapping = aes(x = flipper_length_mm, y = body_mass_g)) +  geom_point()

  # ggplot(data = penguins): 
    # - begin plot with ggplot() function
    # - creates a coordinate system that can add layers to
    # - the first argument is the dataset to use

  # +:
    # - to add a new layer to plot
    # - complete the plot by adding one or more layers to ggplot()

  # geom_point():
    # - point for scatterplots
    # - bar for bar graphs
    # - line for line graphs

  # (mapping = aes(x = flipper_length_mm, y = body_mass_g)): 
    # - each geom function in ggplot2 takes a mapping argument
    # - this defines how variables in your dataset are mapped to visual properties
    # - the mapping argument is always paired with the aes() function
    # - The x and y arguments of the aes() function specify which variables to map
 
# FINDINGS:
  # The plot shows a positive relationship between the two variables
  # In other words, the larger the penguin, the longer the flipper. 

# NOTES:
  # Check data visualization with ggplot2 cheat sheet
  # RDocumentation aes function: syntax of the aes function

# TRIAL:

ggplot(data = penguins) + geom_point(mapping = aes(x = bill_length_mm, y = bill_depth_mm))
























