# Instructions
# You can also add labels to the points on a plot.

# Instructions
# Rewrite the code from the previous exercise to:

# add a label aesthetic to aes equal to the state abbreviation
# use geom_label instead of geom_point

library(dplyr)
library(ggplot2)
library(dslabs)
data(murders)

#cria um gráfico de dispersão com rótulos das abreviações dos estados
murders %>% ggplot(aes(population, total, label = abb)) +
  geom_label()
