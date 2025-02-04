# Instructions
# Note that if we don't use argument names, we can obtain the same plot by making sure 
# we enter the variable names in the desired order:

# murders %>% ggplot(aes(population, total)) +
#   geom_point()

# Instructions
# Remake the plot but flip the axes so that total is on the x-axis and population is on the y-axis.

library(dplyr)
library(ggplot2)
library(dslabs)
data(murders)

#cria um gráfico de dispersão invertendo os eixos (total no eixo x e população no eixo y)
murders %>% ggplot(aes(total, population)) +
  geom_point()
