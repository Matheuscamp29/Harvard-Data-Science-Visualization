# Instructions
# To create a scatter plot, we add a layer with the function geom_point. 
# The aesthetic mappings require us to define the x-axis and y-axis variables respectively. 
# So the code looks like this:

# murders %>% ggplot(aes(x = , y = )) +
#   geom_point()

# except we have to fill in the blanks to define the two variables x and y.

# Instructions
# Fill out the sample code with the correct variable names to plot total murders versus population size.

library(dplyr)
library(ggplot2)
library(dslabs)
data(murders)

##cria um gráfico de dispersão de total de homicídios vs. tamanho da população
murders %>% ggplot(aes(x = population, y = total)) +
  geom_point()
