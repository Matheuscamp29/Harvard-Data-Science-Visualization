# Instructions
# Note that when we run the code from the previous exercise we get the following warning:

# stat_bin() using bins = 30. Pick better value with binwidth.

# Instructions
# Use the binwidth argument to change the histogram made in the previous exercise to use bins of size 1 inch.

library(dplyr)
library(ggplot2)
library(dslabs)
data(heights)

#cria um objeto ggplot com altura no eixo x
p <- heights %>% 
  ggplot(aes(height))

#adiciona a camada de histograma com largura de bin = 1
p + geom_histogram(binwidth = 1)
