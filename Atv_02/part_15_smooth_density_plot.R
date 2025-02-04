# Instructions
# Now instead of a histogram we are going to make a smooth density plot. 
# In this case, we will not make an object p. Instead we will render the plot using a single line of code. 
# In the previous exercise, we could have created a histogram using one line of code like this:

# heights %>% 
#   ggplot(aes(height)) +
#   geom_histogram()

# Now instead of geom_histogram we will use geom_density to create a smooth density plot.

# Instructions
# Add the appropriate layer to create a smooth density plot of heights.

library(dplyr)
library(ggplot2)
library(dslabs)
data(heights)

##cria um gráfico de densidade da altura
heights %>% 
  ggplot(aes(height)) +
  geom_density()
