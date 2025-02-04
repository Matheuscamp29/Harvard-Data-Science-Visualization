# Instructions
# In the previous exercise we made the two density plots, one for each sex, using:

# heights %>% 
#   ggplot(aes(height, group = sex)) + 
#   geom_density()

# We can also assign groups through the color or fill argument. 
# For example, if you type color = sex ggplot knows you want a different color for each sex. 
# So two densities must be drawn. You can therefore skip the group = sex mapping. 
# Using color has the added benefit that it uses color to distinguish the groups.

# Instructions
# Change the density plots from the previous exercise to add color.

library(dplyr)
library(ggplot2)
library(dslabs)
data(heights)

##cria gráficos de densidade separados por sexo usando cor para diferenciar
heights %>% 
  ggplot(aes(height, color = sex)) +
  geom_density()
