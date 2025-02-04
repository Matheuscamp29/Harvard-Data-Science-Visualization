# Instructions
# In the previous exercises we created a plot using the following code:

# library(dplyr)
# library(ggplot2)
# library(dslabs)
# data(murders)
# p<- murders %>% ggplot(aes(population, total, label = abb, color = region)) +
#   geom_label()
# p + scale_x_log10() + scale_y_log10()

# We are now going to add a title to this plot. 
# We will do this by adding yet another layer, this time with the function ggtitle.

# Instructions
# Edit the code above to add the title "Gun murder data" to the plot.

library(dplyr)
library(ggplot2)
library(dslabs)
data(murders)

#cria um gráfico de dispersão com rótulos coloridos por região
p <- murders %>% ggplot(aes(population, total, label = abb, color = region)) +
  geom_label()

#adiciona escalas logarítmicas aos eixos x e y
p + scale_x_log10() + scale_y_log10()

#adiciona um título ao gráfico
p + ggtitle("Gun murder data")
