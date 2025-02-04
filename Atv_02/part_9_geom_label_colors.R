# Instructions
# We previously used this code to make a plot using the state abbreviations as labels:

# murders %>% ggplot(aes(population, total, label = abb)) +
#   geom_label()

# We are now going to add color to represent the region.

# Instructions
# Rewrite the code above to make the label color correspond to the state's region. 
# Because this is a mapping, you will have to do this through the aes function. 
# Use the existing aes function inside of the ggplot function.

library(dplyr)
library(ggplot2)
library(dslabs)
data(murders)

##cria um gráfico de dispersão com rótulos coloridos por região
murders %>% ggplot(aes(population, total, label = abb, color = region)) +
  geom_label()
