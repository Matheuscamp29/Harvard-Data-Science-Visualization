# Instructions
# Now we are going to change the axes to log scales to account for the fact 
# that the population distribution is skewed. Let's start by defining an 
# object p that holds the plot we have made up to now:

# p <- murders %>% ggplot(aes(population, total, label = abb, color = region)) +
#   geom_label() 

# To change the x-axis to a log scale we learned about the scale_x_log10() function. 
# We can change the axis by adding this layer to the object p to change the scale 
# and render the plot using the following code:

# p + scale_x_log10()

# Instructions
# Change both axes to be in the log scale on a single graph. 
# Make sure you do not redefine p - just add the appropriate layers.

library(dplyr)
library(ggplot2)
library(dslabs)
data(murders)

#cria um gráfico de dispersão com rótulos coloridos por região
p <- murders %>% ggplot(aes(population, total, label = abb, color = region)) + 
  geom_label()

#adiciona escalas logarítmicas aos eixos x e y
p + scale_x_log10() + scale_y_log10()
